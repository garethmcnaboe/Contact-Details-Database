/* This is the SQL which I wrote to create and test my database. I am submitting it for completeness.
It does not 'run' as a part of the application.
*/

/*Commands to create the three tables of the database - tested
*/
CREATE TABLE PeopleDetails
(
PersonID INT(11) Auto_Increment NOT NULL,
PersonTitle VARCHAR(80),
PersonFirstName VARCHAR(80) NOT NULL,
PersonSurname VARCHAR(80) NOT NULL,
PersonMobile VARCHAR(80),
PersonEmail VARCHAR(80) NOT NULL,
CONSTRAINT PeopleDetail_pkey PRIMARY KEY (PersonID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE HomeAddress
(
HomeAddID INT(11) Auto_Increment NOT NULL,
HomeAdd1 VARCHAR(80) NOT NULL,
HomeAdd2 VARCHAR(80),
HomeAddTown VARCHAR(80) NOT NULL,
HomeAddCountyorCity VARCHAR(80) NOT NULL,
HomeAddEircode VARCHAR(80) NOT NULL,
ForeignID INT(11) NOT NULL,
CONSTRAINT AddressDetails_pkey PRIMARY KEY(HomeAddID),
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE HomeAddress
ADD CONSTRAINT homeforeign_key
FOREIGN KEY (ForeignID) REFERENCES PeopleDetails(PersonID)
ON Delete CASCADE  
ON Update CASCADE;


CREATE TABLE ShipAddress
(
ShipAddID INT(11) Auto_Increment NOT NULL,
ShipAdd1 VARCHAR(80) NOT NULL,
ShipAdd2 VARCHAR(80),
ShipAddTown VARCHAR(80) NOT NULL,
ShipAddCountyorCity VARCHAR(80) NOT NULL,
ShipAddEircode VARCHAR(80) NOT NULL,
ForeignID INT(11) NOT NULL,
CONSTRAINT ShipAddDetails_pkey PRIMARY KEY(ShipAddID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE ShipAddress
ADD CONSTRAINT shipforeign_key
FOREIGN KEY (ForeignSID) REFERENCES PeopleDetails(PersonID)
ON Delete CASCADE
ON Update CASCADE;

/*Commands to insert test data into the peopledetails table - Tested
*/
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Dave' , 'Whelan', '0876754634', 'davewhelan@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Kevin', 'Moran', '0887897779', 'kevinmoran@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Ms', 'Dervala', 'Morris', '0868379374', 'dervalamorris@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr','Simon', 'Brown', '0875678891', 'simonbrown@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Tony', 'Cascarino', '0879678976', 'tonycascarino@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Shaun', 'Teale', '0867753432', 'shaunteale@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Andy', 'Townsend', '0886756341', 'andytownsend@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Ray', 'Houghton', '0865634978', 'rayhoughton@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Steve', 'Staunton', '0856743568', 'stevestaunton@gmail.com');
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('Mr', 'Paul', 'McGrath', '086798567', 'paulmcgrath@yahoo.com');

/*Commands to insert test data into the homeaddresstable - Tested
*/
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('21 Bayside Walk', 'Bayside', 'Baldoyle', 'Dublin 13', 'D13 7U8J', 1);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('51 Admiral Park' , null, 'Baldoyle', 'Dublin 13', 'D13 8Il0', 2);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('78 Sutton Park' , 'Bayside', 'Sutton', 'Dublin 13', 'D13 9U10', 3);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('67 Iveagh Gardens', null, 'Crumlin', 'Dublin 8', 'D8 8I7U', 4);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('87 Ludford Avenue' , null, 'Ballinteer', 'Dublin 18', 'D18 H7J8',5);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('90 Slademore Avenue' , 'Ard Na Greine', 'Ayrfield', 'Dublin 13', 'D13 I7B8', 6);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('89 Edenmore Drive' , 'Edenmore', 'Raheny', 'Dublin 5', 'D5 J8K9', 7);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('2 Greenwood Road' , null, 'Ayrfield', 'Dublin 13', 'D13 H7K0', 8);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('90 Main Street' , null, 'Tallaght', 'Dublin 24', 'D24 G8M5', 9);
insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('30 Tonlegee Road' , null, 'Raheny', 'Dublin 5', 'D5 IUYT', 10);

/*Commands to insert test data into the shipaddress table - Tested
*/
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('21 Bayside Walk', 'Bayside', 'Baldoyle', 'Dublin 13', 'D13 7U8J', 1);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('51 Admiral Park' , null, 'Baldoyle', 'Dublin 13', 'D13 8Il0', 2);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('78 Sutton Park' , 'Bayside', 'Sutton', 'Dublin 13', 'D13 9U10', 3);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('67 Iveagh Gardens', null, 'Crumlin', 'Dublin 8', 'D8 8I7U', 4);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('87 Ludford Avenue' , null, 'Ballinteer', 'Dublin 18', 'D18 H7J8', 5);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('90 Slademore Avenue' , 'Ard Na Greine', 'Ayrfield', 'Dublin 13', 'D13 I7B8', 6);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('89 Edenmore Drive' , 'Edenmore', 'Raheny', 'Dublin 5', 'D5 J8K9', 7);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('78 Sundrive Road' , 'Sundrive', 'Raheny', 'Dublin 5', 'D5 98KJ', 8);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('10 Elton Drive' , 'Ard Na Greine', ' Ayrfield', 'Dublin 13', 'D13 0ING', 9);
insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID)
values('10 Ayrfield Drive' , null, 'Ayrfield', 'Dublin 13', 'D13 NG5F', 10);

/*Create Commands - based on tested code
*/
insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('value1', 'value2' , 'value3', 'value4', 'value5');

Select PersonID from PeopleDetails 
where PersonTitle = value1 and PersonFirstName = value2 and PersonSurname = value3 and PersonMobile = value4 and PersonEmail = value5;

insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, PersonID)
values('value6', 'value7', 'value8', 'value9', 'value10', 'valuereturnedbySelect');

insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, PersonID)
values('value11' , 'value12', 'value13', 'value14', 'value15', 'valuereturnedbySelect');


/*Retrieve Commands - tested
*/
Select persontitle, personfirstname, personsurname, personmobile, personemail, homeadd1, homeadd2, homeaddtown, 
homeaddcountyorcity, homeaddeircode, shipadd1, shipadd2, shipaddtown, shipaddcountyorcity, shipaddeircode 
from peopledetails, homeaddress, shipaddress
Where peopledetails.personID = homeaddress.personID and peopledetails.personID = shipaddress.personID
and personfirstname = 'Dave' and personSurname = 'Whelan'


/*Update Commands - tested
*/

UPDATE PeopleDetails, HomeAddress set HomeAdd1 = '50 Elton Walk', HomeAdd2 = 'Ard Na Greine', HomeAddTown = 'Ayrfield', 
HomeAddCountyorCity = 'Dublin 13', HomeAddEircode = 'D13 FH89' WHERE PeopleDetails.PersonID = HomeAddress.ForeignID 
And PeopleDetails.PersonFirstName = 'Paul' And PeopleDetails.PersonSurname = 'McGrath' And PeopleDetails.PersonEmail = 
'paulmcgrath@yahoo.com'

UPDATE PeopleDetails, ShipAddress set ShipAdd1 = '50 Elton Walk', ShipAdd2 = 'Ard Na Greine', ShipAddTown = 'Ayrfield', 
ShipAddCountyorCity = 'Dublin 13', ShipAddEircode = 'D13 FH89' WHERE PeopleDetails.PersonID = ShipAddress.ForeignSID 
And PeopleDetails.PersonFirstName = 'Paul' And PeopleDetails.PersonSurname = 'McGrath' And PeopleDetails.PersonEmail = 
'paulmcgrath@yahoo.com'

UPDATE PeopleDetails, set PersonTitle = 'Prof', PersonMobile = "0877777777", PersonEmail = "paul@gmail.com" WHERE
PersonFirstName = 'Paul' and PersonSurname = 'McGrath' and PersonEmail = 'paulmcgrath@yahoo.com'


/*Delete Commands - tested
*/
delete from PeopleDetails Where (PersonFirstName = y and PersonSurname = z and PersonMobile = x and PersonEmail = w)
	
	
