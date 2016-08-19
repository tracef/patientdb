USE PATIENTDB;

DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS medication;
DROP TABLE IF EXISTS vitalsigns;
DROP TABLE IF EXISTS encounters;
DROP TABLE IF EXISTS labs;

CREATE TABLE patients (
PATIENTID SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
MEDRECORDNUM BIGINT(10),
ALTRECORDNUM BIGINT(10),
LASTNAME VARCHAR(20),
FIRSTNAME VARCHAR(15),
MIDDLEINIT VARCHAR(1),
ADDRESS VARCHAR(30),
CITY VARCHAR(25),
STATE VARCHAR(2),
ZIP_CODE VARCHAR(10),
GENDER VARCHAR(6),
BIRTH_DATE VARCHAR(10),
HOMEPHONE VARCHAR(12),
WORKPHONE VARCHAR(12),
EMAIL VARCHAR(32),
NEXTOFKIN VARCHAR(36),
NEXTOFKINCONTACTINFO VARCHAR(255),
GENERALNOTES VARCHAR(255));

CREATE TABLE medication (
PATIENTID SMALLINT,
MEDICATIONID BIGINT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
MEDNAME VARCHAR(20),
DOSAGE VARCHAR(15),
DOSAGEUNITS VARCHAR(15),
DOSAGEFREQUENCY VARCHAR(30),
MEDSTARTDATE VARCHAR(25),
MEDENDDATE VARCHAR(10),
INSTRUCTIONS VARCHAR(63),
PRESCRIBEDBY VARCHAR(20));

CREATE TABLE vitalsigns (
PATIENTID SMALLINT,
VITALSIGNSID BIGINT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
HEIGHT VARCHAR(10),
WEIGHT VARCHAR(10),
HEARTRATE VARCHAR(10),
BLOODPRESSURE VARCHAR(15),
TEMPERATURE VARCHAR(10),
DATENTIME VARCHAR(15),
PREVVITALSIGNS VARCHAR(255));

CREATE TABLE encounters (
PATIENTID SMALLINT,
ENCOUNTERID BIGINT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
ENCOUNTERDATE VARCHAR(25),
ENCOUNTERTYPE VARCHAR(10),
ENCOUNTERNOTES VARCHAR(255),
DIAGNOSISDESCRIPTION VARCHAR(255),
HEALTHCAREPROVIDER VARCHAR(30));

CREATE TABLE labs (
PATIENTID SMALLINT,
LABID BIGINT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
TESTTYPE VARCHAR(15),
TESTDESCRIPTION VARCHAR(255),
TESTRESULTS VARCHAR(255),
DATENTIME VARCHAR(19));



ALTER TABLE patients AUTO_INCREMENT = 1001;

INSERT INTO patients (MEDRECORDNUM, ALTRECORDNUM, LASTNAME, FIRSTNAME, MIDDLEINIT, ADDRESS, CITY, STATE,
 ZIP_CODE, GENDER, BIRTH_DATE, HOMEPHONE, WORKPHONE, EMAIL, NEXTOFKIN, NEXTOFKINCONTACTINFO, GENERALNOTES) 
VALUES ('1010250932', '8754250932', 'Esola', 'Edward', 'E', '224 Oakridge Avenue', 'Valparaiso', 'IN', '46385', 'Male',
 '03-22-1990', '219-462-5492', '219-531-9823', 'eesola@isp.com', 'Cedric Esola', '333-333-3333', 'Healthy');

INSERT INTO patients (MEDRECORDNUM, ALTRECORDNUM, LASTNAME, FIRSTNAME, MIDDLEINIT, ADDRESS, CITY, STATE,
 ZIP_CODE, GENDER, BIRTH_DATE, HOMEPHONE, WORKPHONE, EMAIL, NEXTOFKIN, NEXTOFKINCONTACTINFO, GENERALNOTES)  
VALUES ('1002250933', '8923250933', 'Sullivan', 'Mike', 'H', '7616 Queens Garden', 'Logansport', 'IN', 
'46947', 'Male', '12-08-1982', '219-464-9888', '219-531-3453', 'mhsullivan@hotmail.com', 'Mark Sullivan', '444-444-4444', 'Heart Palpatations/Gout/High Blood Pressure');

