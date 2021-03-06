CREATE OR REPLACE TRIGGER delete_room
AFTER DELETE ON STUDENT
FOR EACH ROW
WHEN (OLD.ID > 0)
BEGIN
DELETE FROM ROOM
WHERE STUDENT_ID=:OLD.ID;
END;
