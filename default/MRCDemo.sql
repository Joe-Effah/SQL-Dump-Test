USE webmrc;


create table webmrc.company_data
(
    COMPANY_ID             varchar(255)                       not null
        primary key,
    ADMIN_NAME             varchar(40)                        not null,
    ADMIN_EMAIL            varchar(30)                        not null,
    ADMIN_TELEPHONE        varchar(20)                        not null,
    ADMIN_PASSWORD         varchar(20)                        not null,
    COMPANY_NAME           varchar(50)                        not null,
    COMPANY_LICENSE        longblob                           null,
    COMPANY_LICENSE_FORMAT varchar(7)                         null,
    COMPANY_DESC           varchar(400)                       null,
    COMPANY_LOGO           longblob                           null,
    COMPANY_LOGO_FORMAT    varchar(7)                         null,
    DATE_REGISTRATION      datetime default CURRENT_TIMESTAMP not null
);

ALTER TABLE company_data
    ADD  COLUMN COMPANY_TYPE VARCHAR(5);


# ---------------------------------------------------------------------
# CONSTULANT TABLE
CREATE TABLE  WEBMRC.COMPANY_CONSLUTANT(
    COMPANY_ID             varchar(255)   not null,
    CONSULTANT_ID              VARCHAR(255) NOT NULL PRIMARY KEY ,
    CONSULTANT_FULLNAME         varchar(40)     not null,
    CONSULTANT_EMAIL            varchar(30)     not null,
    CONSULTANT_TELEPHONE        varchar(20)     not null,
    CONSULTANT_PASSWORD         varchar(20)     not null,
    CONSULTANT_PHOTO           LONGBLOB     NULL,
    CONSULTANT_PHOTO_TYPE      VARCHAR(14)     NULL,
    DATE_REGISTRATION         DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL
);


# ------------------------------------------------------------













create table webmrc.patient_data
(
    COMPANY_ID                        varchar(255) not null,
    PATIENT_ID                        varchar(255) not null
        primary key,
    PATIENT_FIRSTNAME                 varchar(255) not null,
    PATIENT_LASTNAME                  varchar(255) not null,
    PATIENT_AGE                       int          null,
    PATIENT_TELEPHONE                 varchar(255) null,
    PATIENT_EMAIL                     varchar(255) null,
    PATIENT_DATEOFBIRTH               DATE    null,
    PATIENT_SEX                       varchar(7)   null,
    PATIENT_MEDICAL_HISTORY           varchar(255) null,
    PATIENT_LOCATION                  varchar(255) null
);

ALTER TABLE  patient_data
    ADD COLUMN PATIENT_CARD LONGBLOB;

ALTER TABLE  patient_data
    ADD COLUMN PATIENT_TEXT_MESS LONGBLOB;



# ------------------------------------------------------------------------
# PATIENT SESSION DATA

create table webmrc.patient_health_session
(
    COMPANY_ID             varchar(255) not null,
    PATIENT_ID             varchar(255) not null,
    PATIENT_SESSION_ID     varchar(255) not null
        primary key,
    PATIENT_ALLEGES        varchar(70)  null,
    PATIENT_WEIGHT         float        null,
    PATIENT_HEIGHT         float        null,
    PATIENT_SUGAR_LEVEL    varchar(255) null,
    PATIENT_SYMPTOMS       text         null,
    PATIENT_TEMPERATURE    float        null,
    PATIENT_BLOOD_PRESSURE varchar(20)  null,
    PATIENT_CURRENT_TIME   datetime     null,
    PATIENT_SESSION_DATE DATE,
    PATIENT_ILLNESS JSON,
    PATIENT_NOTES TEXT,
    PATIENT_DIAGNOSIS JSON,
    PATIENT_MEDICATION JSON,
    PATIENT_MEDICAL_HISTORY_FILE LONGBLOB,
    PATIENT_MEDICAL_HISTORY_FILE_TYPE VARCHAR(10)
);

ALTER TABLE  patient_health_session
    MODIFY COLUMN PATIENT_CURRENT_TIME TIME;

ALTER TABLE  webmrc.patient_health_session
    MODIFY COLUMN PATIENT_TEMPERATURE VARCHAR(14);

