CREATE TABLE STUDENT
(
id NUMBER,
fname VARCHAR(30),
lname VARCHAR(30),
email VARCHAR(50),
dob VARCHAR(10),
hostel_id NUMBER,
number_of_visitors NUMBER,
PRIMARY KEY (id),
FOREIGN KEY (hostel_id) REFERENCES HOSTEL(ID)
);
