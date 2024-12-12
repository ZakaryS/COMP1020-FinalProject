CREATE TABLE provinces (
  province_id INT AUTO_INCREMENT PRIMARY KEY,
  province_name VARCHAR(20) NOT NULL,
  province_code VARCHAR(2) NOT NULL
);

CREATE TABLE owners (
  owner_id INT AUTO_INCREMENT PRIMARY KEY,
  owner_name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  province_id INT NOT NULL,
  postal_code VARCHAR(7) NOT NULL,
  FOREIGN KEY (province_id) REFERENCES provinces(province_id)
);

CREATE TABLE vehicles (
  vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
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
  theft_report_id INT AUTO_INCREMENT PRIMARY KEY,
  vehicle_id INT NOT NULL,
  theft_date DATE NOT NULL,
  theft_location VARCHAR(30) NOT NULL,
  reporting_authority VARCHAR(30) NOT NULL,
  investigation_status VARCHAR(9) NOT NULL,
  FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

INSERT INTO provinces (province_name, province_code)
VALUES
('Ontario', 'ON'),
('Quebec', 'QC'),
('British Columbia', 'BC'),
('Alberta', 'AB'),
('Saskatchewan', 'SK'),
('Manitoba', 'MB'),
('Nova Scotia', 'NS'),
('New Brunswick', 'NB'),
('Prince Edward Island', 'PE'),
('Newfoundland and Labrador', 'NL'),
('Yukon', 'YT'),
('Northwest Territories', "NT"),
('Nunavut', 'NU');

INSERT INTO owners (owner_name, address, city, province_id, postal_code)
VALUES
('Vernon Garfield', '123 Main St', 'Toronto', 1, 'M4E 2V9'),
('Avril Menard', '930 Ave J J Joubert', 'Montreal', 2, 'H7G 4J3'),
('Shubham Kaur', '1111 Haro St', 'Vancouver', 3, 'V6E 1E3'),
('Yazmin Joseph', '417 Scarboro Ave', 'Calgary', 4, 'T3C 2H7'),
('Mike Davis', '8 Morris Dr', 'Saskatoon', 5, 'S7L 3T9'),
('Emily Chen', '215 Brock St', 'Winnipeg', 6, 'R3N 0Y7'),
('David Lee', '1338 Queen St', 'Halifax', 7, 'B3J 2H5'),
('Sarah Taylor', '320 Southridge NW', 'Edmonton', 4, 'T6H 4M9'),
('Asif Mustafa', '2815 Grosvenor Rd', 'Victoria', 3, 'V8T 3M8'),
('Rebecca Martin', '2513 Edgar St', 'Regina', 5, 'S4N 3L6'),
('James Wilson', '83 Corsica Private', 'Ottawa', 1, 'K1G 5Y1'),
('Lisa Lambert', '2831 Rue Rageot', 'Quebec City', 2, 'G1M 2L2'),
('Shui Sung', '771 Harvey Ave', 'Kelowna', 3, 'V1Y 6E2'),
('Jessica Patel', '1033 Victoria Ave', 'Windsor', 1, 'N9A 4N7'),
('Yanick Archambault', '266 Rue Ball', 'Sherbrooke', 2, 'J1H 1V4');

INSERT INTO vehicles (vin, make, model, year, province_id, owner_id)
VALUES
('1VXBR12EXCP901213', 'Toyota', 'Corolla', 2020, 1, 1),
('1VXBR12EXCP901214', 'Honda', 'Civic', 2019, 2, 2),
('1VXBR12EXCP901215', 'Ford', 'F-150', 2021, 3, 3),
('1VXBR12EXCP901216', 'Tesla', 'Model 3', 2022, 4, 4),
('1VXBR12EXCP901217', 'Nissan', 'Altima', 2018, 5, 5),
('1VXBR12EXCP901218', 'Toyota', 'Camry', 2020, 1, 1),
('1VXBR12EXCP901219', 'Honda', 'Accord', 2019, 6, 6),
('1VXBR12EXCP901220', 'Ford', 'Mustang', 2021, 7, 7),
('1VXBR12EXCP901221', 'Chevrolet', 'Silverado', 2022, 4, 8),
('1VXBR12EXCP901222', 'Ram', '1500', 2018, 3, 9),
('1VXBR12EXCP901223', 'Toyota', 'RAV4', 2020, 1, 1),
('1VXBR12EXCP901224', 'Honda', 'CR-V', 2019, 5, 10),
('1VXBR12EXCP901225', 'Ford', 'Escape', 2021, 1, 11),
('1VXBR12EXCP901226', 'Subaru', 'Forester', 2022, 2, 12),
('1VXBR12EXCP901227', 'Mazda', 'CX-5', 2018, 3, 13),
('1VXBR12EXCP901228', 'Toyota', 'Tundra', 2020, 1, 14),
('1VXBR12EXCP901229', 'Honda', 'Ridgeline', 2019, 2, 15),
('1VXBR12EXCP901230', 'Ford', 'F-250', 2021, 2, 2),
('1VXBR12EXCP901231', 'Chevrolet', 'Colorado', 2022, 4, 4),
('1VXBR12EXCP901232', 'GMC', 'Canyon', 2018, 5, 5),
('1VXBR12EXCP901233', 'Toyota', 'Corolla', 2020, 1, 1),
('1VXBR12EXCP901234', 'Honda', 'Civic', 2019, 3, 9),
('1VXBR12EXCP901235', 'Ford', 'Focus', 2021, 1, 11),
('1VXBR12EXCP901236', 'Volkswagen', 'Golf', 2022, 5, 10);

INSERT INTO theft_reports (vehicle_id, theft_date, theft_location, reporting_authority, investigation_status)
VALUES
(1, '2023-01-01', 'Toronto, ON', 'Toronto Police', 'Open'),
(2, '2023-01-19', 'Montreal, QC', 'Montreal Police', 'Closed'),
(3, '2023-02-05', 'Vancouver, BC', 'Vancouver Police', 'Recovered'),
(4, '2023-02-14', 'Calgary, AB', 'Calgary Police', 'Open'),
(5, '2023-02-29', 'Saskatoon, SK', 'Saskatoon Police', 'Closed'),
(13, '2023-03-07', 'Ottawa, ON', 'Ottawa Police', 'Open'),
(14, '2023-03-21', 'Quebec City, QC', 'Quebec City Police', 'Recovered'),
(10, '2023-04-02', 'Victoria, BC', 'Victoria Police', 'Closed'),
(9, '2023-04-17', 'Edmonton, AB', 'Edmonton Police', 'Open'),
(12, '2023-05-10', 'Regina, SK', 'Regina Police', 'Closed'),
(6, '2023-5-30', 'Toronto, ON', 'Toronto Police', 'Open'),
(18, '2023-6-22', 'Montreal, QC', 'Montreal Police', 'Open'),
(3, '2023-07-09', 'Vancouver, BC', 'Vancouver Police', 'Closed'),
(19, '2023-07-26', 'Calgary, AB', 'Calgary Police', 'Recovered'),
(20, '2023-08-13', 'Saskatoon, SK', 'Saskatoon Police', 'Open');

SELECT * FROM vehicles WHERE province_id = 1;

SELECT * FROM theft_reports WHERE province_id = 1;

SELECT COUNT(*) FROM vehicles WHERE make = 'Toyota';

UPDATE owners SET address = '29 Rogers Rd', postal_code = 'M6E 1N5' WHERE owner_id = 1;

INSERT INTO theft_reports (vehicle_id, theft_date, theft_location, reporting_authority, investigation_status)
VALUES
(16, 11, '2023-08-15', 'Toronto, ON', 'Toronto Police', 'Open');