use VehicleReg;
Create table tblLogin
(
username varchar(20) unique,
password varchar(20)
);
Select * from tblLogin;

Create table tblCustomer
(
CID int identity(100,1) primary key,
OwnerName varchar(50),
OwnerCNIC varchar(15) unique,
Phone varchar(20) unique,
VehicleName varchar(70),
EngineNo varchar(50),
ChasisNo varchar(50),
NoPlate varchar(50),
RegFees varchar(50),
);
Select * from tblCustomer;

Create table tblGSM
(
Company varchar(20),
Codes   varchar(5)
);
Insert into tblGSM values ('Ufone GSM','0333');
Insert into tblGSM values ('Telenor GSM','0345');
Insert into tblGSM values ('Mobilink GSM','0300');
Insert into tblGSM values ('PTCL Landline','0213');
Insert into tblGSM values ('Warid GSM','0321');
Insert into tblGSM values ('Zong GSM','0312');
Select * from tblGSM;