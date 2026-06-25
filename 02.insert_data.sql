INSERT INTO departments (department_name, location)
VALUES
('Cardiology', 'First Floor'),
('Neurology', 'Second Floor'),
('Orthopedics', 'Ground Floor'),
('Pediatrics', 'Third Floor'),
('General Medicine', 'Ground Floor'),
('Dermatology', 'Second Floor'),
('ENT', 'First Floor'),
('Ophthalmology', 'Third Floor'),
('Psychiatry', 'Fourth Floor'),
('Oncology', 'Fifth Floor');

select * from departments;

-----------------------------------------------------------------------------------------------------------------
INSERT INTO doctors
(first_name, last_name, gender, specialization, phone, email, experience_years, department_id)
VALUES
('Rajesh', 'Kumar', 'Male', 'Cardiologist', '9876500001', 'rajesh@hospital.com', 12, 1),
('Priya', 'Sharma', 'Female', 'Neurologist', '9876500002', 'priya@hospital.com', 10, 2),
('Arun', 'Reddy', 'Male', 'Orthopedic Surgeon', '9876500003', 'arun@hospital.com', 8, 3),
('Sneha', 'Patel', 'Female', 'Pediatrician', '9876500004', 'sneha@hospital.com', 6, 4),
('Vikram', 'Singh', 'Male', 'General Physician', '9876500005', 'vikram@hospital.com', 15, 5),
('Anjali', 'Verma', 'Female', 'Dermatologist', '9876500006', 'anjali@hospital.com', 9, 6),
('Kiran', 'Naidu', 'Male', 'ENT Specialist', '9876500007', 'kiran@hospital.com', 11, 7),
('Meena', 'Rao', 'Female', 'Ophthalmologist', '9876500008', 'meena@hospital.com', 7, 8),
('Rohit', 'Mehta', 'Male', 'Psychiatrist', '9876500009', 'rohit@hospital.com', 13, 9),
('Pooja', 'Iyer', 'Female', 'Oncologist', '9876500010', 'pooja@hospital.com', 14, 10),
('Suresh', 'Babu', 'Male', 'Cardiologist', '9876500011', 'suresh@hospital.com', 5, 1),
('Divya', 'Nair', 'Female', 'Neurologist', '9876500012', 'divya@hospital.com', 4, 2),
('Harish', 'Yadav', 'Male', 'Orthopedic Surgeon', '9876500013', 'harish@hospital.com', 9, 3),
('Keerthi', 'Rani', 'Female', 'Pediatrician', '9876500014', 'keerthi@hospital.com', 8, 4),
('Ajay', 'Das', 'Male', 'General Physician', '9876500015', 'ajay@hospital.com', 10, 5),
('Lavanya', 'Joshi', 'Female', 'Dermatologist', '9876500016', 'lavanya@hospital.com', 6, 6),
('Mahesh', 'Gupta', 'Male', 'ENT Specialist', '9876500017', 'mahesh@hospital.com', 12, 7),
('Neha', 'Kapoor', 'Female', 'Ophthalmologist', '9876500018', 'neha@hospital.com', 5, 8),
('Ramesh', 'Chowdary', 'Male', 'Psychiatrist', '9876500019', 'ramesh@hospital.com', 11, 9),
('Swathi', 'Mohan', 'Female', 'Oncologist', '9876500020', 'swathi@hospital.com', 9, 10);