INSERT INTO patients (MEDRECORDNUM, ALTRECORDNUM, LASTNAME, FIRSTNAME, MIDDLEINIT, ADDRESS, CITY, STATE,
 ZIP_CODE, GENDER, BIRTH_DATE, HOMEPHONE, WORKPHONE, EMAIL, NEXTOFKIN, NEXTOFKINCONTACTINFO, GENERALNOTES)  
VALUES ('1003350976', '1432888427', 'Jeruzal', 'Mary', 'D', '3447 N. County Rd. 725E', 'Cordova', 'IN',
 '38018', 'Female', '08-08-1973', '219-942-8732', '574-293-9999', 'shananerz@gmail.com', 'Bryce DeRyce', '387-242-5922', 'High Blood Pressure/Alcoholism/Morbid Obesity/Allergic to Penicillin');

INSERT INTO patients (MEDRECORDNUM, ALTRECORDNUM, LASTNAME, FIRSTNAME, MIDDLEINIT, ADDRESS, CITY, STATE,
 ZIP_CODE, GENDER, BIRTH_DATE, HOMEPHONE, WORKPHONE, EMAIL, NEXTOFKIN, NEXTOFKINCONTACTINFO, GENERALNOTES)  
VALUES ('1000000001', '1111111111', 'Bush', 'Bill', 'B', '1015 Barkdull', 'Anderson', 'IN', '46011', 'Male',
'01-01-1916', '219-219-2119', '873-892-1231', 'billiam@aol.com', 'George Bush', '732-234-2342', 'No hips or knees/Fallen and cant get up.');

INSERT INTO patients (MEDRECORDNUM, ALTRECORDNUM, LASTNAME, FIRSTNAME, MIDDLEINIT, ADDRESS, CITY, STATE,
 ZIP_CODE, GENDER, BIRTH_DATE, HOMEPHONE, WORKPHONE, EMAIL, NEXTOFKIN, NEXTOFKINCONTACTINFO, GENERALNOTES)  
VALUES ('3028487431', '7384726374', 'Sullivan', 'Mike', 'D', '6617 Kings Garden', 'Hobard', 'IN', 
'48053', 'Male', '12-08-1992', '921-464-3242', '921-707-3223', 'mdsullivan@web.net', 'Sarah Sullivan', '872-332-1865', 'Allergic to pollen.');

INSERT INTO medication (PATIENTID, MEDICATIONID, MEDNAME, DOSAGE, DOSAGEUNITS, DOSAGEFREQUENCY, MEDSTARTDATE,
MEDENDDATE, INSTRUCTIONS, PRESCRIBEDBY)
VALUES ('1001', '1234567891', 'XANAX XR', '10 mg', 'Pill', 'Twice A Day', '3/27/2015', '4-29-2015', 
'Take by mouth two times a day.', 'Dr. Stefanek');

INSERT INTO medication (PATIENTID, MEDICATIONID, MEDNAME, DOSAGE, DOSAGEUNITS, DOSAGEFREQUENCY, MEDSTARTDATE,
MEDENDDATE, INSTRUCTIONS, PRESCRIBEDBY)
VALUES ('1002', '1234567892', 'Magnesium Sulfate', '2.03 mM/mL', 'Parenteral', 'Once A Week', '3-19-2014', '3-19-2016', 
'Take by mouth two times a day.', 'Dr. Mason');

INSERT INTO medication (PATIENTID, MEDICATIONID, MEDNAME, DOSAGE, DOSAGEUNITS, DOSAGEFREQUENCY, MEDSTARTDATE,
MEDENDDATE, INSTRUCTIONS, PRESCRIBEDBY)
VALUES ('1003', '1234567893', 'Robitussin', '10 mL', 'Liquid Solution', 'Whenever', '9-13-2012', '9-20-2012', 
'Take by mouth when you have a cold.', 'Dr. Stefanek');

INSERT INTO medication (PATIENTID, MEDICATIONID, MEDNAME, DOSAGE, DOSAGEUNITS, DOSAGEFREQUENCY, MEDSTARTDATE,
MEDENDDATE, INSTRUCTIONS, PRESCRIBEDBY)
VALUES ('1004', '1234567894', 'Vicodin', '500 mg', 'Pill', 'Once A Day', '7-03-2014', 'Not Sure', 
'Take by mouth once a day until feeling better', 'Dr. Phillips');

