-- ===========================================================
--                   FUNCTIONS
--        Hospital Management System - PostgreSQL
-- ===========================================================

-------------------------------------------------------------
-- Function 1
-- Get Patient Age
-------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_patient_age(p_id INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
    age_years INT;
BEGIN
    SELECT EXTRACT(YEAR FROM AGE(CURRENT_DATE, dob))
    INTO age_years
    FROM patients
    WHERE patient_id = p_id;

    RETURN age_years;
END;
$$;

-- Example
SELECT get_patient_age(1);



-------------------------------------------------------------
-- Function 2
-- Get Doctor Full Name
-------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_doctor_name(d_id INT)
RETURNS VARCHAR
LANGUAGE plpgsql
AS
$$
DECLARE
    doctor_name VARCHAR;
BEGIN

    SELECT first_name || ' ' || last_name
    INTO doctor_name
    FROM doctors
    WHERE doctor_id = d_id;

    RETURN doctor_name;

END;
$$;

-- Example
SELECT get_doctor_name(2);



-------------------------------------------------------------
-- Function 3
-- Total Appointments of Doctor
-------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_total_appointments(d_id INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
    total INT;
BEGIN

    SELECT COUNT(*)
    INTO total
    FROM appointments
    WHERE doctor_id = d_id;

    RETURN total;

END;
$$;

-- Example
SELECT get_total_appointments(1);



-------------------------------------------------------------
-- Function 4
-- Total Hospital Revenue
-------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_total_revenue()
RETURNS NUMERIC
LANGUAGE plpgsql
AS
$$
DECLARE
    revenue NUMERIC;
BEGIN

    SELECT SUM(total_amount)
    INTO revenue
    FROM billing;

    RETURN revenue;

END;
$$;

-- Example
SELECT get_total_revenue();



-------------------------------------------------------------
-- Function 5
-- Medicine Stock
-------------------------------------------------------------

CREATE OR REPLACE FUNCTION get_medicine_stock(m_id INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
    stock INT;
BEGIN

    SELECT stock_quantity
    INTO stock
    FROM medicines
    WHERE medicine_id = m_id;

    RETURN stock;

END;
$$;

-- Example
SELECT get_medicine_stock(3);