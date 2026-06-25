-- ===========================================================
-- LOG TABLE FOR APPOINTMENTS
-- ===========================================================

CREATE TABLE appointment_logs
(
    log_id SERIAL PRIMARY KEY,
    appointment_id INT,
    action VARCHAR(100),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--------------------------------------------------------------

CREATE TABLE billing_logs
(
    log_id SERIAL PRIMARY KEY,
    bill_id INT,
    action VARCHAR(100),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ===========================================================
--                  TRIGGERS
-- ===========================================================

--------------------------------------------------------------
-- Trigger 1
-- Log New Appointment
--------------------------------------------------------------

CREATE OR REPLACE FUNCTION log_new_appointment()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN

INSERT INTO appointment_logs
(
appointment_id,
action
)

VALUES
(
NEW.appointment_id,
'New Appointment Created'
);

RETURN NEW;

END;
$$;


CREATE TRIGGER trg_new_appointment

AFTER INSERT

ON appointments

FOR EACH ROW

EXECUTE FUNCTION log_new_appointment();

--------------------------------------------------------------
-- Test

INSERT INTO appointments
(
patient_id,
doctor_id,
appointment_date,
appointment_time,
reason,
status
)

VALUES
(
1,
1,
'2025-08-01',
'10:00',
'Fever',
'Scheduled'
);

SELECT * FROM appointment_logs;

--------------------------------------------------------------
-- Trigger 2
-- Bill Payment Log
--------------------------------------------------------------

CREATE OR REPLACE FUNCTION log_bill_payment()

RETURNS TRIGGER

LANGUAGE plpgsql

AS
$$
BEGIN

IF NEW.payment_status='Paid'
AND OLD.payment_status<>'Paid'

THEN

INSERT INTO billing_logs
(
bill_id,
action
)

VALUES
(
NEW.bill_id,
'Bill Paid Successfully'
);

END IF;

RETURN NEW;

END;
$$;


CREATE TRIGGER trg_bill_payment

AFTER UPDATE

ON billing

FOR EACH ROW

EXECUTE FUNCTION log_bill_payment();

--------------------------------------------------------------
-- Test

UPDATE billing

SET payment_status='Paid'

WHERE bill_id=1;

SELECT * FROM billing_logs;

--------------------------------------------------------------
-- Trigger 3
-- Prevent Negative Medicine Stock
--------------------------------------------------------------

CREATE OR REPLACE FUNCTION check_stock()

RETURNS TRIGGER

LANGUAGE plpgsql

AS
$$
BEGIN

IF NEW.stock_quantity < 0 THEN

RAISE EXCEPTION
'Stock cannot be negative';

END IF;

RETURN NEW;

END;
$$;


CREATE TRIGGER trg_check_stock

BEFORE INSERT OR UPDATE

ON medicines

FOR EACH ROW

EXECUTE FUNCTION check_stock();

--------------------------------------------------------------
-- Trigger 4
-- Registration Date Auto Set
--------------------------------------------------------------

CREATE OR REPLACE FUNCTION set_registration_date()

RETURNS TRIGGER

LANGUAGE plpgsql

AS
$$
BEGIN

IF NEW.registration_date IS NULL THEN

NEW.registration_date := CURRENT_DATE;

END IF;

RETURN NEW;

END;
$$;


CREATE TRIGGER trg_registration

BEFORE INSERT

ON patients

FOR EACH ROW

EXECUTE FUNCTION set_registration_date();

--------------------------------------------------------------
-- Trigger 5
-- Appointment Status Validation
--------------------------------------------------------------

CREATE OR REPLACE FUNCTION validate_status()

RETURNS TRIGGER

LANGUAGE plpgsql

AS
$$
BEGIN

IF NEW.status NOT IN
('Scheduled','Completed','Cancelled')

THEN

RAISE EXCEPTION
'Invalid Appointment Status';

END IF;

RETURN NEW;

END;
$$;


CREATE TRIGGER trg_status_validation

BEFORE INSERT OR UPDATE

ON appointments

FOR EACH ROW

EXECUTE FUNCTION validate_status();