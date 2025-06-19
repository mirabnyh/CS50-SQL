CREATE VIEW "rural" AS
SELECT "id", "districts", "locality", "families", "households", "population", "male", "female" FROM "census"
WHERE "locality" LIKE '%rural%';
