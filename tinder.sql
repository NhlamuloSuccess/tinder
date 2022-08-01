-- Database: TinderDB

-- DROP DATABASE IF EXISTS "TinderDB";

CREATE DATABASE "TinderDB"
   
   create table Professions
   (
   prof_id bigserial,
       profession varchar(50),
       CONSTRAINT prof_key PRIMARY KEY (prof_id),
       CONSTRAINT profession_unique UNIQUE (profession)
   
   );
   insert into Professions(prof_id,profession)
   values(111,'Teacher'),(222,'Nurse'),(333,'Doctor'),(444,'clerk'),(555,'police oficer'),
   (666,'chef'),(777,'Dietician'),(888,'Psycologyist'),(999,'social worker'),(101010,'Mechanic'),(111111,'Engineer'),(121212,'artist'),(131313,'hair dresser'),
   (141414,'optometrist'),(151515,'pedetrician'),(161616,'tv presenter'),(171717,'accountant'),(181818,'driver');
   select*from professions
   
   create table Zip_codes
   (
   
   zip_code bigserial,
       
      city varchar(50),
       province varchar(50),
       CONSTRAINT zip_key PRIMARY KEY (zip_code)
                                     
   
   );
   insert into Zip_codes(zip_code,city,province)
   values(0829,'johannesburg','gauteng'),(0850,'polokwane','limpopo'),(0872,'tzaneen','limpopo'),
   (1829,'klerksdorp','north west'),(1827,'nelspruit','mpumalanga'),(0986,'durban','kzn'),(0851,'mbombela','mpumalanga'),
   (0679,'kroonstad','free state'),(0873,'richards bay','kzn'),(0756,'kimberley','northern cape'),(1818,'upington','northern cape'),
   (1632,'port Elizabeth','Eastern cape'),
   (0001,'pretoria','gauteng'),(0978,'rustenburg','north west'),(0878,'Bloemfontein','free-state'),
   (1634,'stellenbosch','western cape'),
   (0002,'capetown','western cape'),
   (1534,'bisho','Eastern cape')
   
   ;
   
   create table Statuses
   (
   status_id bigserial,
       CONSTRAINT status_key PRIMARY KEY (status_id),
       
       status varchar(50));
       drop table Statuses
   
   insert into Statuses(status_id,status)
   values (1111,'single'),(2222,'complicated'),(3333,'divorced'),(4444,'single'),
   (5555,'married'),(6666,'complicated'),(7777,'single'),(8888,'single'),(9999,'complicated'),
   (10101010,'single'),(11111111,'single'),(12121212,'complicated'),(13131313,'single'),
   (14141414,'married'),(15151515,'single'),(16161616,'single'),(17171717,'married'),(18181818,'single')
   ;
   
   select*from Statuses
   create table My_contacts
   (
   
    contact_id bigserial,
  last_name varchar(50),
  first_name varchar(50),
    phone bigserial,email varchar(50),gender char(2),birthday date,
   
      CONSTRAINT contact_key PRIMARY KEY (contact_id),
    
    zip_code integer REFERENCES Zip_codes (zip_code),
       prof_id integer references Professions(prof_id),
       status_id integer references Statuses(status_id)
   );
   
   insert into My_contacts(contact_id,last_name,first_name,phone,email,gender,birthday,prof_id,zip_code,status_id)
   
