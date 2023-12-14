-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Planets" (
    "id" INTEGER   NOT NULL,
    "name" TEXT   NOT NULL,
    "orbital_period_in_years" INTEGER   NOT NULL,
    "orbits_around_id" TEXT   NOT NULL,
    "galaxy_id" TEXT   NOT NULL,
    "moons_id" TEXT   NOT NULL,
    CONSTRAINT "pk_Planets" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Orbits_around" (
    "id" INTEGER   NOT NULL,
    "name" TEXT   NOT NULL,
    CONSTRAINT "pk_Orbits_around" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Moons" (
    "id" INTEGER   NOT NULL,
    "name" TEXT   NOT NULL,
    CONSTRAINT "pk_Moons" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Galaxy" (
    "id" INTEGER   NOT NULL,
    "name" TEXT   NOT NULL,
    CONSTRAINT "pk_Galaxy" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Planets" ADD CONSTRAINT "fk_Planets_orbits_around_id" FOREIGN KEY("orbits_around_id")
REFERENCES "Orbits_around" ("id");

ALTER TABLE "Planets" ADD CONSTRAINT "fk_Planets_galaxy_id" FOREIGN KEY("galaxy_id")
REFERENCES "Galaxy" ("id");

ALTER TABLE "Planets" ADD CONSTRAINT "fk_Planets_moons_id" FOREIGN KEY("moons_id")
REFERENCES "Moons" ("id");

