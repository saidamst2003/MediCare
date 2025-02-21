create DATABASE MediCare;
use MediCare;
create table Patient(
idPatient int primary key,
userNamePaient varchar(30) not null,
phoneNumber varchar(30) not null,
EmailPaient varchar(50) NOT NULL
);
create table doctor(
idDoctor int primary key,
doctorFirstName varchar (20),
doctorLastName varchar(20),
speciality varchar (100)
);
drop table Patient;
CREATE TABLE Appointments (
   id INT PRIMARY KEY AUTO_INCREMENT,
    idPatient INT,
    idDoctor INT,
    appointment_date DATE,
    appointment_time VARCHAR(5),
    reason varchar(500),
    status VARCHAR(20),
    FOREIGN KEY (idPatient) REFERENCES Patient(idPatient),
    FOREIGN KEY (idDoctor) REFERENCES doctor(idDoctor)
);
