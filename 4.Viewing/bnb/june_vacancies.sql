CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_name", "host_name", COUNT("date") AS "days_vacant" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE "available" = 'TRUE' AND "date" LIKE '2023-06-%'
GROUP BY "listing_id";

