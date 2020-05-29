CREATE OR REPLACE FUNCTION total_students_in_a_hostel(hid IN NUMBER)
RETURN NUMBER IS tot_stu NUMBER;
BEGIN
SELECT COUNT(*) INTO tot_stu
FROM STUDENT
WHERE hostel_id=hid;
RETURN tot_stu;
END;
