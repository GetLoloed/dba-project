from faker import Faker
import random
from datetime import datetime, timedelta

faker = Faker()

# Fonction pour générer une date aléatoire dans une plage donnée
def random_date(start, end):
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds())),
    )

# Définir les plages de dates
start_date = datetime(2023, 1, 1)
end_date = datetime(2023, 6, 30)

# Générer des données pour 100 utilisateurs
users = []
for user_id in range(1, 101):
    created_at = random_date(start_date, end_date)
    users.append({
        "user_id": user_id,
        "firstname": faker.first_name(),
        "lastname": faker.last_name(),
        "email": faker.email(),
        "username": faker.user_name(),
        "password": faker.password(),
        "created_at": created_at
    })

# Générer des données pour 85 vérifications d'email
email_verifications = []
for i in range(85):
    user = random.choice(users)
    verified_at = random_date(user["created_at"], end_date)
    email_verifications.append({
        "uev_id": i + 1,
        "user_id": user["user_id"],
        "verified_at": verified_at
    })

# Générer des données pour 1000 sessions
sessions = []
for session_id in range(1, 1001):
    user = random.choice(users)
    connected_at = random_date(user["created_at"], end_date)
    sessions.append({
        "session_id": session_id,
        "user_id": user["user_id"],
        "connected_at": connected_at
    })

# Écrire les données dans le fichier SQL
with open('part_1_2.sql', 'w') as file:
    for user in users:
        file.write(f"INSERT INTO \"user\" (firstname, lastname, email, username, password, created_at) VALUES ('{user['firstname']}', '{user['lastname']}', '{user['email']}', '{user['username']}', '{user['password']}', '{user['created_at'].strftime('%Y-%m-%d %H:%M:%S')}');\n")

    for verification in email_verifications:
        file.write(f"INSERT INTO user_email_verification (user_id, verified_at) VALUES ({verification['user_id']}, '{verification['verified_at'].strftime('%Y-%m-%d %H:%M:%S')}');\n")

    for session in sessions:
        file.write(f"INSERT INTO session (user_id, connected_at) VALUES ({session['user_id']}, '{session['connected_at'].strftime('%Y-%m-%d %H:%M:%S')}');\n")
