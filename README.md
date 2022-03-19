# proj_2_ninety9bottles

### ETL Data - COVID-19 datasets

During the COVID-19 pandemic, U.S. alcohol retail store sales increased compared to usual trends while food services and drinking places sales decreased markedly during the same period. These results indicate an increase in home drinking in the U.S. The findings are published online in the journal Alcohol. The goal of this analysis is to illustrate the amount of

In this notebook, we will leverage several datasets.

Datasets A
Covid 19 DataHub
Open-Access Data and Computational Resources to Address COVID-19

The first datasets have collected / collated a large amount of information about COVID-19 cases in the United States.

ETL strategy: since the data is ready and available as CSV files, we will simply (a) download the CSV files directly, (b) modify / transform the dataset to fit our purposes, and (c) store the data in a SQL database

Visualization: We will use the dataset to re-create the graph showing the evolution of new cases in the US over time.
Datasets B
US National Library of Medicine National Institutes of Health Alcohol expenditures
Alcohol Consumption during the COVID-19 Pandemic

The second datasets have collected / collated a large amount of information about alcohol consumption cases in the United States during covid.

ETL strategy: since the data is ready and available as CSV files, we will simply (a) download the CSV files directly, (b) modify / transform the dataset to fit our purposes, and (c) store the data in a SQL database

Visualization: We will use the dataset to re-create the graph showing the evolution of new cases in the US over time.

## Extract

We downloaded the datasets as CSV files locally

## Load

The team created a server and table in postgres, then created the databasea using the following syntax

-- Database: alcohol
CREATE TABLE LIQUOR_SALES(
Invoice VARCHAR(20),
Date date,
StoreNumber INTEGER,
StoreName VARCHAR(200),
Address VARCHAR(500),
City CHAr(20),
ZipCode CHar(10),
StoreLocation VARCHAR(100),
CountyNumber INTEGER,
County VARCHAR(100),
Category double PRECISION,
CategoryName VARCHAR(100),
VendorNumber double PRECISION,
VendorName VARCHAR(100),
ItemNumber double PRECISION,
ItemDescription VARCHAR(1000),
Pack INTEGER,
Bottlevolume INTEGER,
StateBottleCost money,
StateBottleRetail money,
BottlesSold INTEGER,
Sale double PRECISION,
Volumesoldl double PRECISION,
VolumeSoldg double PRECISION
)

FINAL CREATE SQL
