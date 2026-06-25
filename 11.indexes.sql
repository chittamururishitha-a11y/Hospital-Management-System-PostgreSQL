-- ===========================================================
--                    INDEXES
--        Hospital Management System - PostgreSQL
-- ===========================================================


--------------------------------------------------------------
-- Index 1
-- Search Patients by Phone Number
--------------------------------------------------------------

CREATE INDEX idx_patient_phone
ON patients(phone);


--------------------------------------------------------------
-- Index 2
-- Search Doctors by Department
--------------------------------------------------------------

CREATE INDEX idx_doctor_department
ON doctors(department_id);


--------------------------------------------------------------
-- Index 3
-- Search Appointments by Date
--------------------------------------------------------------

CREATE INDEX idx_appointment_date
ON appointments(appointment_date);


--------------------------------------------------------------
-- Index 4
-- Search Billing by Payment Status
--------------------------------------------------------------

CREATE INDEX idx_payment_status
ON billing(payment_status);


--------------------------------------------------------------
-- Index 5
-- Search Medicines by Name
--------------------------------------------------------------

CREATE INDEX idx_medicine_name
ON medicines(medicine_name);


--------------------------------------------------------------
-- Index 6
-- Search Prescriptions by Appointment
--------------------------------------------------------------

CREATE INDEX idx_prescription_appointment
ON prescriptions(appointment_id);


--------------------------------------------------------------
-- Index 7
-- Search Appointments by Doctor
--------------------------------------------------------------

CREATE INDEX idx_appointment_doctor
ON appointments(doctor_id);


--------------------------------------------------------------
-- Index 8
-- Search Appointments by Patient
--------------------------------------------------------------

CREATE INDEX idx_appointment_patient
ON appointments(patient_id);