select * from doctors;
-----------------------------------------------------------------------------------------------------------------
INSERT INTO patients
(first_name, last_name, gender, dob, blood_group, phone, email, address, emergency_contact)
VALUES
('Ravi','Kumar','Male','2001-08-15','O+','9000000001','ravi@gmail.com','Vijayawada','9000011111'),
('Sita','Devi','Female','1998-05-20','A+','9000000002','sita@gmail.com','Guntur','9000011112'),
('Rahul','Reddy','Male','1995-02-11','B+','9000000003','rahul@gmail.com','Hyderabad','9000011113'),
('Anitha','Rao','Female','2000-09-18','AB+','9000000004','anitha@gmail.com','Visakhapatnam','9000011114'),
('Kiran','Naidu','Male','1992-12-30','O-','9000000005','kiran@gmail.com','Tirupati','9000011115'),
('Pooja','Sharma','Female','1999-01-05','A-','9000000006','pooja@gmail.com','Nellore','9000011116'),
('Arjun','Varma','Male','1997-07-14','B-','9000000007','arjun@gmail.com','Kakinada','9000011117'),
('Meena','Patel','Female','2002-03-09','O+','9000000008','meena@gmail.com','Rajahmundry','9000011118'),
('Suresh','Babu','Male','1990-10-25','AB-','9000000009','suresh@gmail.com','Ongole','9000011119'),
('Lakshmi','Iyer','Female','1996-06-12','A+','9000000010','lakshmi@gmail.com','Eluru','9000011120'),
('Nikhil','Rao','Male','1998-04-10','B+','9000000011','nikhil@gmail.com','Vijayawada','9000011121'),
('Deepika','Reddy','Female','1994-07-22','O+','9000000012','deepika@gmail.com','Guntur','9000011122'),
('Sai','Krishna','Male','2001-01-18','A+','9000000013','saikrishna@gmail.com','Tenali','9000011123'),
('Bhavya','Naidu','Female','1999-11-05','AB+','9000000014','bhavya@gmail.com','Nellore','9000011124'),
('Praveen','Kumar','Male','1993-09-30','O-','9000000015','praveen@gmail.com','Kurnool','9000011125'),
('Harika','Mohan','Female','1997-12-14','B-','9000000016','harika@gmail.com','Eluru','9000011126'),
('Manoj','Varma','Male','1995-06-28','A-','9000000017','manoj@gmail.com','Rajahmundry','9000011127'),
('Keerthana','Sai','Female','2000-08-08','O+','9000000018','keerthana@gmail.com','Vizianagaram','9000011128'),
('Vamsi','Teja','Male','1996-03-19','AB-','9000000019','vamsi@gmail.com','Anantapur','9000011129'),
('Anusha','Devi','Female','1998-10-11','B+','9000000020','anusha@gmail.com','Kadapa','9000011130'),
('Karthik','Reddy','Male','1992-02-16','O+','9000000021','karthik@gmail.com','Ongole','9000011131'),
('Sindhu','Priya','Female','1999-05-09','A+','9000000022','sindhu@gmail.com','Machilipatnam','9000011132'),
('Abhishek','Yadav','Male','1991-07-01','B+','9000000023','abhishek@gmail.com','Bhimavaram','9000011133'),
('Navya','Lakshmi','Female','2002-04-25','O-','9000000024','navya@gmail.com','Srikakulam','9000011134'),
('Rakesh','Chowdary','Male','1994-11-13','AB+','9000000025','rakesh@gmail.com','Nandyal','9000011135'),
('Tejaswini','Rani','Female','1996-09-17','A-','9000000026','tejaswini@gmail.com','Amalapuram','9000011136'),
('Madhav','Sharma','Male','1990-12-03','O+','9000000027','madhav@gmail.com','Tadepalligudem','9000011137'),
('Pavani','Rao','Female','1997-06-20','B-','9000000028','pavani@gmail.com','Chittoor','9000011138'),
('Lokesh','Babu','Male','2001-01-27','A+','9000000029','lokesh@gmail.com','Proddatur','9000011139'),
('Snehal','Patil','Female','1995-08-15','O+','9000000030','snehal@gmail.com','Kakinada','9000011140');

select* from patients;
-----------------------------------------------------------------------------------------------------------------
INSERT INTO appointments
(patient_id, doctor_id, appointment_date, appointment_time, reason, status)
VALUES
(1,1,'2026-06-24','09:00','Chest Pain','Completed'),
(2,2,'2026-06-24','09:30','Migraine','Completed'),
(3,3,'2026-06-24','10:00','Knee Pain','Scheduled'),
(4,4,'2026-06-24','10:30','Fever','Completed'),
(5,5,'2026-06-24','11:00','Diabetes Checkup','Scheduled'),
(6,6,'2026-06-24','11:30','Skin Allergy','Completed'),
(7,7,'2026-06-24','12:00','Ear Infection','Completed'),
(8,8,'2026-06-24','12:30','Eye Checkup','Scheduled'),
(9,9,'2026-06-24','14:00','Stress & Anxiety','Completed'),
(10,10,'2026-06-24','14:30','Cancer Consultation','Scheduled'),

