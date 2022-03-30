SET ECHO ON
SET VERIFY ON
SET FEEDBACK ON
SET DEFINE ON
CLEAR SCREEN
set serveroutput on

COLUMN date_time NEW_VAL filename noprint;
SELECT to_char(systimestamp,'yyyy-mm-dd_hh24-mi-ssxff') date_time FROM DUAL;
spool "oracle_db_&filename..log"

-- Password file execution
@passworddefinition.sql

PROMPT Dropping Role ROLE_oracle_db ...
DROP ROLE ROLE_oracle_db ;
PROMPT Creating Role ROLE_oracle_db ...
CREATE ROLE ROLE_oracle_db ;

-- PROMPT Drop allaskereso_db user
-- drop user allaskereso_db cascade;
   
PROMPT Create user allaskereso_db
CREATE USER allaskereso_db IDENTIFIED BY &&allaskereso_db_password PASSWORD EXPIRE ACCOUNT LOCK /* DEFAULT TABLESPACE USERS  TEMPORARY TABLESPACE TEMP */;
GRANT CREATE SESSION, RESOURCE, CREATE VIEW, CREATE MATERIALIZED VIEW, CREATE SYNONYM, UNLIMITED TABLESPACE TO allaskereso_db;

-- PROMPT Drop Emulation user
-- drop user Emulation cascade;
   
PROMPT Create user Emulation
CREATE USER Emulation IDENTIFIED BY &&Emulation_password PASSWORD EXPIRE ACCOUNT LOCK /* DEFAULT TABLESPACE USERS  TEMPORARY TABLESPACE TEMP */;
GRANT CREATE SESSION, RESOURCE, CREATE VIEW, CREATE MATERIALIZED VIEW, CREATE SYNONYM, UNLIMITED TABLESPACE TO Emulation;

set define on
prompt connecting to Emulation
alter session set current_schema=Emulation;
set define off
set define on
prompt connecting to allaskereso_db
alter session set current_schema=allaskereso_db;
set define off
-- DROP TABLE allas CASCADE CONSTRAINTS;


PROMPT Creating Table allas ...
CREATE TABLE allas (
  id NUMBER(10,0) NOT NULL,
  allas_neve VARCHAR2(200 CHAR) NOT NULL,
  allas_leirasa VARCHAR2(9999 CHAR) NOT NULL,
  munkakor_id NUMBER(10,0),
  hirdeto_id NUMBER(10,0) NOT NULL,
  kapcsolat_id NUMBER(10,0) NOT NULL,
  diak_vallalhatja NUMBER(3,0) NOT NULL,
  helyszin_id NUMBER(10,0),
  kezdes_idopontja DATE NOT NULL,
  berezes NUMBER(10,0) NOT NULL
);


