-- ===========================================================
--                  JOIN QUERIES
--        Hospital Management System - PostgreSQL
-- ===========================================================


-- ===========================================================
-- Question 1:
-- Display patient name with doctor name for each appointment.
-- ===========================================================

SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name
FROM appointments a
JOIN patients p
ON a.patient_id = p.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id;


-- ===========================================================
-- Question 2:
-- Display patient name, doctor name,
-- appointment date and appointment status.
-- ===========================================================

SELECT
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
-- Question 3:
-- Display all doctors with their department names.
-- ===========================================================

SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.department_name
FROM doctors d
JOIN departments dep
ON d.department_id = dep.department_id;


-- ===========================================================
-- Question 4:
-- Display all prescriptions with patient name.
-- ===========================================================

SELECT
    pr.prescription_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    m.medicine_name,
    pr.dosage,
    pr.frequency,
    pr.duration
FROM prescriptions pr
JOIN appointments a
ON pr.appointment_id = a.appointment_id
JOIN patients p
ON a.patient_id = p.patient_id
JOIN medicines m
ON pr.medicine_id = m.medicine_id;

-- ===========================================================
-- Question 5:
-- Display all prescriptions with doctor name with dosage.
-- ===========================================================
SELECT
    pr.prescription_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    m.medicine_name,
    pr.dosage,
    pr.frequency,
    pr.duration
FROM prescriptions pr
JOIN appointments a
ON pr.appointment_id = a.appointment_id
JOIN doctors d
ON a.doctor_id = d.doctor_id
JOIN medicines m
ON pr.medicine_id = m.medicine_id;


-- ===========================================================
-- Question 6:
-- Display billing details along with patient names.
-- ===========================================================

SELECT
    b.bill_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    b.total_amount,
    b.payment_status
FROM billing b
JOIN appointments a
ON b.appointment_id = a.appointment_id
JOIN patients p
ON a.patient_id = p.patient_id;

-- ===========================================================
-- Question 7:
-- Display patient name, doctor name and bill amount.
-- ===========================================================

SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    b.total_amount
FROM billing b
JOIN appointments a
    ON b.appointment_id = a.appointment_id
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id;

-- ===========================================================
-- Question 8:
-- Display medicines prescribed to each patient.
-- ===========================================================

SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    m.medicine_name,
    pr.dosage,
    pr.frequency,
    pr.duration
FROM prescriptions pr
JOIN appointments a
    ON pr.appointment_id = a.appointment_id
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN medicines m
    ON pr.medicine_id = m.medicine_id;


-- ===========================================================
-- Question 9:
-- Display patient name, diagnosis and prescribed medicine.
-- ===========================================================

SELECT
    p.first_name || ' ' || p.last_name AS patient_name,
    m.medicine_name,
    pr.dosage,
    pr.frequency
FROM prescriptions pr
JOIN appointments a
    ON pr.appointment_id = a.appointment_id
JOIN patients p
    ON a.patient_id = p.patient_id
JOIN medicines m
    ON pr.medicine_id = m.medicine_id;


-- ===========================================================
-- Question 10:
-- Display complete appointment details
-- with patient, doctor and department.
-- ===========================================================

SELECT
    a.appointment_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.department_name,
    a.appointment_date,
    a.appointment_time,
    a.status
FROM appointments a
JOIN patients p
ON a.patient_id = p.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id
JOIN departments dep
ON d.department_id = dep.department_id;