(11,1,'2026-06-25','09:00','High Blood Pressure','Completed'),
(12,2,'2026-06-25','09:30','Severe Headache','Completed'),
(13,3,'2026-06-25','10:00','Back Pain','Scheduled'),
(14,4,'2026-06-25','10:30','Child Vaccination','Completed'),
(15,5,'2026-06-25','11:00','Thyroid Checkup','Completed'),
(16,6,'2026-06-25','11:30','Skin Rash','Scheduled'),
(17,7,'2026-06-25','12:00','Hearing Problem','Completed'),
(18,8,'2026-06-25','12:30','Blurred Vision','Completed'),
(19,9,'2026-06-25','14:00','Depression','Scheduled'),
(20,10,'2026-06-25','14:30','Tumor Follow-up','Completed'),

(21,1,'2026-06-26','09:00','Heart Checkup','Scheduled'),
(22,2,'2026-06-26','09:30','Dizziness','Completed'),
(23,3,'2026-06-26','10:00','Shoulder Pain','Completed'),
(24,4,'2026-06-26','10:30','Viral Fever','Scheduled'),
(25,5,'2026-06-26','11:00','Routine Health Check','Completed'),
(26,6,'2026-06-26','11:30','Acne Treatment','Completed'),
(27,7,'2026-06-26','12:00','Ear Pain','Scheduled'),
(28,8,'2026-06-26','12:30','Eye Infection','Completed'),
(29,9,'2026-06-26','14:00','Sleep Disorder','Completed'),
(30,10,'2026-06-26','14:30','Chemotherapy Review','Scheduled');

select* from appointments

----------------------------------------------------------------------------------------------------------------
INSERT INTO medicines
(medicine_name, manufacturer, medicine_type, price, stock_quantity, expiry_date)
VALUES
('Paracetamol 500mg','Sun Pharma','Tablet',25.00,200,'2028-12-31'),
('Dolo 650','Micro Labs','Tablet',35.00,180,'2028-11-30'),
('Azithromycin 500','Cipla','Tablet',120.00,150,'2028-09-15'),
('Amoxicillin 500','Mankind','Capsule',95.00,140,'2028-10-20'),
('Cetirizine','Dr. Reddy''s','Tablet',40.00,220,'2028-08-10'),
('Pantoprazole','Sun Pharma','Tablet',85.00,170,'2028-07-18'),
('Omeprazole','Cipla','Capsule',75.00,160,'2028-09-25'),
('Metformin 500','Abbott','Tablet',60.00,250,'2029-01-12'),
('Amlodipine 5mg','Torrent','Tablet',90.00,130,'2028-05-28'),
('Atorvastatin 10mg','Lupin','Tablet',110.00,145,'2028-06-30'),
('Crocin Syrup','GSK','Syrup',70.00,90,'2028-12-20'),
('Benadryl','Johnson & Johnson','Syrup',95.00,80,'2028-10-10'),
('ORS Powder','FDC','Powder',25.00,300,'2029-02-15'),
('Vitamin C','Himalaya','Tablet',150.00,120,'2029-03-01'),
('Calcium Tablets','Cipla','Tablet',180.00,110,'2028-11-05'),
('Insulin','Novo Nordisk','Injection',550.00,60,'2027-12-31'),
('Diclofenac Gel','Volini','Gel',140.00,75,'2028-08-22'),
('Volini Spray','Sun Pharma','Spray',220.00,65,'2028-09-18'),
('Eye Drops','Allergan','Drops',130.00,95,'2028-10-08'),
('Ear Drops','Cipla','Drops',115.00,85,'2028-07-27'),
('Cough Syrup','Dabur','Syrup',90.00,100,'2028-12-15'),
('Ibuprofen 400','Abbott','Tablet',55.00,210,'2028-09-09'),
('Montelukast','Lupin','Tablet',145.00,115,'2028-08-19'),
('Rantac','JB Chemicals','Tablet',65.00,180,'2028-06-14'),
('Antacid Syrup','Gelusil','Syrup',85.00,130,'2028-11-22'),
('Vitamin D3','Mankind','Capsule',175.00,105,'2029-01-25'),
('Iron Tablets','Cipla','Tablet',95.00,150,'2028-10-17'),
('Zinc Tablets','Sun Pharma','Tablet',125.00,140,'2028-12-28'),
('Multivitamin','Revital','Capsule',210.00,90,'2029-02-08'),
('Pain Relief Spray','Moov','Spray',180.00,70,'2028-09-30');

 select* from medicines;
