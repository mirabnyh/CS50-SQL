SELECT "districts"."name", "per_pupil_expenditure", "exemplary" FROM "districts"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
JOIN "expenditures" ON "expenditures"."district_id" = "staff_evaluations"."district_id"
WHERE "type" = 'Public School District'
AND "per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
AND "exemplary" > (SELECT AVG("exemplary") FROM "staff_evaluations")
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
