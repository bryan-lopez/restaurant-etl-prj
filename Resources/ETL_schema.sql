

CREATE TABLE Michelin (
  michelin_id INT PRIMARY KEY,
  premise_name VARCHAR,
  stars INT,
  long_lat_id INT REFERENCES lat_long(lat_long_id),
  city_id INT, REFERENCES city(city_id),
  region_id INT REFERENCES region(region_id),
  cuisine_id INT REFERENCES cuisine(cuisine_id)
);

CREATE TABLE City (
  city_id INT PRIMARY KEY,
  city_name VARCHAR
);

CREATE TABLE Region (
  region_id INT PRIMARY KEY,
  region_name VARCHAR
);

CREATE TABLE Cuisine (
  cuisine_id INT PRIMARY KEY,
  cuisine_name VARCHAR
);

CREATE TABLE Lat_long (
  lat_long_id INT PRIMARY KEY,
  lat FLOAT,
  long FLOAT
);

CREATE TABLE Business (
  business_id INT PRIMARY KEY,
  business_name VARCHAR,
  lat_long_id INT REFERENCES lat_long(lat_long_id),
  review_count INT,
  rating FLOAT
);
