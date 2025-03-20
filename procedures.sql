-- Stored Procedure to calculate total bill for a patient
DELIMITER //
CREATE PROCEDURE GetTotalBill(IN pid INT)
BEGIN
    SELECT SUM(Amount) AS TotalBill FROM Billing WHERE PatientID = pid;
END;
//
DELIMITER ;

-- Trigger to auto-insert billing on new appointment (for demo)
DELIMITER //
CREATE TRIGGER AutoBilling
AFTER INSERT ON Appointments
FOR EACH ROW
BEGIN
    INSERT INTO Billing (PatientID, Amount, BillingDate)
    VALUES (NEW.PatientID, 200.00, CURDATE());
END;
//
DELIMITER ;

-- View to show patient and their bills
CREATE VIEW PatientBills AS
SELECT p.Name, b.Amount, b.BillingDate
FROM Billing b
JOIN Patients p ON b.PatientID = p.PatientID;
