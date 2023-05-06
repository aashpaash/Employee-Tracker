

INSERT INTO department (name)
VALUES ('DEI'), ('TECH'), ('OUTREACH');

INSERT INTO role (title, department_id, salary)
VALUES ('Manager', 106000, 1), ('CEO', 200000,1),('Administrator', 85000, 2), ('Scribe', 75000, 2)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES (
    'LB', 'EZ', 1, NULL
    ),
    (
        'TT', 'LaLa', 2,1
    ),
    (
        'DD', 'Q', 3, 1
    ),
    (
        'JJ', 'NiNi', 4, 3
    ),
    (
        'Yaya' , 'Le', 5, NULL
    ),
    (
        'BB', 'KiKi', 6, 5
    ),
    (
        'CC', 'ZZ', 7, NULL
    ),
    (
        'KK', 'L', 8, 6
    ),

