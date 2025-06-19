CREATE INDEX "course_index" ON "courses" ("title");
CREATE INDEX "semester_index" ON "courses" ("semester");
CREATE INDEX "departement_index" ON "courses" ("department");

CREATE INDEX "name_index" ON "students" ("name");

CREATE INDEX "student_index" ON "enrollments" ("student_id", "course_id");
CREATE INDEX "requirement_index" ON "requirements" ("name");
