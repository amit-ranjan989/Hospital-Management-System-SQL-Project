-- List all patients with their doctor names
SELECT p.Name AS Patient, d.Name AS Doctor, d.Specialty
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;

-- Total revenue generated
SELECT SUM(Amount) AS TotalRevenue FROM Billing;

-- List of patients with more than one appointment
SELECT PatientID, COUNT(*) AS NumberOfAppointments
FROM Appointments
GROUP BY PatientID
HAVING COUNT(*) > 1;
