CREATE TABLE provinces (
  province_id INT PRIMARY KEY,
  province_name VARCHAR(20) NOT NULL,
  province_code VARCHAR(2) NOT NULL
);

CREATE TABLE owners (
  owner_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  province_id INT NOT NULL,
  postal_code VARCHAR(7) NOT NULL,
  FOREIGN KEY (province_id) REFERENCES provinces(province_id)
);

CREATE TABLE vehicles (
  vehicle_id INT PRIMARY KEY,
  vin VARCHAR(17) NOT NULL,
  make VARCHAR(20) NOT NULL,
  model VARCHAR(20) NOT NULL,
  year INT NOT NULL,
  province_id INT NOT NULL,
  owner_id INT NOT NULL,
  FOREIGN KEY (province_id) REFERENCES provinces(province_id),
  FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

CREATE TABLE theft_reports (
  theft_report_id INT PRIMARY KEY,
  vehicle_id INT NOT NULL,
  theft_date DATE NOT NULL,
  theft_location VARCHAR(30) NOT NULL,
  reporting_authority VARCHAR(30) NOT NULL,
  investigation_status VARCHAR(9) NOT NULL,
  FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

INSERT INTO provinces (province_id, province_name, province_code)
VALUES
(1, 'Ontario', 'ON'),
(2, 'Quebec', 'QC'),
(3, 'British Columbia', 'BC'),
(4, 'Alberta', 'AB'),
(5, 'Saskatchewan', 'SK'),
(6, 'Manitoba', 'MB'),
(7, 'Nova Scotia', 'NS'),
(8, 'New Brunswick', 'NB'),
(9, 'Prince Edward Island', 'PE'),
(10, 'Newfoundland and Labrador', 'NL'),
(11, 'Yukon', 'YT'),
(12, 'Northwest Territories', "NT"),
(13, 'Nunavut', 'NU');

INSERT INTO owners (owner_id, name, address, city, province_id, postal_code)
VALUES
(1, 'Vernon Garfield', '123 Main St', 'Toronto', 1, 'M4E 2V9'),
(2, 'Avril Menard', '930 Ave J J Joubert', 'Montreal', 2, 'H7G 4J3'),
(3, 'Shubham Kaur', '1111 Haro St', 'Vancouver', 3, 'V6E 1E3'),
(4, 'Yazmin Joseph', '417 Scarboro Ave', 'Calgary', 4, 'T3C 2H7'),
(5, 'Mike Davis', '8 Morris Dr', 'Saskatoon', 5, 'S7L 3T9'),
(6, 'Emily Chen', '215 Brock St', 'Winnipeg', 6, 'R3N 0Y7'),
(7, 'David Lee', '1338 Queen St', 'Halifax', 7, 'B3J 2H5'),
(8, 'Sarah Taylor', '320 Southridge NW', 'Edmonton', 4, 'T6H 4M9'),
(9, 'Asif Mustafa', '2815 Grosvenor Rd', 'Victoria', 3, 'V8T 3M8'),
(10, 'Rebecca Martin', '2513 Edgar St', 'Regina', 5, 'S4N 3L6'),
(11, 'James Wilson', '83 Corsica Private', 'Ottawa', 1, 'K1G 5Y1'),
(12, 'Lisa Lambert', '2831 Rue Rageot', 'Quebec City', 2, 'G1M 2L2'),
(13, 'Shui Sung', '771 Harvey Ave', 'Kelowna', 3, 'V1Y 6E2'),
(14, 'Jessica Patel', '1033 Victoria Ave', 'Windsor', 1, 'N9A 4N7'),
(15, 'Yanick Archambault', '266 Rue Ball', 'Sherbrooke', 2, 'J1H 1V4'),
(21, 'Dan Diodoros', '207 Main St', 'Whitehorse', 11, 'Y1A 2B2'),
(22, 'Elvira Thompson', '897 Fourth Ave', 'Dawson City', 11, 'Y0B 0A3'),
(23, 'Tom Harris', '156 Martin St', 'Haines Junction', 11, 'Y0B 1L0'),
(24, 'Amy Li', '2 Territorial Rd', 'Ross River', 11, 'Y0B 1S0'),
(25, 'Annika Gordon', '408 Tlingit Ave', 'Carcross', 11, 'Y0B 1B0');

INSERT INTO vehicles (vehicle_id, vin, make, model, year, province_id, owner_id)
VALUES
(1, '1VXBR12EXCP901213', 'Toyota', 'Corolla', 2020, 1, 1),
(2, '1VXBR12EXCP901214', 'Honda', 'Civic', 2019, 2, 2),
(3, '1VXBR12EXCP901215', 'Ford', 'F-150', 2021, 3, 3),
(4, '1VXBR12EXCP901216', 'Tesla', 'Model 3', 2022, 4, 4),
(5, '1VXBR12EXCP901217', 'Nissan', 'Altima', 2018, 5, 5),
(6, '1VXBR12EXCP901218', 'Toyota', 'Camry', 2020, 1, 1),
(7, '1VXBR12EXCP901219', 'Honda', 'Accord', 2019, 6, 6),
(8, '1VXBR12EXCP901220', 'Ford', 'Mustang', 2021, 7, 7),
(9, '1VXBR12EXCP901221', 'Chevrolet', 'Silverado', 2022, 4, 8),
(10, '1VXBR12EXCP901222', 'Ram', '1500', 2018, 3, 9),
(11, '1VXBR12EXCP901223', 'Toyota', 'RAV4', 2020, 1, 1),
(12, '1VXBR12EXCP901224', 'Honda', 'CR-V', 2019, 5, 10),
(13, '1VXBR12EXCP901225', 'Ford', 'Escape', 2021, 1, 11),
(14, '1VXBR12EXCP901226', 'Subaru', 'Forester', 2022, 2, 12),
(15, '1VXBR12EXCP901227', 'Mazda', 'CX-5', 2018, 3, 13),
(16, '1VXBR12EXCP901228', 'Toyota', 'Tundra', 2020, 1, 14),
(17, '1VXBR12EXCP901229', 'Honda', 'Ridgeline', 2019, 2, 15),
(18, '1VXBR12EXCP901230', 'Ford', 'F-250', 2021, 2, 2),
(19, '1VXBR12EXCP901231', 'Chevrolet', 'Colorado', 2022, 4, 4),
(20, '1VXBR12EXCP901232', 'GMC', 'Canyon', 2018, 5, 5),
(21, '1VXBR12EXCP901233', 'Toyota', 'Corolla', 2020, 1, 1),
(22, '1VXBR12EXCP901234', 'Honda', 'Civic', 2019, 3, 9),
(23, '1VXBR12EXCP901235', 'Ford', 'Focus', 2021, 1, 11),
(24, '1VXBR12EXCP901236', 'Volkswagen', 'Golf', 2022, 5, 10);

INSERT INTO theft_reports (theft_report_id, vehicle_id, theft_date, theft_location, reporting_authority, investigation_status)
VALUES
(1, 1, '2023-01-01', 'Toronto, ON', 'Toronto Police', 'Open'),
(2, 2, '2023-01-19', 'Montreal, QC', 'Montreal Police', 'Closed'),
(3, 3, '2023-02-05', 'Vancouver, BC', 'Vancouver Police', 'Recovered'),
(4, 4, '2023-02-14', 'Calgary, AB', 'Calgary Police', 'Open'),
(5, 5, '2023-02-29', 'Saskatoon, SK', 'Saskatoon Police', 'Closed'),
(6, 13, '2023-03-07', 'Ottawa, ON', 'Ottawa Police', 'Open'),
(7, 14, '2023-03-21', 'Quebec City, QC', 'Quebec City Police', 'Recovered'),
(8, 10, '2023-04-02', 'Victoria, BC', 'Victoria Police', 'Closed'),
(9, 9, '2023-04-17', 'Edmonton, AB', 'Edmonton Police', 'Open'),
(10, 12, '2023-05-10', 'Regina, SK', 'Regina Police', 'Closed'),
(11, 6, '2023-5-30', 'Toronto, ON', 'Toronto Police', 'Open'),
(12, 18, '2023-6-22', 'Montreal, QC', 'Montreal Police', 'Open'),
(13, 3, '2023-07-09', 'Vancouver, BC', 'Vancouver Police', 'Closed'),
(14, 19, '2023-07-26', 'Calgary, AB', 'Calgary Police', 'Recovered'),
(15, 20, '2023-08-13', 'Saskatoon, SK', 'Saskatoon Police', 'Open');

SELECT * FROM vehicles WHERE province_id = 1;

SELECT * FROM theft_reports WHERE province_id = 1;

SELECT COUNT(*) FROM vehicles WHERE make = 'Toyota';

UPDATE owners SET address = '29 Rogers Rd', postal_code = 'M6E 1N5' WHERE owner_id = 1;

INSERT INTO theft_reports (vehicle_id, theft_date, theft_location, reporting_authority, investigation_status)
VALUES
(16, 11, '2023-08-15', 'Toronto, ON', 'Toronto Police', 'Open');