-- Insert
INSERT INTO thn_employee (emp_id, name, position, salary, updated_at)
VALUES (101, 'John Doe', 'DBA', 6000, SYSDATE);

-- View audit
SELECT * FROM thn_employee_audit;
