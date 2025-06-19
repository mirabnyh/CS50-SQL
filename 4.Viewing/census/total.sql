CREATE VIEW "total" AS
SELECT SUM("families") AS "families", SUM("households") AS "households",
SUM("households") AS "households", SUM("male") AS "male", SUM("female") AS "female"
FROM "census";
