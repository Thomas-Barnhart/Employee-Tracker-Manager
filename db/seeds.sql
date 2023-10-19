USE employee

-- Insert department names into the 'department' table
INSERT INTO department (department_name)
VALUES
("Sales"), -- Sales department
("Engineering"), -- Engineering department
("Finance"), -- Finance department
("Legal"); -- Legal department

-- Insert role information into the 'role' table
INSERT INTO role (title, salary, department_id)
VALUES
("Sales Lead", 100000.00, 1), -- Sales Lead role
("Salesperson", 80000.00, 1), -- Salesperson role
("Lead Engineer", 150000.00, 2), -- Lead Engineer role
("Software Engineer", 120000.00, 2), -- Software Engineer role
("Account Manager", 160000.00, 3), -- Account Manager role
("Accountant", 125000.00, 3), -- Accountant role
("Legal Team Lead", 250000.00, 4), -- Legal Team Lead role
("Lawyer", 190000.00, 4); -- Lawyer role

-- Insert employee information into the 'employee' table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
("Luke", "Skywalker", 1, null), -- Luke Skywalker
("Han", "Solo", 2, 1), -- Han Solo
("Leia", "Organa", 3, null), -- Leia Organa
("Obi-Wan", "Kenobi", 4, 2), -- Obi-Wan Kenobi
("Darth", "Vader", 5, null), -- Darth Vader
("Yoda", "Yoda", 6, 3), -- Yoda
("Anakin", "Skywalker", 7, null), -- Anakin Skywalker
("Boba", "Fett", 8, 4); -- Boba Fett