ALTER TABLE  patient_health_session
        ADD COLUMN  PATIENT_SESSION_DATE DATE;

ALTER TABLE  patient_health_session
        MODIFY COLUMN  PATIENT_ILLNESS JSON;

ALTER TABLE  patient_health_session
        RENAME COLUMN  PATIENT_ILLNESS  TO PATIENT_ILLNESS_SYMPTOMS;


ALTER TABLE  patient_health_session
        ADD COLUMN  PATIENT_NOTES TEXT;

ALTER TABLE  COMPANY_DATA
        ADD COLUMN  ADMIN_USERNAME VARCHAR(50);

ALTER TABLE  patient_health_session
     ADD COLUMN  PATIENT_MEDICATION JSON;

ALTER TABLE  patient_health_session
  RENAME COLUMN  PATIENT_MEDICATION  TO PATIENT_ILLNESS_DIAGNOSES;


ALTER TABLE  patient_health_session
        ADD COLUMN  PATIENT_ILLNESS_MEDICATION JSON;

ALTER TABLE  patient_health_session
        ADD COLUMN PATIENT_MEDICAL_HISTORY_FILE   LONGBLOB;

ALTER TABLE  patient_health_session
        ADD COLUMN  PATIENT_MEDICAL_HISTORY_FILE_TYPE VARCHAR(10) ;



# ---------------------------------------------------------------------------------------

CREATE TABLE COMPANY_MEDICINAL_DATA
(
    COMPANY_ID            VARCHAR(255)                       NOT NULL,
    MEDICATION_ADMIN_NAME  VARCHAR(40)                      NOT NULL,
    DATE_REGISTRATION     DATETIME DEFAULT NOW() NOT NULL,
    MEDICATION_ID         VARCHAR(255)                       NOT NULL PRIMARY KEY,
    MEDICATION_NAME       VARCHAR(85)                        NOT NULL,
    MEDICATION_META_DATA  VARCHAR(255)                       NOT NULL,
    MEDICATION_TOTAL       INT                               NOT NULL,
    MEDICATION_PRICE      FLOAT(10, 2)                       NOT NULL,
    MEDICATION_DATE_ADDED DATETIME                           NOT NULL,
    MEDICATION_LICENCE_PHOTO      LONGBLOB                     NULL,
    MEDICATION_LICENCE_PHOTO_TYPE  VARCHAR(7)                  NULL,
    MEDICATION_PHOTO      LONGBLOB                           NULL,
    MEDICATION_PHOTO_TYPE VARCHAR(7)                         NULL
);


INSERT INTO  COMPANY_MEDICINAL_DATA(COMPANY_ID, MEDICATION_ADMIN_NAME,  MEDICATION_ID, MEDICATION_NAME, MEDICATION_META_DATA, MEDICATION_TOTAL, MEDICATION_PRICE, MEDICATION_DATE_ADDED)
 VALUES ('adsadas','Peter','as3sad3242','Paracitamol','desciption',40,23.6,now())


UPDATE WEBMRC.COMPANY_MEDICINAL_DATA
        SET MEDICATION_TOTAL = MEDICATION_TOTAL + 34
            WHERE  COMPANY_ID = 'adsadas'  AND MEDICATION_ID ='as3sad3242';



CREATE TABLE CONSULTANT_LOGS_SESSIONS
(
COMPANY_ID VARCHAR(255) NOT NULL,
CONSULTANT_LOG_ID VARCHAR(255) NOT NULL,
CONSULTANT_ID VARCHAR(255) NOT NULL,
PATIENT_SESSION_ID VARCHAR(255) NOT NULL,
PATIENT_ID VARCHAR(255) NOT NULL,
PATIENT_BLOOD_PRESSURE VARCHAR(100) ,
PATIENT_SUGAR_LEVEL VARCHAR(100) ,
PATIENT_ALLEGES VARCHAR(100) ,
PATIENT_WEIGHT VARCHAR(100) ,
PATIENT_HEIGHT VARCHAR(100) ,
PATIENT_SESSION_TIMESTAMP  DATETIME DEFAULT CURRENT_TIMESTAMP  NOT NULL,
PATIENT_VISIT_STATE ENUM('CHECKED','INLINE') DEFAULT 'INLINE',
PATIENT_LINE_NUMBER INT

);