# ETL_Project

In this project we decided to extract, transform, and load restaurant data. We used APIs to extract data from Yelp. Our Michelin data was obtained from kaggle and came in the form of CSVs. 
Then we created the Michelin_Yelp database. Our database schema included six tables. The Michelin table included data from Michelin 
and the Business, City, Region, and Cuisine tables included data from Yelp. we will be cleaning and transforming the Michelin Star Data. 
We obtained the Michelin data in three seperate csv's: one-star, two-stars, and three-stars. We combined all three Michelin
csvs, deleted and extracted columns, and transformed the Michelin table into a database-friendly form. The Michelin table included a
unique primary key ID column, a name column, a stars column, and the lat_long_id, business_id, city_id, region_id, and cuisine_id columns,
which are foreign keys that reference their respective tables. We deleted all the unneeded columns in the Yelp tables 
(Business, City, Region, and Cuisine). The City, Region and Cuisine tables contained a unique primary key ID column and a name column. 
The Business table contained a unique primary key ID column, a name column, and lat_long_id.The lat_long_table consistested of the 
lat_long_id, which was the table's unique primary key, a latitude column, and a longitude column. The lat_long_table connected the 
Michelin and Business tables with the lat_long_id. 

Please refer to the ERD diagram below:

![ERD_Diagram](/Resources/Yelp_Michelin_ERD.PNG)
Format: ![Alt Text](url)

We queried data to confirm the functionality of your database. Our two basic queries queried all the data within certain tables, which
worked. Our more complicated inner join query also worked:

Please refer to our queries below:

michelin_query = "SELECT * FROM michelin"
lat_long_query = "SELECT * FROM lat_long"

yelp_mich_query = """SELECT business.business_id, 
                     business.business_name, 
                     business.rating, 
                     michelin.stars 
    FROM business
    INNER JOIN lat_long
    ON business.lat_long_id = lat_long.lat_long_id
    INNER JOIN michelin
    ON business.lat_long_id = michelin.long_lat_id"""
    
   

