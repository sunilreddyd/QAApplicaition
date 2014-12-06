UserDetails
userid, username, firstname, lastname, email, phone_cell, isActive, userpassword, last_modified_by, last_modified_date

UsersActive
useractiveid, userid, username,userpassword

UserGroups
usergroupid, userid, username, groupname





CREATE TABLE UserDetails
(
	userid int NOT NULL PRIMARY KEY,
	username varchar(255) NOT NULL UNIQUE, 
	firstname varchar(255), 
	lastname varchar(255) NOT NULL, 
	email varchar(255), 
	phone_cell number(10),
	isActive varchar(1),
	userpassword varchar(255),
	last_modified_by varchar(255), 
	last_modified_date TIMESTAMP
);

CREATE TABLE UsersActive
(
	useractiveid int NOT NULL PRIMARY KEY,
	userid int,
	username varchar(255),
	userpassword varchar(255),
	CONSTRAINT fk_userid
		FOREIGN KEY (userid)
		REFERENCES UserDetails(userid)
);

CREATE TABLE UserGroups
(
	usergroupid int NOT NULL PRIMARY KEY, 
	userid int,
	username varchar(255), 
	groupname varchar(25),
	CONSTRAINT fk_useridgr
		FOREIGN KEY (userid)
		REFERENCES UserDetails(userid)
);


CREATE SEQUENCE Seq_UserDetails MINVALUE 1 START WITH 1 INCREMENT BY 1 CACHE 10;
CREATE SEQUENCE Seq_UsersActive MINVALUE 1 START WITH 1 INCREMENT BY 1 CACHE 10;
CREATE SEQUENCE Seq_UserGroups MINVALUE 1 START WITH 1 INCREMENT BY 1 CACHE 10;

(new oracle.jbo.server.SequenceImpl("Seq_UserDetails",adf.object.getDBTransaction())).getSequenceNumber()
(new oracle.jbo.server.SequenceImpl("Seq_UsersActive",adf.object.getDBTransaction())).getSequenceNumber()
(new oracle.jbo.server.SequenceImpl("Seq_UserGroups",adf.object.getDBTransaction())).getSequenceNumber()




