USE hospital_db;

INSERT INTO Patients (Name, Age, Gender, Address, Contact) VALUES
('John Doe', 30, 'Male', '123 Street', '9876543210'),
('Jane Smith', 25, 'Female', '456 Avenue', '9123456780');

INSERT INTO Doctors (Name, Specialty, Contact) VALUES
('Dr. Adams', 'Cardiologist', '9823456789'),
('Dr. Baker', 'Dermatologist', '9898765432');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Purpose) VALUES
(1, 1, '2024-04-01', 'Heart Checkup'),
(2, 2, '2024-04-03', 'Skin Allergy');

INSERT INTO Billing (PatientID, Amount, BillingDate) VALUES
(1, 500.00, '2024-04-02'),
(2, 300.00, '2024-04-04');