INSERT INTO vitalsigns (PATIENTID, VITALSIGNSID, HEIGHT, WEIGHT, HEARTRATE, BLOODPRESSURE, TEMPERATURE,
DATENTIME)
VALUES ('1001', '6785439281', '72 inches', '164 lbs.', '96 bpm', '140/92 mm Hg', '97.7', '3-31-2014');

INSERT INTO vitalsigns (PATIENTID, VITALSIGNSID, HEIGHT, WEIGHT, HEARTRATE, BLOODPRESSURE, TEMPERATURE,
DATENTIME)
VALUES ('1002', '6785439282', '59 inches', '138 lbs.', '84 bpm', '120/80 mm Hg', '102.8', '11-5-2015');

INSERT INTO vitalsigns (PATIENTID, VITALSIGNSID, HEIGHT, WEIGHT, HEARTRATE, BLOODPRESSURE, TEMPERATURE,
DATENTIME)
VALUES ('1003', '6785439283', '57 inches', '184 lbs.', '66 bpm', '112/72 mm Hg', '97.8', '2-28-2013');

INSERT INTO vitalsigns (PATIENTID, VITALSIGNSID, HEIGHT, WEIGHT, HEARTRATE, BLOODPRESSURE, TEMPERATURE,
DATENTIME)
VALUES ('1004', '6785439284', '80 inches', '251 lbs.', '60 bpm', '118/76 mm Hg', '93.3', '8-12-2012');

ALTER TABLE encounters AUTO_INCREMENT = 7500000001;

INSERT INTO encounters (PATIENTID, ENCOUNTERDATE, ENCOUNTERTYPE, ENCOUNTERNOTES, 
DIAGNOSISDESCRIPTION, HEALTHCAREPROVIDER)
VALUES ('1001', '3-27-2015', 'Short-Stay', 'Needs Xanax to focus.', 'Prescribed', 'IU Health');

INSERT INTO encounters (PATIENTID, ENCOUNTERDATE, ENCOUNTERTYPE, ENCOUNTERNOTES, 
DIAGNOSISDESCRIPTION, HEALTHCAREPROVIDER)
VALUES ('1002', '3-19-2014', 'Outpatient', 'Needs more Magnesium Sulfate', 'Prescribed', 'Valpo Clinic');

INSERT INTO encounters (PATIENTID, ENCOUNTERDATE, ENCOUNTERTYPE, ENCOUNTERNOTES, 
DIAGNOSISDESCRIPTION, HEALTHCAREPROVIDER)
VALUES ('1003', '9-13-2012', 'Emergency', 'Doesn''t realize it''s just a cold.', 'Given', 'IU Health');

INSERT INTO encounters (PATIENTID, ENCOUNTERDATE, ENCOUNTERTYPE, ENCOUNTERNOTES, 
DIAGNOSISDESCRIPTION, HEALTHCAREPROVIDER)
VALUES ('1004', '7-03-2014', 'Inpatient', 'In pain due to lost hips.', 'Prescribed', 'Porter Hospital');

ALTER TABLE labs AUTO_INCREMENT = 1000000001;

INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1001', 'Cholesterol', 'Cholesterol Level Test', 'AB+', '11-23-2014 1:30p.m');
INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1001', 'Urinalysis', 'General Physical Exam', 'All levels normal ', '11-23-2014 12:00p.m');
INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1002', 'Vasectomy', 'Male Birth Control Procedure', 'Successful', '6-07-2015');
INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1002', 'CBC', 'Tested Complete Blood Count', 'Normal Levels', '7-19-2014');
INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1003', 'Endoscopy', 'Tested Internal Organs', 'Working Properly', '2-06-2014');
INSERT INTO labs (PATIENTID, TESTTYPE, TESTDESCRIPTION, TESTRESULTS, DATENTIME)
VALUES ('1004', 'Imaging', 'Looking at lost hips', 'Hips are not there.', '3-29-2014');

COMMIT;