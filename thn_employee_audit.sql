CREATE TABLE thn_employee_audit (
    audit_id      NUMBER PRIMARY KEY,
    emp_id        NUMBER,
    action_type   VARCHAR2(10),
    name          VARCHAR2(100),
    position      VARCHAR2(50),
    salary        NUMBER,
    action_time   DATE
);
