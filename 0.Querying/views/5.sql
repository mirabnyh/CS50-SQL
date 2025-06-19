-- write a SQL query to find the highest contrast value of prints by Hokusai.
SELECT MAX("contrast") FROM "views" WHERE "artist" = 'Hokusai';