ALTER TABLE allas MODIFY (munkakor_id DEFAULT 'NULL');
ALTER TABLE allas MODIFY (helyszin_id DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_12 on table allas ... 
ALTER TABLE allas
ADD CONSTRAINT PRIMARY_12 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON allas TO ROLE_oracle_db;
-- DROP TABLE diakszovetkezet CASCADE CONSTRAINTS;


PROMPT Creating Table diakszovetkezet ...
CREATE TABLE diakszovetkezet (
  id NUMBER(10,0) NOT NULL,
  nev VARCHAR2(50 CHAR) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_11 on table diakszovetkezet ... 
ALTER TABLE diakszovetkezet
ADD CONSTRAINT PRIMARY_11 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON diakszovetkezet TO ROLE_oracle_db;
-- DROP TABLE diakszovetkezetnel_van CASCADE CONSTRAINTS;


PROMPT Creating Table diakszovetkezetnel_van ...
CREATE TABLE diakszovetkezetnel_van (
  diakszovetkezet_id NUMBER(10,0) NOT NULL,
  diak_felhasznalo_id NUMBER(10,0) NOT NULL
);



GRANT ALL ON diakszovetkezetnel_van TO ROLE_oracle_db;
-- DROP TABLE diak_felhasznalo CASCADE CONSTRAINTS;


PROMPT Creating Table diak_felhasznalo ...
CREATE TABLE diak_felhasznalo (
  id NUMBER(10,0) NOT NULL,
  fiokadat_id NUMBER(10,0) NOT NULL,
  iskola_id NUMBER(10,0),
  vallalat_id NUMBER(10,0)
);


ALTER TABLE diak_felhasznalo MODIFY (iskola_id DEFAULT 'NULL');
ALTER TABLE diak_felhasznalo MODIFY (vallalat_id DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_13 on table diak_felhasznalo ... 
ALTER TABLE diak_felhasznalo
ADD CONSTRAINT PRIMARY_13 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON diak_felhasznalo TO ROLE_oracle_db;
-- DROP TABLE egyeb_feltetelek CASCADE CONSTRAINTS;


PROMPT Creating Table egyeb_feltetelek ...
CREATE TABLE egyeb_feltetelek (
  id NUMBER(10,0) NOT NULL,
  kell_jogsi NUMBER(3,0) NOT NULL,
  munkatapasztalat_ev NUMBER(10,0) NOT NULL,
  egyeb_feltetelek VARCHAR2(50 CHAR)
);


ALTER TABLE egyeb_feltetelek MODIFY (egyeb_feltetelek DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_6 on table egyeb_feltetelek ... 
ALTER TABLE egyeb_feltetelek
ADD CONSTRAINT PRIMARY_6 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON egyeb_feltetelek TO ROLE_oracle_db;
-- DROP TABLE fiokadatok CASCADE CONSTRAINTS;


PROMPT Creating Table fiokadatok ...
CREATE TABLE fiokadatok (
  id NUMBER(10,0) NOT NULL,
  email VARCHAR2(50 CHAR) NOT NULL,
  jelszo VARCHAR2(50 CHAR) NOT NULL,
  fiok_tipusa NUMBER(10,0),
  szemelyes_adatok_id NUMBER(10,0),
  admin_e NUMBER(3,0) NOT NULL
);


ALTER TABLE fiokadatok MODIFY (fiok_tipusa DEFAULT 'NULL');
ALTER TABLE fiokadatok MODIFY (szemelyes_adatok_id DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_1 on table fiokadatok ... 
ALTER TABLE fiokadatok
ADD CONSTRAINT PRIMARY_1 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON fiokadatok TO ROLE_oracle_db;
-- DROP TABLE helyszin CASCADE CONSTRAINTS;


PROMPT Creating Table helyszin ...
CREATE TABLE helyszin (
  id NUMBER(10,0) NOT NULL,
  orszag VARCHAR2(50 CHAR) NOT NULL,
  varos VARCHAR2(50 CHAR) NOT NULL,
  tavolrol_vegezheto_e NUMBER(3,0) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_8 on table helyszin ... 
ALTER TABLE helyszin
ADD CONSTRAINT PRIMARY_8 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON helyszin TO ROLE_oracle_db;
-- DROP TABLE hirdeto CASCADE CONSTRAINTS;


PROMPT Creating Table hirdeto ...
CREATE TABLE hirdeto (
  id NUMBER(10,0) NOT NULL,
  fiokadatok_id NUMBER(10,0) NOT NULL,
  vallalat_id NUMBER(10,0) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY on table hirdeto ... 
ALTER TABLE hirdeto
ADD CONSTRAINT PRIMARY PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON hirdeto TO ROLE_oracle_db;
-- DROP TABLE iskola CASCADE CONSTRAINTS;


PROMPT Creating Table iskola ...
CREATE TABLE iskola (
  id NUMBER(10,0) NOT NULL,
  nev VARCHAR2(50 CHAR) NOT NULL,
  varhato_befejezes NUMBER(10,0) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_5 on table iskola ... 
ALTER TABLE iskola
ADD CONSTRAINT PRIMARY_5 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON iskola TO ROLE_oracle_db;
-- DROP TABLE jelentkezok CASCADE CONSTRAINTS;


PROMPT Creating Table jelentkezok ...
CREATE TABLE jelentkezok (
  allas_id NUMBER(10,0) NOT NULL,
  normal_felhasznalo_id NUMBER(10,0) NOT NULL
);



GRANT ALL ON jelentkezok TO ROLE_oracle_db;
-- DROP TABLE kapcsolat CASCADE CONSTRAINTS;


PROMPT Creating Table kapcsolat ...
CREATE TABLE kapcsolat (
  id NUMBER(10,0) NOT NULL,
  nev VARCHAR2(50 CHAR) NOT NULL,
  email VARCHAR2(50 CHAR) NOT NULL,
  telefon NUMBER(10,0) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_2 on table kapcsolat ... 
ALTER TABLE kapcsolat
ADD CONSTRAINT PRIMARY_2 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON kapcsolat TO ROLE_oracle_db;
-- DROP TABLE munkakor CASCADE CONSTRAINTS;


PROMPT Creating Table munkakor ...
CREATE TABLE munkakor (
  id NUMBER(10,0) NOT NULL,
  allas_tipusa VARCHAR2(50 CHAR) NOT NULL,
  szuksegse_vegzettseg VARCHAR2(50 CHAR),
  egyeb_feltetelek_id NUMBER(10,0)
);


ALTER TABLE munkakor MODIFY (szuksegse_vegzettseg DEFAULT 'NULL');
ALTER TABLE munkakor MODIFY (egyeb_feltetelek_id DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_9 on table munkakor ... 
ALTER TABLE munkakor
ADD CONSTRAINT PRIMARY_9 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON munkakor TO ROLE_oracle_db;
-- DROP TABLE normal_felhasznalo CASCADE CONSTRAINTS;


PROMPT Creating Table normal_felhasznalo ...
CREATE TABLE normal_felhasznalo (
  id NUMBER(10,0) NOT NULL,
  fiokadatok_id NUMBER(10,0) NOT NULL,
  vegzettseg_id NUMBER(10,0) NOT NULL,
  vallalat_id NUMBER(10,0)
);


ALTER TABLE normal_felhasznalo MODIFY (vallalat_id DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_3 on table normal_felhasznalo ... 
ALTER TABLE normal_felhasznalo
ADD CONSTRAINT PRIMARY_3 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON normal_felhasznalo TO ROLE_oracle_db;
-- DROP TABLE regisztralt_allasok CASCADE CONSTRAINTS;


PROMPT Creating Table regisztralt_allasok ...
CREATE TABLE regisztralt_allasok (
  allas_id NUMBER(10,0) NOT NULL,
  diakszovetkezet_id NUMBER(10,0) NOT NULL
);



GRANT ALL ON regisztralt_allasok TO ROLE_oracle_db;
-- DROP TABLE szemelyes_adatok CASCADE CONSTRAINTS;


PROMPT Creating Table szemelyes_adatok ...
CREATE TABLE szemelyes_adatok (
  id NUMBER(10,0) NOT NULL,
  nev VARCHAR2(50 CHAR) NOT NULL,
  szuletesi_datum DATE NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_4 on table szemelyes_adatok ... 
ALTER TABLE szemelyes_adatok
ADD CONSTRAINT PRIMARY_4 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON szemelyes_adatok TO ROLE_oracle_db;
-- DROP TABLE vallalat CASCADE CONSTRAINTS;


PROMPT Creating Table vallalat ...
CREATE TABLE vallalat (
  id NUMBER(10,0) NOT NULL,
  neve VARCHAR2(50 CHAR) NOT NULL,
  tulajdonos VARCHAR2(50 CHAR),
  jegyzett_toke NUMBER(10,0),
  ertekeles NUMBER(10,0)
);


ALTER TABLE vallalat MODIFY (tulajdonos DEFAULT 'NULL');
ALTER TABLE vallalat MODIFY (jegyzett_toke DEFAULT 'NULL');
ALTER TABLE vallalat MODIFY (ertekeles DEFAULT 'NULL');
PROMPT Creating Primary Key Constraint PRIMARY_10 on table vallalat ... 
ALTER TABLE vallalat
ADD CONSTRAINT PRIMARY_10 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON vallalat TO ROLE_oracle_db;
-- DROP TABLE vegzettseg CASCADE CONSTRAINTS;


PROMPT Creating Table vegzettseg ...
CREATE TABLE vegzettseg (
  id NUMBER(10,0) NOT NULL,
  nev VARCHAR2(50 CHAR) NOT NULL,
  intezmeny VARCHAR2(50 CHAR) NOT NULL
);


PROMPT Creating Primary Key Constraint PRIMARY_7 on table vegzettseg ... 
ALTER TABLE vegzettseg
ADD CONSTRAINT PRIMARY_7 PRIMARY KEY
(
  id
)
ENABLE
;

GRANT ALL ON vegzettseg TO ROLE_oracle_db;
PROMPT Creating Index helyszin_id on allas ...
CREATE INDEX helyszin_id ON allas
(
  helyszin_id
) 
;
PROMPT Creating Index hirdeto_id on allas ...
CREATE INDEX hirdeto_id ON allas
(
  hirdeto_id
) 
;
PROMPT Creating Index kapcsolat_id on allas ...
CREATE INDEX kapcsolat_id ON allas
(
  kapcsolat_id
) 
;
PROMPT Creating Index munkakor_id on allas ...
CREATE INDEX munkakor_id ON allas
(
  munkakor_id
) 
;
PROMPT Creating Index diakszovetkezet_id_1 on diakszovetkezetnel_van ...
CREATE INDEX diakszovetkezet_id_1 ON diakszovetkezetnel_van
(
  diakszovetkezet_id
) 
;
PROMPT Creating Index diak_felhasznalo_id on diakszovetkezetnel_van ...
CREATE INDEX diak_felhasznalo_id ON diakszovetkezetnel_van
(
  diak_felhasznalo_id
) 
;
PROMPT Creating Index fiokadat_id on diak_felhasznalo ...
CREATE INDEX fiokadat_id ON diak_felhasznalo
(
  fiokadat_id
) 
;
PROMPT Creating Index iskola_id on diak_felhasznalo ...
CREATE INDEX iskola_id ON diak_felhasznalo
(
  iskola_id
) 
;
PROMPT Creating Index vallalat_id on diak_felhasznalo ...
CREATE INDEX vallalat_id ON diak_felhasznalo
(
  vallalat_id
) 
;
PROMPT Creating Index szemelyes_adatok_id on fiokadatok ...
CREATE INDEX szemelyes_adatok_id ON fiokadatok
(
  szemelyes_adatok_id
) 
;
PROMPT Creating Index fiokadatok_id_1 on hirdeto ...
CREATE INDEX fiokadatok_id_1 ON hirdeto
(
  fiokadatok_id
) 
;
PROMPT Creating Index vallalat_id_2 on hirdeto ...
CREATE INDEX vallalat_id_2 ON hirdeto
(
  vallalat_id
) 
;
PROMPT Creating Index allas_id on jelentkezok ...
CREATE INDEX allas_id ON jelentkezok
(
  allas_id
) 
;
PROMPT Creating Index normal_felhasznalo_id on jelentkezok ...
CREATE INDEX normal_felhasznalo_id ON jelentkezok
(
  normal_felhasznalo_id
) 
;
PROMPT Creating Index egyeb_feltetelek_id on munkakor ...
CREATE INDEX egyeb_feltetelek_id ON munkakor
(
  egyeb_feltetelek_id
) 
;
PROMPT Creating Index fiokadatok_id on normal_felhasznalo ...
CREATE INDEX fiokadatok_id ON normal_felhasznalo
(
  fiokadatok_id
) 
;
PROMPT Creating Index vallalat_id_1 on normal_felhasznalo ...
CREATE INDEX vallalat_id_1 ON normal_felhasznalo
(
  vallalat_id
) 
;
PROMPT Creating Index vegzettseg_id on normal_felhasznalo ...
CREATE INDEX vegzettseg_id ON normal_felhasznalo
(
  vegzettseg_id
) 
;
PROMPT Creating Index allas_id_1 on regisztralt_allasok ...
CREATE INDEX allas_id_1 ON regisztralt_allasok
(
  allas_id
) 
;
PROMPT Creating Index diakszovetkezet_id on regisztralt_allasok ...
CREATE INDEX diakszovetkezet_id ON regisztralt_allasok
(
  diakszovetkezet_id
) 
;
set define on
prompt connecting to allaskereso_db
alter session set current_schema=allaskereso_db;
set define off
PROMPT Creating Foreign Key Constraint allas_ibfk_1 on table helyszin...
ALTER TABLE allas
ADD CONSTRAINT allas_ibfk_1 FOREIGN KEY
(
  helyszin_id
)
REFERENCES helyszin
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint allas_ibfk_2 on table hirdeto...
ALTER TABLE allas
ADD CONSTRAINT allas_ibfk_2 FOREIGN KEY
(
  hirdeto_id
)
REFERENCES hirdeto
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint allas_ibfk_3 on table kapcsolat...
ALTER TABLE allas
ADD CONSTRAINT allas_ibfk_3 FOREIGN KEY
(
  kapcsolat_id
)
REFERENCES kapcsolat
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint allas_ibfk_4 on table munkakor...
ALTER TABLE allas
ADD CONSTRAINT allas_ibfk_4 FOREIGN KEY
(
  munkakor_id
)
REFERENCES munkakor
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint diakszovetkezetnel_van_ibfk_1 on table diakszovetkezet...
ALTER TABLE diakszovetkezetnel_van
ADD CONSTRAINT diakszovetkezetnel_van_ibfk_1 FOREIGN KEY
(
  diakszovetkezet_id
)
REFERENCES diakszovetkezet
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint diakszovetkezetnel_van_ibfk_2 on table diak_felhasznalo...
ALTER TABLE diakszovetkezetnel_van
ADD CONSTRAINT diakszovetkezetnel_van_ibfk_2 FOREIGN KEY
(
  diak_felhasznalo_id
)
REFERENCES diak_felhasznalo
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint diak_felhasznalo_ibfk_1 on table fiokadatok...
ALTER TABLE diak_felhasznalo
ADD CONSTRAINT diak_felhasznalo_ibfk_1 FOREIGN KEY
(
  fiokadat_id
)
REFERENCES fiokadatok
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint diak_felhasznalo_ibfk_2 on table iskola...
ALTER TABLE diak_felhasznalo
ADD CONSTRAINT diak_felhasznalo_ibfk_2 FOREIGN KEY
(
  iskola_id
)
REFERENCES iskola
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint diak_felhasznalo_ibfk_3 on table vallalat...
ALTER TABLE diak_felhasznalo
ADD CONSTRAINT diak_felhasznalo_ibfk_3 FOREIGN KEY
(
  vallalat_id
)
REFERENCES vallalat
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint fiokadatok_ibfk_1 on table szemelyes_adatok...
ALTER TABLE fiokadatok
ADD CONSTRAINT fiokadatok_ibfk_1 FOREIGN KEY
(
  szemelyes_adatok_id
)
REFERENCES szemelyes_adatok
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint hirdeto_ibfk_1 on table fiokadatok...
ALTER TABLE hirdeto
ADD CONSTRAINT hirdeto_ibfk_1 FOREIGN KEY
(
  fiokadatok_id
)
REFERENCES fiokadatok
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint hirdeto_ibfk_2 on table vallalat...
ALTER TABLE hirdeto
ADD CONSTRAINT hirdeto_ibfk_2 FOREIGN KEY
(
  vallalat_id
)
REFERENCES vallalat
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint jelentkezok_ibfk_1 on table allas...
ALTER TABLE jelentkezok
ADD CONSTRAINT jelentkezok_ibfk_1 FOREIGN KEY
(
  allas_id
)
REFERENCES allas
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint jelentkezok_ibfk_2 on table normal_felhasznalo...
ALTER TABLE jelentkezok
ADD CONSTRAINT jelentkezok_ibfk_2 FOREIGN KEY
(
  normal_felhasznalo_id
)
REFERENCES normal_felhasznalo
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint munkakor_ibfk_1 on table egyeb_feltetelek...
ALTER TABLE munkakor
ADD CONSTRAINT munkakor_ibfk_1 FOREIGN KEY
(
  egyeb_feltetelek_id
)
REFERENCES egyeb_feltetelek
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint normal_felhasznalo_ibfk_1 on table fiokadatok...
ALTER TABLE normal_felhasznalo
ADD CONSTRAINT normal_felhasznalo_ibfk_1 FOREIGN KEY
(
  fiokadatok_id
)
REFERENCES fiokadatok
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint normal_felhasznalo_ibfk_2 on table vallalat...
ALTER TABLE normal_felhasznalo
ADD CONSTRAINT normal_felhasznalo_ibfk_2 FOREIGN KEY
(
  vallalat_id
)
REFERENCES vallalat
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint normal_felhasznalo_ibfk_3 on table vegzettseg...
ALTER TABLE normal_felhasznalo
ADD CONSTRAINT normal_felhasznalo_ibfk_3 FOREIGN KEY
(
  vegzettseg_id
)
REFERENCES vegzettseg
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint regisztralt_allasok_ibfk_1 on table allas...
ALTER TABLE regisztralt_allasok
ADD CONSTRAINT regisztralt_allasok_ibfk_1 FOREIGN KEY
(
  allas_id
)
REFERENCES allas
(
  id
)
ENABLE
;

PROMPT Creating Foreign Key Constraint regisztralt_allasok_ibfk_2 on table diakszovetkezet...
ALTER TABLE regisztralt_allasok
ADD CONSTRAINT regisztralt_allasok_ibfk_2 FOREIGN KEY
(
  diakszovetkezet_id
)
REFERENCES diakszovetkezet
(
  id
)
ENABLE
;

spool off;

COMMIT;

