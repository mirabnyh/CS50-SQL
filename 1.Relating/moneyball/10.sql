SELECT "first_name", "last_name" , "salary", "HR", "salaries"."year" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
ORDER BY "players"."id", "salaries"."year" DESC, "HR" DESC, "salary" DESC;
