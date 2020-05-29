CREATE OR REPLACE PROCEDURE view_all_students
AS
BEGIN
FOR TUPLE IN (SELECT * FROM STUDENT) LOOP
dbms_output.put_line(TUPLE.fname||' '||TUPLE.lname||' '||TUPLE.email||' '||TUPLE.dob||' '||TUPLE.hostel_id);
END LOOP;
END;
