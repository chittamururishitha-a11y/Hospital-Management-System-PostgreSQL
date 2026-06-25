-- ===========================================================
--                SUBQUERY QUERIES
--        Hospital Management System - PostgreSQL
-- ===========================================================


-- ===========================================================
-- Question 1:
-- Display patients who have paid bill greater than average bill.
-- ===========================================================

SELECT
    p.first_name,
    p.last_name
FROM patients p
JOIN appointments a
    ON p.patient_id = a.patient_id
JOIN billing b
    ON a.appointment_id = b.appointment_id
WHERE b.total_amount >
(
    SELECT AVG(total_amount)
    FROM billing
);


-- ===========================================================
-- Question 2:
-- Display doctors who have more than 2 appointments.
-- ===========================================================

SELECT
    d.first_name,
    d.last_name
FROM doctors d
WHERE d.doctor_id IN
(
    SELECT doctor_id
    FROM appointments
    GROUP BY doctor_id
    HAVING COUNT(*) > 2
);


-- ===========================================================
-- Question 3:
-- Display patient who has highest bill.
-- ===========================================================

SELECT
    p.first_name,
    p.last_name
FROM patients p
JOIN appointments a
    ON p.patient_id = a.patient_id
JOIN billing b
    ON a.appointment_id = b.appointment_id
WHERE b.total_amount =
(
    SELECT MAX(total_amount)
    FROM billing
);


-- ===========================================================
-- Question 4:
-- Display medicine with highest price.
-- ===========================================================

SELECT *
FROM medicines
WHERE price =
(
    SELECT MAX(price)
    FROM medicines
);


-- ===========================================================
-- Question 5:
-- Display doctors who belong to department 'Cardiology'.
-- ===========================================================

SELECT
    d.first_name,
    d.last_name
FROM doctors d
WHERE d.department_id =
(
    SELECT department_id
    FROM departments
    WHERE department_name = 'Cardiology'
);


-- ===========================================================
-- Question 6:
-- Display appointments where bill is above average.
-- ===========================================================

SELECT *
FROM appointments
WHERE appointment_id IN
(
    SELECT appointment_id
    FROM billing
    WHERE total_amount >
    (
        SELECT AVG(total_amount)
        FROM billing
    )
);


-- ===========================================================
-- Question 7:
-- Display patients who never booked appointment.
-- ===========================================================

SELECT
    first_name,
    last_name
FROM patients
WHERE patient_id NOT IN
(
    SELECT patient_id
    FROM appointments
);


-- ===========================================================
-- Question 8:
-- Display doctors who never had appointments.
-- ===========================================================

SELECT
    first_name,
    last_name
FROM doctors
WHERE doctor_id NOT IN
(
    SELECT doctor_id
    FROM appointments
);


-- ===========================================================
-- Question 9:
-- Display most expensive medicine details using subquery.
-- ===========================================================

SELECT *
FROM medicines
WHERE price =
(
    SELECT MAX(price)
    FROM medicines
);


-- ===========================================================
-- Question 10:
-- Display appointments whose bill is highest.
-- ===========================================================

SELECT *
FROM appointments
WHERE appointment_id =
(
    SELECT appointment_id
    FROM billing
    WHERE total_amount =
    (
        SELECT MAX(total_amount)
        FROM billing
    )
);