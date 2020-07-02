CREATE DATABASE Apartment_Management_Database;

CREATE TABLE Apartment_Buildings(
building_id int                 NOT NULL UNIQUE,
building_short_name char    NOT NULL UNIQUE, 
building_full_name varchar(20)  NOT NULL UNIQUE,
building_description text,
building_address varchar(100), 
building_manager varchar(20),
building_phone int, 
PRIMARY KEY( building_id )
);

CREATE TABLE Guests(
guest_id int UNIQUE NOT NULL, 
guest_first_name varchar(20) NOT NULL,
guest_last_name varchar(20),
guest_date_of_birth date,
guest_gender char, 
PRIMARY KEY( guest_id )
);

CREATE TABLE Apartments(
apt_id int  UNIQUE NOT NULL,
building_id int NOT NULL
apt_type_code char,
apt_number char,
bathroom_count int,
bedroom_count int 
room_count int, 
PRIMARY KEY ( building_id, apt_id)
);


CREATE TABLE View_Unit_Status(
apt_id int UNIQUE, 
status_date date,
availability binary,
apt_booking_id int,
PRIMARY KEY ( apt_id )
);

CREATE TABLE Apartment_Bookings(
apt_booking_id int UNIQUE NOT NULL
apt_id int,
guest_id int, 
booking_status_code CHAR,
booking_start_date date,
booking_end_date date,
PRIMARY KEY ( apt_booking_id )
)

CREATE TABLE Apartment_Facilitiies(
apt_id int, 
facility_code char,
)

CREATE TABLE Apartment_Type(
apt_type_code char,  
apt_type_description text,
)

CREATE TABLE Booking_Status(
booking_status_code CHAR,
booking_status_description text
)

CREATE TABLE Ref_Apartment_Facilitiies(
facility_code char,
facility_description text
)