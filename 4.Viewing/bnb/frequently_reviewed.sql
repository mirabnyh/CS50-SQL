CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("comments") AS "reviews" FROM "listings"
JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "listing_id"
ORDER BY "reviews" DESC, "property_type", "host_name"
LIMIT 100;
