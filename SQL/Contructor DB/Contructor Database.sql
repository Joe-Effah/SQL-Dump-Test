
-- 1. CONTRACTORS USER ACCOUNTS
--
-- 2. JOB DATA

CREATE DATABASE  CONTRACTOR_DATABASE;
GO

USE CONTRACTOR_DATABASE;
GO


CREATE TABLE CONTRACTOR_USER_ACCOUNT
(
   USER_ACCOUNT_ID VARCHAR(14) PRIMARY KEY,
   USER_FULL_NAME VARCHAR(255),
   USER_TELEPHONE VARCHAR(255),
   USER_EMAIL VARCHAR(255),
   USER_DESC VARCHAR(255),
   USER_PHOTO VARBINARY(MAX),
   USER_PASSWORD VARCHAR(255),
);
GO

CREATE TABLE JOB_CONTRACT_DATA
(
   JOB_ID VARCHAR(255) PRIMARY KEY,
   JOB_POSTED_USER VARCHAR(255),
   JOB_POSTED_USER_ID VARCHAR(255),  -- Refrence the user accoutn ID
   JOB_POSTED_DATE DATETIME,
   JOB_TYPE VARCHAR(255),
   JOB_DESC VARCHAR(255),
   JOB_LEVEL VARCHAR(255),
   JOB_PHOTO VARBINARY(MAX),
);
GO

CREATE TABLE JOB_PROPOSAL
(
    JOB_ID VARCHAR(255) ,
    JOB_OWNER_ID VARCHAR(255),
    JOB_PROPOSAL_ID VARCHAR(255) PRIMARY KEY,
    JOB_PROPOSED_USER_ID VARCHAR(255),
    JOB_PROPOSED_USER_MESSAGE VARCHAR(255)
);
GO



CREATE TABLE JOB_CONTRACT_STATUS
(
    JOB_ID VARCHAR(255) PRIMARY KEY ,
    JOB_PROPOSAL_ID VARCHAR(255),
   JOB_GRANTED_USER_ID VARCHAR(255) ,
   JOB_GRANTED_STATE VARCHAR,
   JOB_GRANTED_MESSAGE VARCHAR(255),
   JOB_POSTED DATETIME,
);
GO


INSERT INTO CONTRACTOR_USER_ACCOUNT(USER_ACCOUNT_ID, USER_FULL_NAME, USER_TELEPHONE, USER_EMAIL, USER_DESC, USER_PHOTO, USER_PASSWORD) VALUES ();






SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
GO

SELECT  CONTRACTOR_USER_ACCOUNT.USER_PASSWORD, JOB_PROPOSAL.JOB_PROPOSED_USER_MESSAGE FROM CONTRACTOR_USER_ACCOUNT RIGHT JOIN  JOB_PROPOSAL
    ON USER_ACCOUNT_ID = JOB_PROPOSED_USER_ID WHERE USER_ACCOUNT_ID  = 'User-ID-17';

SELECT USER_ACCOUNT_ID ,USER_FULL_NAME ,USER_PASSWORD,USER_PHOTO FROM
                    CONTRACTOR_USER_ACCOUNT WHERE USER_FULL_NAME = 'Jame' AND USER_PASSWORD ='23sa42-f';


SELECT [CONTRACTOR_USER_ACCOUNT].[USER_ACCOUNT_ID],[CONTRACTOR_USER_ACCOUNT]. [USER_TELEPHONE] ,[CONTRACTOR_USER_ACCOUNT].[USER_EMAIL] ,[CONTRACTOR_USER_ACCOUNT].[USER_PHOTO],[JOB_PROPOSAL].[JOB_PROPOSED_USER_MESSAGE], [JOB_PROPOSAL].[JOB_PROPOSAL_ID] FROM CONTRACTOR_USER_ACCOUNT  INNER JOIN JOB_PROPOSAL  ON CONTRACTOR_USER_ACCOUNT.USER_ACCOUNT_ID = JOB_PROPOSAL.JOB_PROPOSED_USER_ID WHERE USER_ACCOUNT_ID = 'User-ID-17';



INSERT INTO JOB_CONTRACT_DATA(JOB_ID, JOB_POSTED_USER, JOB_POSTED_USER_ID, JOB_POSTED_DATE, JOB_TYPE, JOB_DESC, JOB_LEVEL, JOB_PHOTO) VALUES ()

INSERT INTO JOB_PROPOSAL(JOB_ID, JOB_OWNER_ID, JOB_PROPOSAL_ID, JOB_PROPOSED_USER_ID, JOB_PROPOSED_USER_MESSAGE) VALUES ()


SELECT [JOB_PROPOSAL].[JOB_PROPOSAL_ID],[JOB_PROPOSAL].[JOB_PROPOSED_USER_MESSAGE],[JOB_CONTRACT_DATA].[JOB_ID],[JOB_CONTRACT_DATA].[JOB_POSTED_USER],[JOB_CONTRACT_DATA].[JOB_POSTED_DATE],[JOB_CONTRACT_DATA].[JOB_TYPE],[JOB_CONTRACT_DATA].[JOB_DESC],[JOB_CONTRACT_DATA].[JOB_LEVEL],[JOB_CONTRACT_DATA].[JOB_PHOTO],[JOB_GRANTED_USER_ID],[JOB_GRANTED_STATE],[JOB_GRANTED_MESSAGE],[JOB_POSTED] FROM JOB_PROPOSAL INNER JOIN JOB_CONTRACT_DATA INNER JOIN JOB_CONTRACT_STATUS JCS on JOB_CONTRACT_DATA.JOB_ID = JCS.JOB_ID ON JOB_PROPOSAL.JOB_ID = JOB_CONTRACT_DATA.JOB_ID WHERE JOB_PROPOSAL.JOB_PROPOSED_USER_ID = 'User-ID-727';