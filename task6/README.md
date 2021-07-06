1. Развернуть в облаке контейнер с базой данных SQL (MySQL or PostgreSQL)

2. Заполнить базу данных. Сделать две таблицы:
Students (ID; Student; StudentId);
Result (ID; StudentId; Task1; Task2; Task3; Task4);

3. Написать запрос который по вашей фамилии будет находить информацию по выполненным заданиям и выводить результат на экран.

SELECT * FROM "public"."result" WHERE "studentid" = (SELECT "studentid" FROM "public"."students" WHERE "student"::TEXT LIKE '%урдыко%');


4. Сделайте dump базы данных, удалите существующую и восстановите из дампа.

pg_dump -h ip-172-31-4-115.us-east-2.compute.internal -Fc -U postgres exadel > exadel.dump
pg_restore --create --dbname=postgres  --verbose --no-acl --no-owner --host=ip-172-31-4-115.us-east-2.compute.internal --username=postgres exadel.dump

5. Написать Ansible роль для развертывания SQL или noSQL базы данных. Креды не должны храниться в GitHub.

playbook4.yml
