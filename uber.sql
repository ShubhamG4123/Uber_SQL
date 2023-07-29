DROP DATABASE IF EXISTS Uber;
CREATE DATABASE Uber;
USE Uber;

CREATE TABLE Driver(
    Driver_ID INT,
    Driver_Name VARCHAR(20),
    Driver_Location VARCHAR(20),
    Driver_Ratings VARCHAR(10),
    PRIMARY KEY(Driver_ID)
);

CREATE TABLE Car(
    Car_ID INT,
    Car_Model VARCHAR(20),
    Car_Desc VARCHAR(20),
    PRIMARY KEY(Car_ID)
);

CREATE TABLE Dispatcher(
    Dispatcher_ID INT,
    Dispatcher_USERNAME VARCHAR(20),
    Dispatcher_OTP INT,
    Dispatcher_NAME VARCHAR(20),
    Dispatcher_Location VARCHAR(20),
    PRIMARY KEY(Dispatcher_ID)
);

CREATE TABLE Booking_Transaction(
    Bk_Transaction_ID INT,
    Bk_ClientName VARCHAR(20),
    Bk_Date VARCHAR(10),
    Bk_Time VARCHAR(10),
    PRIMARY KEY(Bk_Transaction_ID),
    Dispatcher_ID INT,
    FOREIGN KEY(Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID),
    Driver_ID INT,
    FOREIGN KEY(Driver_ID) REFERENCES Driver(Driver_ID),
    Car_ID INT,
    FOREIGN KEY(Car_ID) REFERENCES Car(Car_ID)
);

CREATE TABLE Dispatch_Transaction(
    Disp_Transaction_ID INT,
    Disp_ArrivalTime VARCHAR(20),
    Disp_Status VARCHAR(20),
    PRIMARY KEY(Disp_Transaction_ID),
    Bk_Transaction_ID INT,
    FOREIGN KEY(Bk_Transaction_ID) REFERENCES Booking_Transaction(Bk_Transaction_ID),
    Dispatcher_ID INT,
    FOREIGN KEY(Dispatcher_ID) REFERENCES Dispatcher(Dispatcher_ID)
);

INSERT INTO Driver VALUES(1, "Jay Singh","100 feet","3*");
INSERT INTO Driver VALUES(2, "Harshal Singh","Vijaynagar","2.5*");
INSERT INTO Driver VALUES(3, "Shiv Kumar","SFC Mall","3.5*");
INSERT INTO Driver VALUES(4, "Dheeraj Jain","Railway Station","4*");
INSERT INTO Driver VALUES(5, "Yash Jain","Spurti Chowk","5*");
INSERT INTO Driver VALUES(6, "Kabir Singh","Vishrambagh","1*");
INSERT INTO Driver VALUES(7, "Vishal Khatana","Vijaynagar","3*");
INSERT INTO Driver VALUES(8, "Nikhil Gupta","Miraj","2*");
INSERT INTO Driver VALUES(9, "Ujjawal Sharma","Mai Ghat","1*");
INSERT INTO Driver VALUES(10, "Anurag Patil","Vishrambagh","5*");
INSERT INTO Driver VALUES(11, "Akash Chopra","100 feet","4*");
INSERT INTO Driver VALUES(12, "Shahrukh Khan","Spurti Chowk","3*");

INSERT INTO Car VALUES(101, "Swift","4 seater");
INSERT INTO Car VALUES(102, "Swift Desire","4 seater");
INSERT INTO Car VALUES(103, "i10","6 seater");
INSERT INTO Car VALUES(104, "Scorpio","6 seater");
INSERT INTO Car VALUES(105, "Alto","4 seater");
INSERT INTO Car VALUES(106, "Inova i10","5 seater");
INSERT INTO Car VALUES(107, "Swift","3 seater");
INSERT INTO Car VALUES(108, "Baleno","5 seater");
INSERT INTO Car VALUES(109, "Scorpio","6 seater");
INSERT INTO Car VALUES(100, "Verna","4 seater");
INSERT INTO Car VALUES(111, "Ciaz","4 seater");
INSERT INTO Car VALUES(112, "Baleno","5 seater");

INSERT INTO Dispatcher VALUES(1, "Shubs",1011,"Shubham","Vishrambagh");
INSERT INTO Dispatcher VALUES(2, "LuvR1",2352,"Lovely","100 feet");
INSERT INTO Dispatcher VALUES(3, "K11",2355,"Karan","Vijaynagar");
INSERT INTO Dispatcher VALUES(4, "Mars32",4563,"Mahesh","Railway Station");
INSERT INTO Dispatcher VALUES(5, "Iam6",9800,"Dipeeka","Vijaynagar");
INSERT INTO Dispatcher VALUES(6, "TY21",6942,"Tanya","Spurti Chowk");
INSERT INTO Dispatcher VALUES(7, "Gsd0",3211,"Ganesh","Miraj");
INSERT INTO Dispatcher VALUES(8, "Ss77",1437,"Sakshi","Vishrambagh");

INSERT INTO Booking_Transaction VALUES(1,"Vinit Sharma","30-09-2022","5:00 pm",8,6,106);
INSERT INTO Booking_Transaction VALUES(2,"Krishna Mali","22-09-2022","2:30 pm",7,8,108);
INSERT INTO Booking_Transaction VALUES(3,"Shubham Garad","10-07-2022","1:45 pm",1,6,106);
INSERT INTO Booking_Transaction VALUES(4,"Mayur Patil","28-08-2022","6:00 pm",6,12,112);
INSERT INTO Booking_Transaction VALUES(5,"Sheetal Patil","21-09-2022","10:00 am",5,7,107);
INSERT INTO Booking_Transaction VALUES(6,"Akash Bhosale","19-08-2022","11:00 am",3,2,102);
INSERT INTO Booking_Transaction VALUES(7,"Naveen Bhosale","17-08-2022","1:00 pm",2,1,101);
INSERT INTO Booking_Transaction VALUES(8,"Surbhi Shahu","19-09-2022","12:30 pm",4,4,104);

INSERT INTO Dispatch_Transaction VALUES(101,"4:45 pm","4 person",1,8);
INSERT INTO Dispatch_Transaction VALUES(102,"1:00 pm","2 person",2,7);
INSERT INTO Dispatch_Transaction VALUES(103,"11:00 am","1 person",3,1);
INSERT INTO Dispatch_Transaction VALUES(104,"10:20 am","1 person",4,6);
INSERT INTO Dispatch_Transaction VALUES(105,"8:30 pm","2 person",5,5);
INSERT INTO Dispatch_Transaction VALUES(106,"9:00 pm","3 person",6,3);
INSERT INTO Dispatch_Transaction VALUES(107,"12:40 am","3 person",7,2);
INSERT INTO Dispatch_Transaction VALUES(108,"11:00 am","2 person",8,4);

