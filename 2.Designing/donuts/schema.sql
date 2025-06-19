CREATE TABLE "ingerdients" (
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit",
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" TEXT NOT NULL CHECK("gluten_free" IN ('yes', 'no')),
    "price",
    PRIMARY KEY("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "donut_id" INTEGER,
    "costumer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("costumer_id") REFERENCES "costumers"("id")
);

CREATE TABLE "costumers" (
    "id" INTEGER,
    "name" TEXT,
    "order_id",
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);
