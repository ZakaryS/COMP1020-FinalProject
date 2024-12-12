COMP 1020 Final Project Readme File
Index:
1-1: Project Problem
1-2: Project Design
1-3: Project Structure
2-1: Search Query
2-2: Count Query
2-3: Alter Query
3-1: Database Setup Instructions
3-2: Webpage Setup Instructions

*********************************************************************

1-1: Project Problem
    This project seeks to solve the lack of a decentralized vehicle 
registration database in Canada.

1-2: Project Design
    I don't know what this means.

1-3: Project Structure
    The project's structure will consist of: 
        - a provinces table with a province_id, province_name, and 
        province_code column,
        - an owners table with an owner_id, owner_name, address, 
        city, province_id, and postal_code column,
        - a vehicles table with a vehicle_id, vin, make, model, 
        year, province_id, and owner_id column, and
        - a theft_reports table with a theft_report_id, vehicle_id, 
        theft_date, theft_location, reporting_authority, and 
        investigation_status column.

*********************************************************************

2-1: Search Query
    Queries such as "SELECT * FROM vehicles WHERE province_id = 1;"
and "SELECT * FROM theft_reports WHERE province_id = 1;" are meant
to allow all results relating to a single data value to be searched.

2-2: Count Query
    Queries such as "SELECT COUNT(*) FROM vehicles WHERE make = 'Toyota';"
are meant to tally the number of data values that match what was
searched.

2-3: Alter Query
    Queries such as "UPDATE owners SET address = '29 Rogers Rd', 
postal_code = 'M6E 1N5' WHERE owner_id = 1;" and "INSERT INTO 
theft_reports (vehicle_id, theft_date, theft_location, 
reporting_authority, investigation_status) VALUES(16, 11, 
'2023-08-15', 'Toronto, ON', 'Toronto Police', 'Open');" are
meant to add new entries to the database or to change older ones.

*********************************************************************

3-1: Database Setup Instructions
    The SQL code was written on a Mac computer, so the apostrophe 
character will be different than the one on Windows. If recreating
the database on a Mac computer, simply copy and paste the code. If
recreating the database on a Windows computer, copy all the code to 
a Word document, copy the Mac apostrophe character, paste it into the 
"find" part of a "find and replace" function, and enter the normal
Windows apostrophe character into the "replace" part and run the 
function. After, the code should be ready to be copy and pasted into
MySQL for Windows.

3-2: Webpage Setup Instructions
    As the webpage was set up using GitHub, simply go to the link 
below and click on the latest deployment.
    https://github.com/ZakaryS/COMP1020-FinalProject/deployments