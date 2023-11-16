from faker import Faker
import random
from datetime import datetime, timedelta

faker = Faker()


def random_date(start, end):
    return start + timedelta(
        seconds=random.randint(0, int((end - start).total_seconds()))
    )


start_date = datetime(2023, 1, 1)
end_date = datetime(2023, 6, 30)
subscription_plans = {10: 'monthly', 100: 'yearly', 1000: 'lifetime'}

sql_inserts = []
user_ids = range(1, 101)

for _ in range(60):
    subscribed_at = random_date(start_date, end_date).strftime("%Y-%m-%d %H:%M:%S")
    user_id = random.choice(user_ids)
    paid, plan = random.choice(list(subscription_plans.items()))
    sql_inserts.append(
        f"INSERT INTO subscription (subscribed_at, user_id, paid, subscription_plan) VALUES ('{subscribed_at}', {user_id}, {paid}, '{plan}');"
    )

# Écriture des requêtes SQL dans un fichier
with open('part_2_1.sql', 'a') as file:  # 'a' pour ajouter à la suite de la création de la table
    for insert in sql_inserts:
        file.write(insert + "\n")
