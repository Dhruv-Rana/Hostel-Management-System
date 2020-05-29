CREATE OR REPLACE TRIGGER insert_data_into_room
AFTER INSERT ON STUDENT
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
tot_rooms NUMBER;
BEGIN
SELECT COUNT(*) INTO tot_rooms
FROM ROOM;
tot_rooms:=tot_rooms+1;
INSERT INTO ROOM VALUES(tot_rooms,:NEW.ID,:NEW.HOSTEL_ID);
END;
