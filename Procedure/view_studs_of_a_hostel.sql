CREATE OR REPLACE PROCEDURE view_all_students_of_a_hostel(hid IN NUMBER)
AS
BEGIN
FOR TUPLE IN (SELECT * FROM STUDENT) LOOP
IF TUPLE.hostel_id=hid THEN
dbms_output.put_line(TUPLE.ID||' '||TUPLE.fname||' '||TUPLE.lname||'
'||TUPLE.email||' '||TUPLE.dob||' '||TUPLE.hostel_id);
END IF;
END LOOP;
END;
