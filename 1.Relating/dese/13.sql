SELECT "name" FROM "districts"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "unsatisfactory" > 50;
