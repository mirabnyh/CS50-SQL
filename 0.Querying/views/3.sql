-- write a SQL query to count how many prints by Hokusai include “Fuji” in the English title.
SELECT COUNT("id") FROM "views" WHERE "artist" = 'Hokusai' AND "english_title" LIKE '%Fuji%';
