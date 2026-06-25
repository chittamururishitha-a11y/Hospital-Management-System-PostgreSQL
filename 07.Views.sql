-- ===========================================================
--                     VIEWS
--        Hospital Management System - PostgreSQL
-- ===========================================================


-- ===========================================================
-- View 1:
-- Patient Appointment Details
-- ===========================================================

CREATE VIEW vw_patient_appointments AS
SELECT
    a.appointment_id,
    p.patient_id,
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


-- To View Data
SELECT * FROM vw_patient_appointments;



-- ===========================================================
-- View 2:
-- Doctor Department Details
-- ===========================================================

CREATE VIEW vw_doctor_departments AS
SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    d.specialization,
    dep.department_name
FROM doctors d
JOIN departments dep
ON d.department_id = dep.department_id;


-- To View Data
SELECT * FROM vw_doctor_departments;



-- ===========================================================
-- View 3:
-- Billing Summary
-- ===========================================================

CREATE VIEW vw_billing_summary AS
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


-- To View Data
SELECT * FROM vw_billing_summary;



-- ===========================================================
-- View 4:
-- Prescription Details
-- ===========================================================

CREATE VIEW vw_prescription_details AS
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


-- To View Data
SELECT * FROM vw_prescription_details;



-- ===========================================================
-- View 5:
-- Doctor Revenue Summary
-- ===========================================================

CREATE VIEW vw_doctor_revenue AS
SELECT
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    SUM(b.total_amount) AS total_revenue
FROM doctors d
JOIN appointments a
ON d.doctor_id = a.doctor_id
JOIN billing b
ON a.appointment_id = b.appointment_id
GROUP BY
    d.doctor_id,
    doctor_name;


-- To View Data
SELECT * FROM vw_doctor_revenue;