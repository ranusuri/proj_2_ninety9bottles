COPY covid19(date, confirmed, deaths)
FROM 'C:\home\brunel\covid19.csv'
DELIMITER ','
CSV HEADER;


COPY liquor(item_number, item_description)
FROM 'C:\home\brunel\Liquor.csv'
DELIMITER ','
CSV HEADER;


COPY Sales(item_number, price, sale, invoice_item_number, store_number, date, pack, bottle_volume)
FROM 'C:\home\brunel\sales.csv'
DELIMITER ','
CSV HEADER;


COPY Store(store_number, store_name, address, city, zip_code, county)
FROM 'C:\home\brunel\store_tble.csv'
DELIMITER ','
CSV HEADER;

