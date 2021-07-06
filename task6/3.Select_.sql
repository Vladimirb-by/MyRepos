SELECT * FROM "public"."result" WHERE "studentid" = (SELECT "studentid" FROM "public"."students" WHERE "student"::TEXT LIKE '%урдыко%');
