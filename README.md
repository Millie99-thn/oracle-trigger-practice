# Oracle Trigger Practice: Employee Audit System

This project demonstrates how to use a trigger in Oracle 11g to log INSERT, UPDATE, and DELETE actions on an `employees` table into an audit table using a sequence.

## Structure

- `thn_employees.sql` - Main employee table
- `thn_employee_audit.sql` - Audit log table
- `seq_thn_audit_id.sql` - Sequence for generating audit IDs
- `trg_thn_audit_employees.sql` - Trigger to insert logs into the audit table
