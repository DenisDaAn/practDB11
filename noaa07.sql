CREATE TABLE observation
(
station VARCHAR(5) NOT NULL,
latitude FLOAT NOT NULL,
longitude FLOAT NOT NULL,
year INTEGER NOT NULL,
month INTEGER NOT NULL,
day INTEGER NOT NULL,
hour INTEGER NOT NULL,
minute INTEGER NOT NULL,
wind_direction FLOAT,
wind_speed FLOAT,
gust FLOAT,
wave_height FLOAT,
dominant_wave_period FLOAT,
avarage_wave_preiod FLOAT,
dominat_wave_direction FLOAT,
pressure FLOAT,
ressure_tendency FLOAT,
air_temperature FLOAT,
water_temperature FLOAT,
dew_point FLOAT,
visibility FLOAT,
tide FLOAT
);


CREATE UNIQUE INDEX idx_measureneant ON observation (station, year, month, day, hour, minute);

SELECT station, count(*) AS measureneants FROM observation GROUP BY
station ORDER BY measureneants DESC;