# The schema for the apartment management system will be: 

Apartment_Buildings:

* building_id
* building_short_name
* building_full_name
* building_description
* building_address
* building_manager
* building_phone

Guests

* guest_id
* guest_first_name
* guest_last_name
* guest_date_of_birth
* guest_gender

Apartments

* apt_id
* building_id
* apt_type_code
* apt_number
* bathroom_count
* bedroom_count
* room_count

View_Unit_Status

* apt_id
* status_date
* availability
* apt_booking_id

Apartment_Bookings

* apt_booking_id
* apt_id
* guest_id
* booking_status_code
* booking_start_date
* booking_end_date


Apartment_Facilitiies

* apt_id
* facility_code

# Reference Tables

Apartment_Type

* apt_type_code
* apt_type_description

Booking_Status

* booking_status_code
* Booking_status_description

Ref_Apartment_Facilitiies

* facility_code
* facility_description

Member

* Id
* Username
* Password
* Email
