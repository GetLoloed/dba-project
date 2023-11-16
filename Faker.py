from faker import Faker
import random
from datetime import datetime, timedelta

faker = Faker()

def random_date(start, end):
    return start + timedelta(seconds=random.randint(0, int((end - start).total_seconds())))

start_date = datetime(2023, 1, 1)
end_date = datetime(2023, 6, 30)

# Générer des données pour 100 utilisateurs
users_inserts = []
users = []
for user_id in range(1, 101):
    created_at = random_date(start_date, end_date)
    user = {
        "user_id": user_id,
        "firstname": faker.first_name(),
        "lastname": faker.last_name(),
        "email": faker.email(),
        "username": faker.user_name(),
        "password": faker.password(),
        "created_at": created_at.strftime("%Y-%m-%d %H:%M:%S")
    }
    users.append(user)
    users_inserts.append(f"INSERT INTO user_table (firstname, lastname, email, username, password, created_at) VALUES ('{user['firstname']}', '{user['lastname']}', '{user['email']}', '{user['username']}', '{user['password']}', '{user['created_at']}');\n")

# Générer des données pour les vérifications d'email
email_verifications = []
for user in users[:85]:
    verified_at = random_date(datetime.strptime(user["created_at"], "%Y-%m-%d %H:%M:%S"), end_date).strftime("%Y-%m-%d %H:%M:%S")
    email_verifications.append(f"INSERT INTO user_email_verification_table (user_id, verified_at) VALUES ({user['user_id']}, '{verified_at}');\n")

# Générer des données pour les sessions
sessions = []
for _ in range(1000):
    user = random.choice(users)
    user_created_at = datetime.strptime(user["created_at"], "%Y-%m-%d %H:%M:%S")
    connected_at = random_date(max(user_created_at, datetime.strptime(user["created_at"], "%Y-%m-%d %H:%M:%S")), end_date).strftime("%Y-%m-%d %H:%M:%S")
    sessions.append(f"INSERT INTO session_table (user_id, connected_at) VALUES ({user['user_id']}, '{connected_at}');\n")

# Écriture des instructions SQL dans le fichier part_1_2.sql
with open('part_1_2.sql', 'w') as file:
    file.writelines(users_inserts)
    file.writelines(email_verifications)
    file.writelines(sessions)
