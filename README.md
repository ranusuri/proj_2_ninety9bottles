# proj_2_ninety9bottles

### ETL Data - COVID-19 datasets

During the COVID-19 pandemic, U.S. alcohol retail store sales increased compared to usual trends while food services and drinking places sales decreased markedly during the same period. These results indicate an increase in home drinking in the U.S. 

As part of the project, we will be using 2 datasets:


Dataset A:

Covid 19 DataHub
Open-Access Data and Computational Resources to Address COVID-19

The first datasets have collected / collated a large amount of information about COVID-19 cases in the United States.

ETL strategy: since the data is ready and available as CSV files, we will use Python(Pandas) to load and transform the data set to fit our purposes. 

The second part of the transformation will consist of exporting the newly created csv files to PostgreSQL.


Dataset B:
The second datasets have collected / collated a large amount of information about alcohol consumption cases in the United States during covid. We will focus our effort on the state of Iowa and the county of Kossuth. (Please refer to the PDF atttached for further information).

ETL strategy: since the data is ready and available as CSV files,  we will use Python(Pandas) to load and transform the data set to fit our purposes. We will also use Pandas to extract the field that we need and merge them with Dataset A to create the new csv files that we will be importing into the database.

We will then use SQL queries to extract and report the data in a format that will allow us to derive our conclusion.


