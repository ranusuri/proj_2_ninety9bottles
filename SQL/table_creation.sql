/* Adding 4 new tables for the Covid-19 and Alcohol consumption proeject during COVID for KOSSUTH county */


/* This table contain all the information about the stores and their address */

CREATE TABLE "Store" (
    "store_number" INT   NOT NULL,
    "store_name" VARCHAR(100)   NOT NULL,
    "address" VARCHAR(200)   NOT NULL,
    "city" VARCHAR(20)   NOT NULL,
    "zip_code" VARCHAR(10)   NOT NULL,
    "county" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Store" PRIMARY KEY (
        "store_number"
     )
);

/* This table contain all the information about the liquor and their description */

CREATE TABLE "Liquor" (
    "item_number" INT   NOT NULL,
    "item_description" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_Liquor" PRIMARY KEY (
        "item_number"
     )
);


/* This table contain all the information about the liquor sales during COVID */

CREATE TABLE "Sales" (
    "item_number" INT   NOT NULL,
    "price" money   NOT NULL,
	"sale" money   NOT NULL,
    "invoice_item_number" VARCHAR(50)   NOT NULL,
    "store_number" INT   NOT NULL,
    "date" date   NOT NULL,
    "pack" INT   NOT NULL,
    "bottle_volume" INT   NOT NULL,
    CONSTRAINT "pk_Sales" PRIMARY KEY ("invoice_item_number")
);

/* This table track all the information related to COVID */

CREATE TABLE "covid19" (
    "date" date   NOT NULL,
    "confirmed" INT   NOT NULL,
    "deaths" INT   NOT NULL
);


/* Adding the constraint between the different tables. This is used to prevent actions that would destroy links between the tables */

ALTER TABLE "Sales" ADD CONSTRAINT "fk_Sales_item_number" FOREIGN KEY("item_number")
REFERENCES "Liquor" ("item_number");


ALTER TABLE "Sales" ADD CONSTRAINT "fk_Sales_store_number" FOREIGN KEY("store_number")
REFERENCES "Store" ("store_number");