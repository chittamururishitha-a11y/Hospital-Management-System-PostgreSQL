-- ===========================================================
--                  STORED PROCEDURES
--        Hospital Management System - PostgreSQL
-- ===========================================================


--------------------------------------------------------------
-- Procedure 1
-- Add New Patient
--------------------------------------------------------------

CREATE OR REPLACE PROCEDURE add_patient(
    p_first_name VARCHAR,
    p_last_name VARCHAR,
    p_gender VARCHAR,
    p_dob DATE,
    p_blood_group VARCHAR,
    p_phone VARCHAR,
    p_email VARCHAR,
    p_address TEXT,
    p_emergency_contact VARCHAR
)
LANGUAGE plpgsql
AS
$$
BEGIN

INSERT INTO patients
(
first_name,
last_name,
gender,
dob,
blood_group,
phone,
email,
address,
emergency_contact
)

VALUES
(
p_first_name,
p_last_name,
p_gender,
p_dob,
p_blood_group,
p_phone,
p_email,
p_address,
p_emergency_contact
);

END;
$$;


-- Example

CALL add_patient(
'Rishi',
'Reddy',
'Male',
'2001-08-12',
'O+',
'9876543211',
'rishi@gmail.com',
'Hyderabad',
'9876543210'
);



--------------------------------------------------------------
-- Procedure 2
-- Update Appointment Status
--------------------------------------------------------------

CREATE OR REPLACE PROCEDURE update_appointment_status(
    p_appointment_id INT,
    p_status VARCHAR
)
LANGUAGE plpgsql
AS
$$
BEGIN

UPDATE appointments
SET status = p_status
WHERE appointment_id = p_appointment_id;

END;
$$;


-- Example

CALL update_appointment_status(2,'Completed');



--------------------------------------------------------------
-- Procedure 3
-- Update Medicine Stock
--------------------------------------------------------------

CREATE OR REPLACE PROCEDURE update_medicine_stock(
    p_medicine_id INT,
    p_stock INT
)
LANGUAGE plpgsql
AS
$$
BEGIN

UPDATE medicines
SET stock_quantity = p_stock
WHERE medicine_id = p_medicine_id;

END;
$$;


-- Example

CALL update_medicine_stock(3,250);



--------------------------------------------------------------
-- Procedure 4
-- Update Bill Payment Status
--------------------------------------------------------------

CREATE OR REPLACE PROCEDURE update_payment_status(
    p_bill_id INT,
    p_status VARCHAR
)
LANGUAGE plpgsql
AS
$$
BEGIN

UPDATE billing
SET payment_status = p_status
WHERE bill_id = p_bill_id;

END;
$$;


-- Example

CALL update_payment_status(4,'Paid');



--------------------------------------------------------------
-- Procedure 5
-- Increase Medicine Stock
--------------------------------------------------------------

CREATE OR REPLACE PROCEDURE increase_stock(
    p_medicine_id INT,
    p_quantity INT
)
LANGUAGE plpgsql
AS
$$
BEGIN

UPDATE medicines
SET stock_quantity = stock_quantity + p_quantity
WHERE medicine_id = p_medicine_id;

END;
$$;


-- Example

CALL increase_stock(2,50);