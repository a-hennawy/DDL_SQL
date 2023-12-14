-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "FLight" (
    "id" INTEGER  PRIMARY KEY NOT NULL,
    "seat" TEXT   NOT NULL,
    "departure_date" DATE   NOT NULL,
    "arrival_date" DATE   NOT NULL,
    "passenger_id" INTEGER  REFERENCES Passengers(id) NOT NULL,
    "airline_id" INTEGER  REFERENCES Airlines(id) NOT NULL,
    "from_destination_id" INTEGER  REFERENCES Airports(id) NOT NULL,
    "to_destination_id" INTEGER REFERENCES Airports(id)  NOT NULL,
   
);

CREATE TABLE "Passengers" (
    "id" INTEGER  PRIMARY KEY NOT NULL,
    "first_name" TEXT   NOT NULL,
    "last_name" TEXT   NOT NULL,
    
);

CREATE TABLE "Airlines" (
    "id" INTEGER   PRIMARY KEY NOT NULL,
    "name" TEXT   NOT NULL,
);

CREATE TABLE "Airports" (
    "id" INTEGER PRIMARY KEY NOT NULL,
    "city" TEXT   NOT NULL,
    "country" TEXT   NOT NULL,
);

ALTER TABLE "FLight" ADD CONSTRAINT "fk_FLight_passenger_id" FOREIGN KEY("passenger_id")
REFERENCES "Passengers" ("id");

ALTER TABLE "FLight" ADD CONSTRAINT "fk_FLight_airline_id" FOREIGN KEY("airline_id")
REFERENCES "Airlines" ("id");

ALTER TABLE "FLight" ADD CONSTRAINT "fk_FLight_from_destination_id" FOREIGN KEY("from_destination_id")
REFERENCES "Airports" ("id");

ALTER TABLE "FLight" ADD CONSTRAINT "fk_FLight_to_destination_id" FOREIGN KEY("to_destination_id")
REFERENCES "Airports" ("id");

