

/* Extracting all the column from Sales tables and joining With the store */

select *
from "Sales"
join "Store" on "Sales".store_number = "Store".store_number



/*Retrieiving all the data for COVID-19" */

select *
from covid19

?* Retreiving all the date from Sales tables */

select *
from "Sales"


/* Complex join query between Sales and Covid-19 table to retreive the alcohol sales group by date, death and confirmed cases */



select "covid19".date, "covid19".confirmed, "covid19".deaths, sum("Sales".sale) as "alcohol sales"
from "covid19"
join "Sales" on "covid19".date = "Sales".date
group by "covid19".date, "covid19".confirmed, "covid19".deaths
order by "covid19".date asc
