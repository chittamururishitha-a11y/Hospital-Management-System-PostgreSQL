-- ===========================================================
--                  REPORT QUERIES
--        Hospital Management System - PostgreSQL
-- ===========================================================


-- ===========================================================
-- Question 1:
-- Display all patient details.
-- ===========================================================

SELECT *
FROM patients;


-- ===========================================================
-- Question 2:
-- Display all doctor details.
-- ===========================================================

SELECT *
FROM doctors;


-- ===========================================================
-- Question 3:
-- Display all appointments along with patient name,
-- doctor name, appointment date and status.
-- ===========================================================

SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    a.appointment_date,
    a.appointment_time,
    a.status
FROM appointments a
JOIN patients p
ON a.patient_id = p.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id;


-- ===========================================================
-- Question 4:
-- Display all completed appointments.
-- ===========================================================

SELECT
    appointment_id,
    appointment_date,
    appointment_time,
    status
FROM appointments
WHERE status='Completed';


-- ===========================================================
-- Question 5:
-- Display all scheduled appointments.
-- ===========================================================

SELECT
    appointment_id,
    appointment_date,
    appointment_time,
    status
FROM appointments
WHERE status='Scheduled';


-- ===========================================================
-- Question 6:
-- Display all pending bills.
-- ===========================================================

SELECT *
FROM billing
WHERE payment_status='Pending';


-- ===========================================================
-- Question 7:
-- Display all paid bills.
-- ===========================================================

SELECT *
FROM billing
WHERE payment_status='Paid';


-- ===========================================================
-- Question 8:
-- Display all medicines available in stock.
-- ===========================================================

SELECT
    medicine_name,
    stock_quantity,
    price
FROM medicines
ORDER BY stock_quantity DESC;


-- ===========================================================
-- Question 9:
-- Display medicines whose stock is less than 100.
-- ===========================================================

SELECT
    medicine_name,
    stock_quantity
FROM medicines
WHERE stock_quantity < 100;


-- ===========================================================
-- Question 10:
-- Display all appointments in ascending order of date.
-- ===========================================================

SELECT *
FROM appointments
ORDER BY appointment_date ASC,
appointment_time ASC;


-- ===========================================================
-- Question 11:
-- Display all doctors with their departments.
-- ===========================================================

SELECT
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.department_name,
    d.specialization
FROM doctors d
JOIN departments dep
ON d.department_id = dep.department_id;


-- ===========================================================
-- Question 12:
-- Display the total number of patients.
-- ===========================================================

SELECT
COUNT(*) AS total_patients
FROM patients;


-- ===========================================================
-- Question 13:
-- Display the total hospital revenue.
-- ===========================================================

SELECT
SUM(total_amount) AS total_revenue
FROM billing;


-- ===========================================================
-- Question 14:
-- Display the highest hospital bill.
-- ===========================================================

SELECT
MAX(total_amount) AS highest_bill
FROM billing;


-- ===========================================================
-- Question 15:
-- Display the lowest hospital bill.
-- ===========================================================

SELECT
MIN(total_amount) AS lowest_bill
FROM billing;