values (1,'smith','william',0787576103,'smith@gmail.com','m','1996-01-09',111,0829,1111),
   (2,'khumalo','gift',0657412340,'gift@outloook.com','m','1991-09-12',222,0850,2222),
   (3,'ndhlovu','nhlamulo',0787552341,'nhlamulo@gmail.com','f','1998-09-03',333,0872,3333),
   (4,'lekgeto','lesego',0823467677,'lesego@gmail.com','f','2000-09-11',444,1829,4444),
   (5,'mokwena','lesedi',0642787074,'lesedi@yahoo.com','f','1997-08-08',555,1827,5555),
   (6,'brooks','angel',0840303409,'angel@gmail.com','f','2002-01-01',666,0986,6666),
   (7,'dlamini','mbali',0793747385,'mbali@gmail.com','f','1999-06-07',777,0851,7777),
   (8,'lebea','pertunia',0787441225,'lebea@gmail.com','f','2001-04-10',888,0679,8888),
   (9,'sibaya','muxe',0833451486,'kenny@gmail.com','m','1996-11-09',999,0873,9999),
   (10,'sibiya','thapelo',0632685084,'thapelo@yahoo.com','m','2002-02-03',101010,0756,10101010),
   (11,'matheba','brainy',0786456103,'brainy@gmail.com','m','1995-07-10',111111,1818,11111111),
   (12,'chauke','mable',0716768234,'mable@gmail.com','f','1991-10-05',121212,1632,12121212),
   (13,'maloka','chris',0790303489,'chris@gmail.com','m','1999-12-12',131313,0001,13131313),
   (14,'mashala','tumelo',0643637891,'tumelo@gmail.com','m','2003-05-05',141414,0978,14141414),
   (15,'ramahlo','felicia',0743879001,'felicia@gmail.com','f','1996-07-08',151515,0878,15151515),
   
   (16,'chauke','osesy',0719897123,'osesy@gmail.com','f','1990-12-31',161616,1634,16161616),
   (17,'nkosi','onica',0671274568,'onica@gmail.com','f','1992-10-16',171717,0002,17171717),
   (18,'buthelezi','jabulani',0798761487,'jabulani@yahoo.com','m','1996-08-30',181818,1534,18181818);
   
  select*from my_contacts

   create table Interests
   (
   interest_id bigserial,
       interest varchar(50),
        CONSTRAINT interest_key PRIMARY KEY (interest_id)
   );
   
   insert into Interests(interest_id,interest)
   values (51,'travelling'),(52,'outdoors'),(53,'movies'),(54,'dancing'),(55,'sports'),(56,'beach'),(57,'cooking'),
   (58,'drinking'),(59,'hiking'),(510,'smoking'),(511,'adventure'),(512,'netflix'),(513,'music'),(514,'hunting'),
   (515,'football'),(516,'walks'),
   (517,'animals'),(518,'jokes');
   select*from Interests

   create table Contact_interest
   (
   contact_id integer references My_contacts(contact_id),
       interest_id integer references Interests(interest_id)
   );

insert into Contact_interest(contact_id,interest_id)
values (1,51),(2,52),(3,53),(4,54),(5,55),(6,56),(7,57)
,(8,58),(9,59),(10,510),(11,511),(12,512),(13,513),(14,514),(15,515),(16,516),(17,517),(18,518);



   create table Seekings
   (
   seeking_id bigserial,
       seeking varchar(50),
        CONSTRAINT seeking_key PRIMARY KEY (seeking_id)
   )
   
   insert into Seekings(seeking_id,seeking)
   values(31,'female'),(32,'female'),(33,'both'),(34,'male'),(35,'male'),(36,'male'),(37,'both'),
   (38,'male'),(39,'female'),(310,'male'),(311,'female'),(312,'both'),(313,'male'),(314,'female'),(315,'male'),
   (316,'female'),(317,'both'),(318,'female');
   
   select*from Seekings
   create table Contact_seeking
   (

       contact_id integer references My_contacts(contact_id),
       seeking_id integer references Seekings(seeking_id)
       
   );
drop table contact_seeking
   insert into Contact_seeking(contact_id,seeking_id)
   values(1,31),(2,32),(3,33),(4,34),(5,35),(6,36),(7,37),(8,38),(9,39),
   (10,310),(11,311),(12,312),(13,313),(14,314),(15,315),(16,316),(17,317),(18,318);
   select*from Contact_seeking
   
   
   -----LEFT JOIN----
   select profession,status,city,province
   
   from my_contacts
   
 left join professions
   on my_contacts.prof_id=professions.prof_id
   
   left join Statuses
   on my_contacts.status_id=Statuses.status_id
    left join Zip_codes
   on my_contacts.zip_code=Zip_codes.zip_code
       
       
        
   and
   select interest
   from contact_interest
   left join Interests
   on contact_interest.interest_id=Interests.interest_id
   
   select seeking 
   from contact_seeking
   left join Seekings
   on contact_seeking.seeking_id=Seekings.seeking_id
   
  
   
   
  
   
   
   
   
   
   
   
   
   
   
   