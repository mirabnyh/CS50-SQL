-- write a SQL query to answer a question of your choice about the prints.
SELECT "brightness" AS "Hiroshige's lightest paint" FROM "views" WHERE "artist" = 'Hiroshige'
ORDER BY "brightness" DESC
LIMIT 1;
