from faker import Faker
import random
from datetime import datetime, timedelta

faker = Faker()

def random_date(start, end):
    return start + timedelta(seconds=random.randint(0, int((end - start).total_seconds())))

start_date = datetime(2023, 1, 1)
end_date = datetime(2023, 6, 30)

# Générer des données pour les utilisateurs
users = []
for _ in range(100):
    created_at = random_date(start_date, end_date)
    users.append({
        "firstname": faker.first_name(),
        "lastname": faker.last_name(),
        "email": faker.email(),
        "username": faker.user_name(),
        "password": faker.password(),
        "created_at": created_at.strftime("%Y-%m-%d %H:%M:%S")
    })

# Générer des données pour les vérifications d'email
email_verifications = []
for i in range(85):
    user = random.choice(users)
    verified_at = random_date(datetime.strptime(user["created_at"], "%Y-%m-%d %H:%M:%S"), end_date).strftime("%Y-%m-%d %H:%M:%S")
    email_verifications.append({
        "user_id": users.index(user) + 1,
        "verified_at": verified_at
    })

# Générer des données pour les sessions
sessions = []
for i in range(1000):
    user = random.choice(users)
    user_created_at = datetime.strptime(user["created_at"], "%Y-%m-%d %H:%M:%S")
    session_date = random_date(user_created_at, end_date).strftime("%Y-%m-%d %H:%M:%S")
    sessions.append({
        "user_id": users.index(user) + 1,
        "connected_at": session_date
    })

# Écrire les données dans le fichier SQL
with open('part_1_2.sql', 'w') as file:
    for user in users:
        file.write(f"INSERT INTO \"user\" (firstname, lastname, email, username, password, created_at) VALUES ('{user['firstname']}', '{user['lastname']}', '{user['email']}', '{user['username']}', '{user['password']}', '{user['created_at']}');\n")
    for verification in email_verifications:
        file.write(f"INSERT INTO user_email_verification (user_id, verified_at) VALUES ({verification['user_id']}, '{verification['verified_at']}');\n")
    for session in sessions:
        file.write(f"INSERT INTO session (user_id, connected_at) VALUES ({session['user_id']}, '{session['connected_at']}');\n")
