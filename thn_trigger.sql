CREATE OR REPLACE TRIGGER trg_thn_audit_employees
AFTER INSERT OR UPDATE OR DELETE ON thn_employee
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO thn_employee_audit (audit_id, emp_id, action_type, name, position, salary, action_time)
        VALUES (seq_thn_audit_id.NEXTVAL, :NEW.emp_id, 'INSERT', :NEW.name, :NEW.position, :NEW.salary, SYSDATE);

    ELSIF UPDATING THEN
        INSERT INTO thn_employee_audit (audit_id, emp_id, action_type, name, position, salary, action_time)
        VALUES (seq_thn_audit_id.NEXTVAL, :NEW.emp_id, 'UPDATE', :NEW.name, :NEW.position, :NEW.salary, SYSDATE);

    ELSIF DELETING THEN
        INSERT INTO thn_employee_audit (audit_id, emp_id, action_type, name, position, salary, action_time)
        VALUES (seq_thn_audit_id.NEXTVAL, :OLD.emp_id, 'DELETE', :OLD.name, :OLD.position, :OLD.salary, SYSDATE);
    END IF;
END;
