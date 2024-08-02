-- Listar registros de uma tebal 
SELECT Fname, Lname FROM EMPLOYEE;

-- Research (count = 4)
SELECT COUNT(*) 
FROM EMPLOYEE
WHERE Dno = (SELECT Dnumber FROM DEPARTMENT WHERE Dname = 'Research');

-- Create datascience
INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date) 
VALUES ('Datascience', 7, '888665555', '2024-08-02');
SELECT * FROM DEPARTMENT;

-- Inserindo 2 cientistas de dados
INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) 
VALUES 
('Alice', 'B', 'Johnson', '123123123', '1990-02-15', '123 Data St, SF CA', 'F', 70000, NULL, 7),
('Bob', 'C', 'Smith', '124124124', '1988-05-22', '456 Learning Ave, SF CA', 'M', 75000, NULL, 7);

-- Aumento de salário
UPDATE EMPLOYEE 
SET Salary = Salary * 1.135;

-- Mudando o endereço
UPDATE EMPLOYEE 
SET Address = 'Itapajé, CE' 
WHERE Dno = (SELECT Dnumber FROM DEPARTMENT WHERE Dname = 'Administration');