-----------------------------------------------------------------------------------------------------------------
INSERT INTO prescriptions
(appointment_id, medicine_id, dosage, frequency, duration, instructions)
VALUES
(1,1,'1 Tablet','Twice a day','5 Days','After food'),
(2,2,'1 Tablet','Once a day','3 Days','After breakfast'),
(3,17,'Apply','Twice a day','7 Days','Apply on affected area'),
(4,11,'10 ml','Three times a day','5 Days','Shake well before use'),
(5,8,'1 Tablet','Twice a day','30 Days','Before food'),
(6,5,'1 Tablet','Once a day','5 Days','At night'),
(7,20,'3 Drops','Twice a day','7 Days','Use in affected ear'),
(8,19,'2 Drops','Twice a day','10 Days','Use in both eyes'),
(9,14,'1 Tablet','Once a day','30 Days','After lunch'),
(10,16,'10 Units','Once a day','30 Days','Inject before breakfast'),

(11,9,'1 Tablet','Once a day','30 Days','Morning'),
(12,22,'1 Tablet','Twice a day','5 Days','After food'),
(13,30,'Spray','Three times a day','7 Days','On painful area'),
(14,13,'1 Sachet','Twice a day','3 Days','Mix with water'),
(15,26,'1 Capsule','Once a week','8 Weeks','After dinner'),
(16,17,'Apply','Twice a day','10 Days','External use only'),
(17,20,'2 Drops','Twice a day','5 Days','Keep head tilted'),
(18,19,'2 Drops','Three times a day','7 Days','Avoid touching dropper'),
(19,29,'1 Capsule','Once a day','30 Days','Morning'),
(20,16,'15 Units','Once a day','60 Days','Inject before dinner'),

(21,10,'1 Tablet','Once a day','30 Days','At bedtime'),
(22,2,'1 Tablet','Twice a day','5 Days','After meals'),
(23,18,'Spray','Twice a day','7 Days','Shake before use'),
(24,21,'10 ml','Three times a day','5 Days','After food'),
(25,15,'1 Tablet','Once a day','60 Days','Morning'),
(26,5,'1 Tablet','Once a day','7 Days','Night'),
(27,20,'3 Drops','Twice a day','5 Days','Do not insert cotton'),
(28,19,'2 Drops','Twice a day','10 Days','Wash hands before use'),
(29,23,'1 Tablet','Once a day','30 Days','Before sleeping'),
(30,16,'20 Units','Once a day','90 Days','Keep refrigerated');

select* from  prescriptions;

------------------------------------------------------------------------------------------------------------------
INSERT INTO billing
(appointment_id, consultation_fee, medicine_charge, test_charge, total_amount, payment_status)
VALUES
(1,500,250,300,1050,'Paid'),
(2,500,150,0,650,'Paid'),
(3,600,350,500,1450,'Pending'),
(4,400,120,0,520,'Paid'),
(5,700,450,300,1450,'Pending'),
(6,500,200,0,700,'Paid'),
(7,450,180,0,630,'Paid'),
(8,600,220,400,1220,'Pending'),
(9,800,300,500,1600,'Paid'),
(10,1000,700,1000,2700,'Pending'),
(11,500,150,0,650,'Paid'),
(12,500,180,300,980,'Paid'),
(13,600,250,0,850,'Pending'),
(14,450,120,0,570,'Paid'),
(15,700,350,500,1550,'Paid'),
(16,500,220,0,720,'Pending'),
(17,450,170,0,620,'Paid'),
(18,600,250,300,1150,'Paid'),
(19,800,400,600,1800,'Pending'),
(20,1000,650,1200,2850,'Paid'),
(21,500,180,0,680,'Pending'),
(22,500,160,200,860,'Paid'),
(23,600,300,0,900,'Paid'),
(24,450,140,0,590,'Pending'),
(25,700,420,300,1420,'Paid'),
(26,500,180,0,680,'Paid'),
(27,450,160,0,610,'Pending'),
(28,600,250,400,1250,'Paid'),
(29,800,350,500,1650,'Paid'),
(30,1000,800,1000,2800,'Pending');

select * from billing