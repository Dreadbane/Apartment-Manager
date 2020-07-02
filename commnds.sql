CREATE DATABASE Apartment_Management_Database;
USE Apartment_Management_Database ; 

CREATE TABLE Apartment_Facilitiies(
apt_id int,
facility_code char
);

INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(1,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(2,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(3,"B");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(4,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(5,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(6,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(7,"B");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(8,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(9,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(10,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(11,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(12,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(13,"B");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(14,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(15,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(16,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(17,"B");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(18,"A");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(19,"C");
INSERT INTO Apartment_Facilitiies(apt_id,facility_code) VALUES(20,"C");



CREATE TABLE Apartment_Type(
apt_type_code char NOT NULL,  
apt_type_description text
);

INSERT INTO Apartment_Type(apt_type_code,apt_type_description) VALUES("A" , "1 BEDROOM APARTMENT");
INSERT INTO Apartment_Type(apt_type_code,apt_type_description) VALUES("B" , "2 BEDROOM APARTMENT");
INSERT INTO Apartment_Type(apt_type_code,apt_type_description) VALUES("C" , "3 BEDROOM APARTMENT");



CREATE TABLE Booking_Status(
booking_status_code CHAR,
booking_status_description text
);

INSERT INTO Booking_Status(booking_status_code,booking_status_description) VALUES("B" , "BOOKED");
INSERT INTO Booking_Status(booking_status_code,booking_status_description) VALUES("N" , "NOT BOOKED");



CREATE TABLE Ref_Apartment_Facilitiies(
facility_code char,
facility_description text
);

INSERT INTO Ref_Apartment_Facilitiies(facility_code,facility_description) VALUES("A" , "INTERNAL AC / HEATING");
INSERT INTO Ref_Apartment_Facilitiies(facility_code,facility_description) VALUES("B" , "2 BALCONIES");
INSERT INTO Ref_Apartment_Facilitiies(facility_code,facility_description) VALUES("B" , "PENTHOUSE SUITE");





CREATE TABLE Apartment_Buildings(
building_id int                 NOT NULL UNIQUE,
building_short_name char        NOT NULL UNIQUE, 
building_full_name varchar(20)  NOT NULL UNIQUE,
building_description text,
building_address varchar(100), 
building_manager varchar(20),
building_phone int, 
PRIMARY KEY( building_id )
);

INSERT INTO Apartment_Buildings(building_id,building_short_name,building_full_name,building_description,building_address,building_manager,building_phone) 
                        VALUES(1,"S","SHANTI ENCLAVES" , "HAS 10 APARTMENTS" , "RANDOM AD1", "NIKETNAN AAAJNA" , 989777822);


INSERT INTO Apartment_Buildings(building_id,building_short_name,building_full_name,building_description,building_address,building_manager,building_phone) 
                        VALUES(2,"B","BAHARTI BUILDING" , "HAS 10 APARTMENTS" , "RANDOM AD2", "MIJAKA AZZXNA" , 789775821);



CREATE TABLE Guests(
guest_id int UNIQUE NOT NULL, 
guest_first_name varchar(20) NOT NULL,
guest_last_name varchar(20),
guest_date_of_birth date,
guest_gender char, 
PRIMARY KEY( guest_id )
);

INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(1,"ANURAG", "DASH","2000-11-11" ,"M");
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(2,"SWAP", "SAHU","2000-11-11" ,"M"); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(3,"QWER", "RTT","1999-11-11" ,"M"); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(4,"LES", "BIAN","1998-11-11" ,"F"); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(5,"GAI", "GAI","1990-11-11" ,"M"); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(6,"PRO", "FESS","1995-11-11" ,"F"); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(7,"NEWB", "IEW","2000-11-11" ,"F"); 



CREATE TABLE Apartments(
apt_id int  UNIQUE NOT NULL,
building_id int NOT NULL,
apt_type_code char NOT NULL,
apt_number char,
bathroom_count int,
bedroom_count int ,
room_count int, 
PRIMARY KEY ( building_id, apt_id), 
FOREIGN KEY ( building_id ) REFERENCES Apartment_Buildings( building_id )
);

INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(1,1,"A","1",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(2,1,"B","2",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(3,1,"C","1",1,3,5); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(4,1,"A","2",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(5,1,"B","1",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(6,1,"C","2",1,3,5);
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(7,1,"A","1",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(8,1,"B","2",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(9,1,"B","1",1,2,4);
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(10,1,"C","2",1,4,5); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(11,2,"A","1",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(12,2,"B","2",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(13,2,"C","1",1,3,5); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(14,2,"A","2",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(15,2,"B","1",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(16,2,"C","2",1,3,5);
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(17,2,"A","1",1,1,3); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(18,2,"B","2",1,2,4); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(19,2,"B","1",1,2,4);
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(20,2,"C","2",1,4,5); 

CREATE TABLE Apartment_Bookings(
apt_booking_id int UNIQUE NOT NULL,
apt_id int,
guest_id int, 
booking_status_code CHAR,
booking_start_date date,
booking_end_date date,
PRIMARY KEY ( apt_booking_id ),
FOREIGN KEY (apt_id) REFERENCES Apartments( apt_id ),
FOREIGN KEY (guest_id) REFERENCES Guests( guest_id )
);

INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(101,2,1,"B","2000-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(102,3,2,"B","2010-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(103,1,3,"B","2005-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(104,6,4,"B","1992-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(105,4,5,"B","1999-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(106,5,6,"B","2007-11-11","2020-11-11"); 
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(107,7,7,"B","2007-11-11","2020-11-11"); 

CREATE TABLE View_Unit_Status(
apt_id int UNIQUE, 
status_date date,
availability binary,
apt_booking_id int,
PRIMARY KEY ( apt_id )
FOREIGN KEY (apt_id) REFERENCES Apartments( apt_id )
FOREIGN KEY ( apt_booking_id) REFERENCES Apartment_Booking( apt_booking_id )
);

-- COPY TILL HERE -- 


-- Select Statements using Count and Group Functions (Minimum of 2)

SELECT COUNT(guest_id) FROM Guests ;
SELECT COUNT(apt_type_code), FROM Apartments  GROUP BY apt_type_code;


-- Select Statements using Different Joins (Minimum of 2)
SELECT apt_booking_id, Apartment_Bookings.guest_id FROM Apartment_Bookings INNER JOIN Guests on Apartment_Bookings.guest_id = Guests.guest_id;
SELECT Booking_status_description,apt_id,guest_id FROM Apartment_Bookings INNER JOIN Booking_Status on Apartment_Bookings.booking_status_code = Booking_Status.booking_status_code;

-- Insert Statement (Minimum of 5)
INSERT INTO Apartment_Bookings(apt_booking_id,apt_id,guest_id,booking_status_code,booking_start_date,booking_end_date) VALUES(107,7,7,"B","2007-11-11","2020-11-11"); 
INSERT INTO Apartments(apt_id,building_id,apt_type_code,apt_number,bathroom_count,bedroom_count,room_count) VALUES(20,2,"C","2",1,4,5); 
INSERT INTO Guests(guest_id,guest_first_name,guest_last_name,guest_date_of_birth,guest_gender) VALUES(6,"PRO", "FESS","1995-11-11" ,"F"); 
INSERT INTO Apartment_Buildings(building_id,building_short_name,building_full_name,building_description,building_address,building_manager,building_phone) 
INSERT INTO Ref_Apartment_Facilitiies(facility_code,facility_description) VALUES("B" , "PENTHOUSE SUITE");

-- Update Statement (Minimum of 5)
UPDATE Ref_Apartment_Facilitiies SET facility_description = 'PENTHOUSE S.' WHERE facility_code = "B";
UPDATE Guests SET guest_first_name = 'SPOPO', guest_last_name="NIL" WHERE guest_id = "6";
UPDATE Guests SET guest_first_name = 'TILL', guest_last_name=" QUI" WHERE guest_id = "5";
UPDATE Apartment_Buildings SET building_short_name = 'P', building_full_name="PARASIDE" WHERE building_id = "2";
UPDATE Apartment_Buildings SET building_short_name = 'Q', building_full_name="QAAR" WHERE building_id = "1";

-- Delete Statement (Minimum of 5)
DELETE FROM Guests WHERE guest_date_of_birth < 1'2000-01-01' ; 
DELETE FROM Apartment_Buildings WHERE building_id=1 AND building_short_name="P" ; 
DELETE FROM Apartment_Bookings WHERE booking_end_date < '2020-10-10'; 
DELETE FROM Guests WEHRE guest_first_name LIKE 'S%' ;
DELETE FROM Guests ; 
