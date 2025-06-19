CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL ,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connections_with_people" (
    "user_A",
    "user_B",
    FOREIGN KEY("user_A") REFERENCES "users"("id"),
    FOREIGN KEY("user_B") REFERENCES "users"("id")
);

CREATE TABLE "connections_with_schools" (
    "user_id",
    "school_id",
    "start_affiliation" NUMERIC,
    "end_affiliation" NUMERIC,
    "degree" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "connections_with_companies" (
    "user_id",
    "company_id",
    "start_affiliation" NUMERIC,
    "end_affiliation" NUMERIC,
    "title" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
