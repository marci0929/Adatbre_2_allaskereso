--------------------------------------------------------
--  File created - szerda-március-30-2022   
--------------------------------------------------------
DROP TYPE "C##TESZT"."MIGR_FILTER";
DROP TYPE "C##TESZT"."MIGR_FILTER_SET";
DROP TYPE "C##TESZT"."MIGR_REPORT_DETAIL_ROW";
DROP TYPE "C##TESZT"."MIGR_REPORT_DETAIL_TABLE";
DROP TYPE "C##TESZT"."MIGR_REPORT_SUM_ROW";
DROP TYPE "C##TESZT"."MIGR_REPORT_SUM_TABLE";
DROP TYPE "C##TESZT"."NAME_AND_COUNT_ARRAY";
DROP TYPE "C##TESZT"."NAME_AND_COUNT_T";
DROP TYPE "C##TESZT"."NAMELIST";
DROP TYPE "C##TESZT"."OBJECTIDLIST";
DROP SEQUENCE "C##TESZT"."DBOBJECTID_SEQUENCE";
DROP TABLE "C##TESZT"."ALLAS" cascade constraints;
DROP TABLE "C##TESZT"."DIAK_FELHASZNALO" cascade constraints;
DROP TABLE "C##TESZT"."DIAKSZOVETKEZET" cascade constraints;
DROP TABLE "C##TESZT"."DIAKSZOVETKEZETNEL_VAN" cascade constraints;
DROP TABLE "C##TESZT"."EGYEB_FELTETELEK" cascade constraints;
DROP TABLE "C##TESZT"."FIOKADATOK" cascade constraints;
DROP TABLE "C##TESZT"."HELYSZIN" cascade constraints;
DROP TABLE "C##TESZT"."HIRDETO" cascade constraints;
DROP TABLE "C##TESZT"."ISKOLA" cascade constraints;
DROP TABLE "C##TESZT"."JELENTKEZOK" cascade constraints;
DROP TABLE "C##TESZT"."KAPCSOLAT" cascade constraints;
DROP TABLE "C##TESZT"."MUNKAKOR" cascade constraints;
DROP TABLE "C##TESZT"."NORMAL_FELHASZNALO" cascade constraints;
DROP TABLE "C##TESZT"."REGISZTRALT_ALLASOK" cascade constraints;
DROP TABLE "C##TESZT"."SZEMELYES_ADATOK" cascade constraints;
DROP TABLE "C##TESZT"."VALLALAT" cascade constraints;
DROP TABLE "C##TESZT"."VEGZETTSEG" cascade constraints;
DROP VIEW "C##TESZT"."MGV_ALL_CAPTURED_SQL";
DROP VIEW "C##TESZT"."MGV_ALL_CATALOG_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_CATALOGS";
DROP VIEW "C##TESZT"."MGV_ALL_COLUMN_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_COLUMNDT_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_CONNECTIONS";
DROP VIEW "C##TESZT"."MGV_ALL_CONSTRAINTS_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_INDEX_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_PARTITIONS_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_PROGRAMS_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_SCHEMA";
DROP VIEW "C##TESZT"."MGV_ALL_SCHEMA_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_STORED_PROGRAMS";
DROP VIEW "C##TESZT"."MGV_ALL_TABLES";
DROP VIEW "C##TESZT"."MGV_ALL_TABLES_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_TABLE_TRIGGERS";
DROP VIEW "C##TESZT"."MGV_ALL_TRIGGER_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_VIEW_DETAILS";
DROP VIEW "C##TESZT"."MGV_ALL_VIEWS";
DROP VIEW "C##TESZT"."MGV_ALL_VIEW_TRIGGERS";
DROP VIEW "C##TESZT"."MGV_DERIVATIVES";
DROP VIEW "C##TESZT"."MGV_DERIVED_DETAILS";
DROP VIEW "C##TESZT"."MGV_SCRATCH_DERIVATIVES";
DROP MATERIALIZED VIEW "C##TESZT"."MD_REGEX_CATALOG_MVIEW";
DROP MATERIALIZED VIEW "C##TESZT"."MD_REGEX_MVIEW";
DROP MATERIALIZED VIEW "C##TESZT"."MD_REGEX_SCHEMA_MVIEW";
DROP PACKAGE "C##TESZT"."MD_META";
DROP PACKAGE "C##TESZT"."MIGRATION";
DROP PACKAGE "C##TESZT"."MIGRATION_REPORT";
DROP PACKAGE "C##TESZT"."MIGRATION_TRANSFORMER";
DROP PACKAGE "C##TESZT"."SQLSERVER_TSQL_TRANSLATOR";
DROP PACKAGE "C##TESZT"."SS2K5ALLPLATFORM";
DROP PACKAGE "C##TESZT"."SYB12ALLPLATFORM";
DROP PACKAGE "C##TESZT"."TDALLPLATFORM";
DROP PACKAGE BODY "C##TESZT"."MD_META";
DROP PACKAGE BODY "C##TESZT"."MIGRATION";
DROP PACKAGE BODY "C##TESZT"."MIGRATION_REPORT";
DROP PACKAGE BODY "C##TESZT"."MIGRATION_TRANSFORMER";
DROP PACKAGE BODY "C##TESZT"."SQLSERVER_TSQL_TRANSLATOR";
DROP PACKAGE BODY "C##TESZT"."SS2K5ALLPLATFORM";
DROP PACKAGE BODY "C##TESZT"."SYB12ALLPLATFORM";
DROP PACKAGE BODY "C##TESZT"."TDALLPLATFORM";
--------------------------------------------------------
--  DDL for Type MIGR_FILTER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_FILTER" IS OBJECT (
  FILTER_TYPE INTEGER, -- Filter Types are 0-> ALL, 1->NAMELIST, 2->WHERE CLAUSE, 3->OBJECTID LIST
  OBJTYPE VARCHAR2(40),
  OBJECTIDS OBJECTIDLIST,
  NAMES NAMELIST,
  WHERECLAUSE VARCHAR2(1000));

/
--------------------------------------------------------
--  DDL for Type MIGR_FILTER_SET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_FILTER_SET" IS TABLE OF MIGR_FILTER;

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_DETAIL_ROW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_REPORT_DETAIL_ROW" AS OBJECT
 (CAPTURED_ID            NUMBER(38),
  CAPTURED_NAME          VARCHAR2(4000),
  CONVERTED_NAME          VARCHAR2(4000),
  CAPTURED_TYPE          VARCHAR2(4000),
  CONVERTED_TYPE          VARCHAR2(4000),
  CAPTURE_STATUS         VARCHAR2(20),
  CONVERT_STATUS         VARCHAR2(20),
  GENERATE_STATUS        VARCHAR2(20),
  LOGTEXT               VARCHAR2(4000)
 );

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_DETAIL_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_REPORT_DETAIL_TABLE" AS TABLE OF MIGR_REPORT_DETAIL_ROW;

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_SUM_ROW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_REPORT_SUM_ROW" AS OBJECT
       (LABEL           VARCHAR2(50),
	    SCHEMA_SUM      NUMBER,
        TABLE_SUM       NUMBER,
		INDEX_SUM       NUMBER,
		CONSTRAINT_SUM  NUMBER,
		VIEW_SUM        NUMBER,
		TRIGGER_SUM     NUMBER,
		SP_SUM          NUMBER		
        );

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_SUM_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."MIGR_REPORT_SUM_TABLE" AS TABLE OF MIGR_REPORT_SUM_ROW;

/
--------------------------------------------------------
--  DDL for Type NAME_AND_COUNT_ARRAY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."NAME_AND_COUNT_ARRAY" IS VARRAY(30) OF name_and_count_t;

/
--------------------------------------------------------
--  DDL for Type NAME_AND_COUNT_T
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."NAME_AND_COUNT_T" IS OBJECT (
  OBJECT_NAME varchar2(30),
  UPDATE_COUNT INTEGER);

/
--------------------------------------------------------
--  DDL for Type NAMELIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."NAMELIST" IS TABLE OF VARCHAR2(40);

/
--------------------------------------------------------
--  DDL for Type OBJECTIDLIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "C##TESZT"."OBJECTIDLIST" IS TABLE OF INTEGER;

/
--------------------------------------------------------
--  DDL for Sequence DBOBJECTID_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "C##TESZT"."DBOBJECTID_SEQUENCE"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 50 START WITH 97501 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ALLAS
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."ALLAS" 
   (	"ID" NUMBER(10,0), 
	"ALLAS_NEVE" VARCHAR2(800 CHAR), 
	"ALLAS_LEIRASA" CLOB, 
	"MUNKAKOR_ID" NUMBER(10,0), 
	"HIRDETO_ID" NUMBER(10,0), 
	"KAPCSOLAT_ID" NUMBER(10,0), 
	"DIAK_VALLALHATJA" NUMBER(10,0), 
	"HELYSZIN_ID" NUMBER(10,0), 
	"KEZDES_IDOPONTJA" TIMESTAMP (6), 
	"BEREZES" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("ALLAS_LEIRASA") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table DIAK_FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."DIAK_FELHASZNALO" 
   (	"ID" NUMBER(10,0), 
	"FIOKADAT_ID" NUMBER(10,0), 
	"ISKOLA_ID" NUMBER(10,0), 
	"VALLALAT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIAKSZOVETKEZET
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."DIAKSZOVETKEZET" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(200 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIAKSZOVETKEZETNEL_VAN
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."DIAKSZOVETKEZETNEL_VAN" 
   (	"DIAKSZOVETKEZET_ID" NUMBER(10,0), 
	"DIAK_FELHASZNALO_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EGYEB_FELTETELEK
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."EGYEB_FELTETELEK" 
   (	"ID" NUMBER(10,0), 
	"KELL_JOGSI" NUMBER(10,0), 
	"MUNKATAPASZTALAT_EV" NUMBER(10,0), 
	"EGYEB_FELTETELEK" VARCHAR2(200 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FIOKADATOK
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."FIOKADATOK" 
   (	"ID" NUMBER(10,0), 
	"EMAIL" VARCHAR2(200 CHAR), 
	"JELSZO" VARCHAR2(200 CHAR), 
	"FIOK_TIPUSA" NUMBER(10,0), 
	"SZEMELYES_ADATOK_ID" NUMBER(10,0), 
	"ADMIN_E" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HELYSZIN
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."HELYSZIN" 
   (	"ID" NUMBER(10,0), 
	"ORSZAG" VARCHAR2(200 CHAR), 
	"VAROS" VARCHAR2(200 CHAR), 
	"TAVOLROL_VEGEZHETO_E" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HIRDETO
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."HIRDETO" 
   (	"ID" NUMBER(10,0), 
	"FIOKADATOK_ID" NUMBER(10,0), 
	"VALLALAT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ISKOLA
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."ISKOLA" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(200 CHAR), 
	"VARHATO_BEFEJEZES" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JELENTKEZOK
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."JELENTKEZOK" 
   (	"ALLAS_ID" NUMBER(10,0), 
	"NORMAL_FELHASZNALO_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KAPCSOLAT
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."KAPCSOLAT" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(200 CHAR), 
	"EMAIL" VARCHAR2(200 CHAR), 
	"TELEFON" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MUNKAKOR
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."MUNKAKOR" 
   (	"ID" NUMBER(10,0), 
	"ALLAS_TIPUSA" VARCHAR2(200 CHAR), 
	"SZUKSEGSE_VEGZETTSEG" VARCHAR2(200 CHAR), 
	"EGYEB_FELTETELEK_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NORMAL_FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."NORMAL_FELHASZNALO" 
   (	"ID" NUMBER(10,0), 
	"FIOKADATOK_ID" NUMBER(10,0), 
	"VEGZETTSEG_ID" NUMBER(10,0), 
	"VALLALAT_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGISZTRALT_ALLASOK
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."REGISZTRALT_ALLASOK" 
   (	"ALLAS_ID" NUMBER(10,0), 
	"DIAKSZOVETKEZET_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SZEMELYES_ADATOK
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."SZEMELYES_ADATOK" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(200 CHAR), 
	"SZULETESI_DATUM" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VALLALAT
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."VALLALAT" 
   (	"ID" NUMBER(10,0), 
	"NEVE" VARCHAR2(200 CHAR), 
	"TULAJDONOS" VARCHAR2(200 CHAR), 
	"JEGYZETT_TOKE" NUMBER(10,0), 
	"ERTEKELES" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEGZETTSEG
--------------------------------------------------------

  CREATE TABLE "C##TESZT"."VEGZETTSEG" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(200 CHAR), 
	"INTEZMENY" VARCHAR2(200 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View MGV_ALL_CAPTURED_SQL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_CAPTURED_SQL" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "NATIVE_SQL", "LINECOUNT") AS 
  SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME", p.native_sql,p.linecount 
FROM md_stored_programs p , mgv_all_programs_details d
WHERE p.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME",v.native_sql,v.linecount
FROM md_views v , mgv_all_view_details d
WHERE v.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME" ,t.native_sql,t.linecount
FROM md_triggers t , mgv_all_trigger_details d
WHERE t.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOG_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_CATALOG_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CATALOGS' objtype, cat.catalog_name objname, cat.id objid,  'MD_CATALOGS' MainObjType,cat.catalog_name MAINOBJNAME, cat.id MAINOBJID,null SchemaName,null schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name ELSE NULL END QualifiedName
FROM  MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE  cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_CATALOGS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name
  FROM md_projects ,
    md_connections,
    md_catalogs
  WHERE md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk   = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMN_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_COLUMN_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName
FROM MD_COLUMNS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMNDT_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_COLUMNDT_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "DATATYPE", "ISIDENTITY") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname ,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName,
c.column_type datatype,
CASE WHEN p.PROP_KEY='SEEDVALUE' THEN 'Y' ELSE 'N' END IsIdentity
FROM MD_COLUMNS c LEFT OUTER JOIN MD_ADDITIONAL_PROPERTIES p ON c.id =p.ref_id_fk
, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONNECTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_CONNECTIONS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "CONNECTION_NAME", "HOST", "PORT", "USERNAME", "DBURL") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    MD_CONNECTIONS.ID CONNECTION_ID ,
    MD_CONNECTIONS.NAME CONNECTION_NAME,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl
  FROM md_projects,
    md_connections
  WHERE MD_CONNECTIONS.PROJECT_ID_FK = MD_PROJECTS.ID
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONSTRAINTS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_CONSTRAINTS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CONSTRAINTS' objtype, c.name objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.name QualifiedName
FROM MD_CONSTRAINTS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CATALOG_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_SCHEMA_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TABLES_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_COLUMN_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CONSTRAINTS_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_INDEX_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TRIGGER_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_VIEW_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PROGRAMS_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PARTITIONS_DETAILS
;
--------------------------------------------------------
--  DDL for View MGV_ALL_INDEX_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_INDEX_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_INDEXES' objtype,i.index_name objname, i.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid, proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||i.index_name  QualifiedName
FROM MD_INDEXES i, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE i.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_PARTITIONS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_PARTITIONS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_PARTITIONS' objtype, 'PARTTITION_EXP' objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_PARTITIONS p, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_PROGRAMS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_PROGRAMS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_STORED_PROGRAMS' objtype,p.name objname, p.Id objid,  'MD_STORED_PROGRAMS' MainObjType,p.name MAINOBJNAME,p.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||p.name  QualifiedName
FROM MD_STORED_PROGRAMS p,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_SCHEMA" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_projects
  WHERE md_schemas.catalog_id_fk   = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_SCHEMA_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_SCHEMAS' objtype, s.name objname, s.id objid,  'MD_SCHEMAS' MainObjType,s.name MAINOBJNAME, s.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name QualifiedName
FROM MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_STORED_PROGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_STORED_PROGRAMS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "STORED_PROGRAM_ID", "PROGRAMTYPE", "STORED_PROGRAM_NAME", "PACKAGE_ID_FK") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name ,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_stored_programs.id stored_program_id ,
    md_stored_programs.programtype programtype ,
    md_stored_programs.name stored_program_name,
    md_stored_programs.package_id_fk package_id_fk
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_stored_programs
  WHERE md_stored_programs.schema_id_fk = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_TABLES" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_projects
  WHERE md_tables.schema_id_fk     = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_TABLES_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TABLES' objtype, t.table_name objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLE_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_TABLE_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_tables.id
  AND md_tables.schema_id_fk            = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TRIGGER_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_TRIGGER_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
UNION ALL
SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = v.id
AND v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
ORDER BY objid
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_VIEW_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_VIEWS' objtype, v.view_name objname, v.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||v.view_name  QualifiedName
FROM MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_VIEWS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views
  WHERE md_views.schema_id_fk      = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY;

   COMMENT ON TABLE "C##TESZT"."MGV_ALL_VIEWS"  IS 'View to iterate over all views in the system'
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_ALL_VIEW_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_views.id
  AND md_views.schema_id_fk             = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY", "ENABLED") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY","ENABLED" FROM MD_DERIVATIVES WHERE (Derivative_Reason <> 'SCRATCH' OR DERIVative_Reason IS NULL)
;
--------------------------------------------------------
--  DDL for View MGV_DERIVED_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_DERIVED_DETAILS" ("CAPCATALOGID", "CAPCATALOGNAME", "CAPCONNID", "CAPCONNNAME", "CAPMAINOBJID", "CAPMAINOBJNAME", "CAPMAINOBJTYPE", "CAPOBJID", "CAPOBJNAME", "CAPOBJTYPE", "CAPPROJECTID", "CAPPROJECTNAME", "CAPQUALIFIEDNAME", "CAPSCHEMAID", "CAPSCHEMANAME", "CONCATALOGID", "CONCATALOGNAME", "CONCONNID", "CONCONNNAME", "CONMAINOBJID", "CONMAINOBJNAME", "CONMAINOBJTYPE", "CONOBJID", "CONOBJNAME", "CONOBJTYPE", "CONPROJECTID", "CONPROJECTNAME", "CONQUALIFIEDNAME", "CONSCHEMAID", "CONSCHEMANAME", "DERIVATIVE_REASON", "TRANSFORMED") AS 
  select d1.catalogid capcatalogid,
   d1.catalogname capcatalogname,
   d1.connid capconnid,
   d1.connname capconnname,
   d1.mainobjid capmainobjid,
   d1.mainobjname capmainobjname,
   d1.mainobjtype capmainobjtype ,
   d1.objid capobjid,
   d1.objname capobjname,
   d1.objtype capobjtype,
   d1.projectid capprojectid,
   d1.projectname capprojectname,
   d1.qualifiedname capqualifiedname,
   d1.schemaid capschemaid,
   d1.schemaname capschemaname,
   d2.catalogid concatalogid,
   d2.catalogname concatalogname,
   d2.connid conconnid,
   d2.connname conconnname,
   d2.mainobjid conmainobjid,
   d2.mainobjname conmainobjname,
   d2.mainobjtype conmainobjtype ,
   d2.objid conobjid,
   d2.objname conobjname,
   d2.objtype conobjtype,
   d2.projectid conprojectid,
   d2.projectname conprojectname,
   d2.qualifiedname conqualifiedname,
   d2.schemaid conschemaid,
   d2.schemaname conschemaname,
    der.derivative_reason,
    der.transformed
  FROM mgv_all_details d1
  LEFT OUTER JOIN md_derivatives der
  ON der.src_id              = d1.objid
  AND der.derivative_reason IS NULL
  LEFT OUTER JOIN mgv_all_details d2
  ON der.derived_id            = d2.objid
  WHERE d1.capturedorconverted = 'CAPTURED'
  AND der.derivative_reason   IS NULL
;
--------------------------------------------------------
--  DDL for View MGV_SCRATCH_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##TESZT"."MGV_SCRATCH_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY", "ENABLED") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY","ENABLED" FROM MD_DERIVATIVES WHERE Derivative_Reason = 'SCRATCH'
;
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_CATALOG_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "C##TESZT"."MD_REGEX_CATALOG_MVIEW" ("PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "ITEM", "VALUE")
  SEGMENT CREATION DEFERRED
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME, ITEM, SUM(VALUE) "VALUE" from MD_REGEX_SCHEMA_MVIEW
        group by  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME, ITEM;

   COMMENT ON MATERIALIZED VIEW "C##TESZT"."MD_REGEX_CATALOG_MVIEW"  IS 'snapshot table for snapshot C##TESZT.MD_REGEX_CATALOG_MVIEW';
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "C##TESZT"."MD_REGEX_MVIEW" ("PROJECT_NAME", "PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "PROGRAM_ID", "PROGRAM_NAME", "ITEM", "VALUE")
  SEGMENT CREATION DEFERRED
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  pr.PROJECT_NAME, pr.ID "PROJECT_ID", c.ID "CONNECTION_ID", c.NAME "CONNECTION_NAME", mc.ID "CATALOG_ID",
        mc.CATALOG_NAME,s.id "SCHEMA_ID",s.NAME "SCHEMA_NAME", p.ID "PROGRAM_ID", p.name "PROGRAM_NAME",
        rg.DESCRIPTION "ITEM", regexp_count(p.native_sql,rg.REGEX,1,'ix') "VALUE"
FROM MD_STORED_PROGRAMS p,
  md_projects pr,
  md_connections c,
  md_schemas s,
  MD_CATALOGS mc,
  MD_CODE_REGEX rg
WHERE c.TYPE          IS NULL --Shows captured
AND mc.CONNECTION_ID_FK=c.id
AND mc.id              =s.CATALOG_ID_FK
AND pr.PROJECT_NAME LIKE 'SS%'
and pr.id=c.PROJECT_ID_FK
and p.SCHEMA_ID_FK=s.ID
and regexp_count(p.native_sql,rg.REGEX,1,'ix')>0;

   COMMENT ON MATERIALIZED VIEW "C##TESZT"."MD_REGEX_MVIEW"  IS 'snapshot table for snapshot C##TESZT.MD_REGEX_MVIEW';
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_SCHEMA_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "C##TESZT"."MD_REGEX_SCHEMA_MVIEW" ("PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "ITEM", "VALUE")
  SEGMENT CREATION DEFERRED
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME,SCHEMA_ID,SCHEMA_NAME, ITEM, SUM(VALUE) "VALUE" from MD_REGEX_MVIEW
        group by PROJECT_NAME, PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME,SCHEMA_ID,SCHEMA_NAME, ITEM;

   COMMENT ON MATERIALIZED VIEW "C##TESZT"."MD_REGEX_SCHEMA_MVIEW"  IS 'snapshot table for snapshot C##TESZT.MD_REGEX_SCHEMA_MVIEW';
REM INSERTING into C##TESZT.ALLAS
SET DEFINE OFF;
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('35','Business Systems Analyst','40','38','25','0','16',to_timestamp('22-AUG.  -22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'757985');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('36','Lead Java Engineer','43','60','12','0','23',to_timestamp('22-NOV.  -04 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'368283');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('37','Project Coordinator II','25','16','4','1','8',to_timestamp('22-JÚN.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'706169');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('38','Core Java Developer with distributed computing','42','78','14','0','13',to_timestamp('22-AUG.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'227059');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('1','AUTOMATION TEST ENGINEER','39','35','18','0','25',to_timestamp('22-JÚL.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'757681');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('2','Information Security Engineer','11','42','2','0','18',to_timestamp('22-DEC.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'608640');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('3','Business Solutions Architect','5','30','24','0','14',to_timestamp('22-AUG.  -15 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'611268');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('4','Java Developer (mid level)- FT- GREAT culture, modern technologies, career growth','4','76','10','0','24',to_timestamp('22-NOV.  -20 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'560285');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('5','DevOps Engineer','7','47','1','0','3',to_timestamp('22-DEC.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'767065');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('6','SAP FICO Architect','51','20','5','1','4',to_timestamp('22-OKT.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'798053');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('7','Network Engineer','9','12','7','0','22',to_timestamp('22-AUG.  -19 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'426627');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('8','Sr. Web Application Developer (Cloud Team) - Chicago','32','11','11','0','2',to_timestamp('22-NOV.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'417007');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('9','Front End Developer','36','71','3','0','17',to_timestamp('22-OKT.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'752449');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('10','Application Support Engineer','44','43','25','1','16',to_timestamp('22-JÚL.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'475097');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('11','OpenStack Engineer - 12185','12','27','12','1','23',to_timestamp('22-OKT.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'598583');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('12','9001 Data Security Administrator - Unix & IAM','21','71','4','0','8',to_timestamp('22-DEC.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'236320');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('13','Software Engineer Manager','26','44','14','0','13',to_timestamp('22-SZEPT.-12 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'690936');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('14','Sales Engineer - Los Angles','3','23','22','1','5',to_timestamp('22-NOV.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'540553');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('15','Project Manager','20','76','15','0','11',to_timestamp('22-DEC.  -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'540468');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('16','Windows System Administrator','16','40','8','0','15',to_timestamp('22-DEC.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'611464');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('17','Test Lead / Test Manager','6','23','23','0','1',to_timestamp('22-JÚL.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'273991');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('18','Principal Application Analyst-Supply Chain Lawson','31','57','13','0','7',to_timestamp('22-OKT.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'306753');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('19','Messaging Administrator','14','47','9','0','10',to_timestamp('22-AUG.  -22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'634954');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('20','Java Architect - Denver, CO - Fulltime','22','18','17','0','21',to_timestamp('22-DEC.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'790343');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('21','IT Business Analyst','38','38','20','0','19',to_timestamp('22-SZEPT.-20 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'272901');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('22','IT Sales Manager','1','56','19','1','12',to_timestamp('22-AUG.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'543704');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('23','Sr. Systems Test Engineer (PERM)','45','13','6','0','20',to_timestamp('22-AUG.  -20 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'211317');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('24','IT Quality Consultant','48','72','16','0','6',to_timestamp('22-SZEPT.-06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'369394');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('25','USB Validation Engineer','54','71','21','0','9',to_timestamp('22-OKT.  -11 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'234296');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('26','Senior Product Manager','2','72','18','0','25',to_timestamp('22-JÚN.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'251758');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('27','Frontend/UI Developer','28','22','2','1','18',to_timestamp('22-DEC.  -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'253032');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('28','1001 Selenium Automation testing','47','55','24','0','14',to_timestamp('22-SZEPT.-05 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'570527');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('29','FireEeye HX - Security Engineer','10','27','10','0','24',to_timestamp('22-DEC.  -18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'298921');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('30','Sr. Software Storage Engineer','17','13','1','0','3',to_timestamp('22-JÚL.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'421413');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('31','C++ Software Engineer','24','73','5','0','4',to_timestamp('22-DEC.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'753859');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('32','Domestic Outsourcing Business Development Executive','50','45','7','0','22',to_timestamp('22-JÚL.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'420858');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('33','Lead Mobile Product Manager- 12255','53','57','11','0','2',to_timestamp('22-SZEPT.-25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'326291');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('34','4709317 Project Planner/Scheduler','27','35','3','0','17',to_timestamp('22-DEC.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'471540');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('39','Software Developer','41','76','22','0','5',to_timestamp('22-JÚN.  -30 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'754407');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('40','Mobile Automation Tester , Rate :Open Negotiable, 1 year','34','2','15','0','11',to_timestamp('22-JÚL.  -04 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'720741');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('41','Project Manager : Information Security and Risk Management','13','74','8','0','15',to_timestamp('22-JÚN.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'470889');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('42','Informatica Admin','29','15','23','0','1',to_timestamp('22-SZEPT.-12 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'478014');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('43','Software Development Engineer, Big Data','49','20','13','0','7',to_timestamp('22-NOV.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'767139');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('44','Sr. Business Data Analyst','18','30','9','0','10',to_timestamp('22-NOV.  -29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'562070');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('45','Clinical Site Monitor','35','46','17','1','21',to_timestamp('22-NOV.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'346186');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('46','Product QA Engineer','15','30','20','0','19',to_timestamp('22-NOV.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'399129');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('47','System Support Administrator','33','11','19','0','12',to_timestamp('22-JÚL.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'639414');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('48','Java Developer (Ecommerce)','52','52','6','0','20',to_timestamp('22-OKT.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'271180');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('62','Sr. JavaScript Developer','32','53','4','0','22',to_timestamp('22-NOV.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'298586');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('63','Planner/Scheduler','36','15','14','0','2',to_timestamp('22-OKT.  -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'651022');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('64','Technical Infrastructure Project Manager','44','18','22','1','17',to_timestamp('22-SZEPT.-17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'262883');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('65','Business Analyst','12','9','15','0','16',to_timestamp('22-DEC.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'358449');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('66','Project Coordinator','21','13','8','0','23',to_timestamp('22-JÚL.  -19 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'236176');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('67','Sr Service Delivery Systems Administrator (DevOps) - 16-01286','26','11','23','0','8',to_timestamp('22-JÚL.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'611117');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('68','Oracle Business Systems Analyst','3','7','13','1','13',to_timestamp('22-DEC.  -04 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'371428');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('69','Sr. EDI Business Analyst','20','37','9','0','5',to_timestamp('22-SZEPT.-22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'695585');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('70','Scientific Software Specialist and BA','16','25','17','0','11',to_timestamp('22-OKT.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'610455');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('71','Linux Engineer','6','71','20','1','15',to_timestamp('22-JÚN.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'473239');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('72','Front end-UI developer/UI-Web designer','31','69','19','0','1',to_timestamp('22-DEC.  -12 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'211685');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('73','IT Ops Support','14','73','6','0','7',to_timestamp('22-JÚN.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'680295');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('74','Senior Product Manager, Pricing - Fulfillment By Amazon','22','63','16','0','10',to_timestamp('22-SZEPT.-29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'459051');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('75','Infrastructure Production Developer','38','71','21','1','21',to_timestamp('22-DEC.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'501222');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('76','C#.NET Client/Server Developer','1','60','18','0','19',to_timestamp('22-DEC.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'789893');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('77','Business Systems Analyst','45','76','2','0','12',to_timestamp('22-NOV.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'598070');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('78','Software Infrastructure C++ Developer','48','15','24','1','20',to_timestamp('22-OKT.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'352259');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('49','Geolocation Engineer','30','2','16','0','6',to_timestamp('22-SZEPT.-27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'546908');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('50','Director of Product Development','8','21','21','0','9',to_timestamp('22-DEC.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'736074');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('51','Business Intelligence Development Manager','46','16','18','0','19',to_timestamp('22-NOV.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'720222');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('52','Senior. NET Developer (Temp-to-Perm)','19','62','2','0','12',to_timestamp('22-JÚL.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'560103');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('53','Frontend/UI Developer','37','8','24','0','20',to_timestamp('22-SZEPT.-08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'324899');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('54','Domestic Outsourcing Business Development Executive','23','63','10','0','6',to_timestamp('22-OKT.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'259622');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('55','Web Developer','39','55','1','0','9',to_timestamp('22-NOV.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'266069');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('56','Senior Full Stack Developer','11','34','5','0','25',to_timestamp('22-JÚL.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'257685');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('57','Jr Business Analysts','5','22','7','1','18',to_timestamp('22-NOV.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'664729');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('58','Manager - GFS','4','36','11','0','14',to_timestamp('22-SZEPT.-26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'724763');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('59','Java Full Stack Engineer (Angular JS is must)','7','17','3','0','24',to_timestamp('22-OKT.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'205795');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('60','Windows Administrator','51','2','25','1','3',to_timestamp('22-DEC.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'333788');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('61','Software Engineer (Algorithm)','9','61','12','0','4',to_timestamp('22-DEC.  -15 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'432541');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('79','Account Manager','54','65','10','1','6',to_timestamp('22-NOV.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'544037');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('80','Technical Recruiter','2','22','1','0','9',to_timestamp('22-AUG.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'462763');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('81','Senior Technical Writer','28','24','5','0','25',to_timestamp('22-SZEPT.-13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'602764');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('82','Sr. Quality Assurance Test Analyst','47','46','7','0','18',to_timestamp('22-OKT.  -04 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'564258');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('83','Business Systems Analyst III','10','25','11','0','14',to_timestamp('22-OKT.  -02 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'321194');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('84','Automated Test Engineer','17','65','3','0','24',to_timestamp('22-DEC.  -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'650619');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('85','Senior Drupal Developer','24','26','25','1','3',to_timestamp('23-JAN.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'202385');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('86','Senior Devops Engineer (Contract)','50','45','12','0','4',to_timestamp('22-DEC.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'425055');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('87','Capacity Planning Engineer - 11350','53','50','4','0','22',to_timestamp('22-AUG.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'213964');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('88','Data Center Virtualization Architect','27','48','14','0','2',to_timestamp('22-JÚL.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'338106');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('89','Procurement System Manager','40','48','22','0','17',to_timestamp('22-AUG.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'227232');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('90','Sr. Information Risk Management Analyst','43','27','15','0','16',to_timestamp('22-NOV.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'761131');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('91','Software Development Engineer','25','6','8','0','23',to_timestamp('22-JÚN.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'441574');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('92','Account Coordinator II','42','61','23','0','8',to_timestamp('22-JÚL.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'362941');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('93','Technical Lead Supply Chain - 12241','41','75','13','0','13',to_timestamp('22-NOV.  -11 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'288713');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('94','C++ Software Developer for Multi-Asset Risk System','34','34','9','0','5',to_timestamp('22-NOV.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'773908');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('95','Senior MySQL DBA','13','69','17','1','11',to_timestamp('22-OKT.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'281462');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('96','Manager of IS Network Engineers','29','16','20','0','15',to_timestamp('22-DEC.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'634545');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('97','(US)-Program Manager Senior','49','48','19','0','1',to_timestamp('22-JÚN.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'732633');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('98','Business Analyst - Mortgage/Equiting Lending, Lean Six Sigma Green Belt/Black Belt','18','20','6','0','7',to_timestamp('22-JÚL.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'559345');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('99','DHMSM Operational Medicine Interface Developer','35','25','16','1','10',to_timestamp('22-AUG.  -31 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'585123');
Insert into C##TESZT.ALLAS (ID,ALLAS_NEVE,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('100','Information Technology Architect','15','42','21','1','21',to_timestamp('22-JÚN.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'),'732514');
REM INSERTING into C##TESZT.DIAK_FELHASZNALO
SET DEFINE OFF;
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('1','117','12',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('2','120','14',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('3','121','13','6');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('4','123','10',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('5','126','11',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('6','127','15',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('7','128','11',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('8','129','9',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('9','131','9',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('10','132','2',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('11','133','14',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('12','135','7',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('13','137','10','9');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('14','139','10',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('15','144','2','5');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('16','145','10',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('17','148','1',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('18','153','9','13');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('19','155','12',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('20','159','10','27');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('21','160','4',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('22','166','2','14');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('23','168','4',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('24','170','8',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('25','171','1','20');
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('26','173','8',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('27','176','3',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('28','177','12',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('29','178','11',null);
Insert into C##TESZT.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('30','181','5','28');
REM INSERTING into C##TESZT.DIAKSZOVETKEZET
SET DEFINE OFF;
Insert into C##TESZT.DIAKSZOVETKEZET (ID,NEV) values ('1','Diák-Meló Szövetkezet');
Insert into C##TESZT.DIAKSZOVETKEZET (ID,NEV) values ('2','Diák-Mind Szövetkezet');
Insert into C##TESZT.DIAKSZOVETKEZET (ID,NEV) values ('3','Fürgeláb Szövetkezet');
Insert into C##TESZT.DIAKSZOVETKEZET (ID,NEV) values ('4','Dolgos Diák Szövetkezet');
Insert into C##TESZT.DIAKSZOVETKEZET (ID,NEV) values ('5','DiákJobs Szövetkezet');
REM INSERTING into C##TESZT.DIAKSZOVETKEZETNEL_VAN
SET DEFINE OFF;
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','1');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','2');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','3');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','4');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','5');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','6');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','7');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','8');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','9');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','10');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','11');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','12');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','13');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','14');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','15');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','16');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','17');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','18');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','19');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','20');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','21');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','22');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','23');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','24');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','25');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','26');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','27');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','28');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','29');
Insert into C##TESZT.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','30');
REM INSERTING into C##TESZT.EGYEB_FELTETELEK
SET DEFINE OFF;
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('1','0','3','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('2','1','1','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('3','0','5','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('4','1','2','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('5','1','3','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('6','1','4','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('7','0','4',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('8','0','1','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('9','0','3',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('10','1','1',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('11','0','3','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('12','0','5','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('13','1','1','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('14','0','1',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('15','1','0','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('16','1','3','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('17','0','5','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('18','1','0','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('19','1','3',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('20','1','4',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('21','0','0','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('22','0','2','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('23','0','0','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('24','0','0','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('25','1','0','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('26','0','4','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('27','0','2','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('28','1','4','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('29','0','2','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('30','0','3','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('31','0','4','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('32','0','4','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('33','0','5','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('34','1','5',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('35','1','1','Legalább egy előző munkahely');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('36','1','5','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('37','0','1','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('38','0','5',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('39','0','2','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('40','1','4','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('41','1','3','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('42','0','1','Aktív hallgatói jogviszony');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('43','1','0',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('44','1','2',null);
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('45','0','4','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('46','0','3','Érvényes számlaszám');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('47','0','1','Szakképesítés');
Insert into C##TESZT.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('48','1','3','Aktív hallgatói jogviszony');
REM INSERTING into C##TESZT.FIOKADATOK
SET DEFINE OFF;
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('1','admin@admin.com','admin',null,null,'1');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('2','heroine@outlook.com','yseYHG8v2B','2','83','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('3','panolex@sbcglobal.net','7MNp25f3nA','2','100','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('4','alias@icloud.com','4C3qZv9ENS','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('5','weidai@gmail.com','qRpTbUC6BX','2','3','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('6','elflord@sbcglobal.net','Cn6Dt2cTj4','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('7','yzheng@yahoo.com','zgXaxf6nNe','2','48','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('8','stevelim@aol.com','Q3fdhDgNCL','2','40','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('9','houle@att.net','Kg8Fs2D9n5','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('10','dinther@msn.com','UgYG3eFSaM','2','20','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('11','lstein@icloud.com','8ZFRExvbAk','2','85','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('12','thaljef@msn.com','JCaE4GABcw','2','9','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('13','gboss@icloud.com','szYFLSrR7D','2','2','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('14','campbell@outlook.com','JGH5mQj9tF','2','35','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('15','muadip@outlook.com','Kfejy4mnvq','2','92','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('16','portele@comcast.net','gr6KV5b2j3','2','31','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('17','geeber@verizon.net','4KvsjkrEhP','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('18','munson@outlook.com','jFugYB5TrV','2','41','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('19','mglee@msn.com','rC3xdptWUN','2','91','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('20','sravani@comcast.net','8ANMCgYwBX','2','4','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('21','brbarret@gmail.com','B7DZSFhLa3','2','15','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('22','donev@aol.com','PFe6tGBVRL','2','69','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('23','nasor@att.net','Y2ywEDPRav','2','1','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('24','rfoley@aol.com','QfBL9vRrhS','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('25','njpayne@comcast.net','nW5v9QYR2p','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('26','mgemmons@optonline.net','Q2rc79RLMK','2','10','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('27','rwelty@live.com','HPZtdN4w5D','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('28','sartak@yahoo.ca','MT2PUcuRre','2','79','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('29','dialworld@hotmail.com','Su5Havx8wp','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('30','johnbob@verizon.net','YuLDs9c7zb','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('31','luvirini@sbcglobal.net','LPvTnJC6HK','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('32','jbailie@optonline.net','2uJcFRrh5Q','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('33','danneng@live.com','nHGKZq8P5D','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('34','conteb@aol.com','VTLmF5eBsN','2','93','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('35','kewley@sbcglobal.net','cSF78YvyZe','2','24','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('36','suresh@comcast.net','Jc4DgFmd6j','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('37','denism@yahoo.ca','2DgxzvtLR9','2','8','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('38','jonas@outlook.com','ZqKTuA9S6m','2','38','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('39','munson@aol.com','LdFwtK7aZY','2','46','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('40','donev@icloud.com','K6CXvDWhuq','2','78','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('41','aibrahim@me.com','DhgrPUw7ab','2','53','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('42','balchen@att.net','mjR8FrptJQ','2','44','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('43','improv@yahoo.com','nLHcVpsx5y','2','58','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('44','mchugh@icloud.com','AQ93Zba7hH','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('45','vmalik@msn.com','wAJy7SkHaC','2','43','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('46','thomasj@yahoo.ca','NnE8J3CfkG','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('47','thrymm@att.net','sKkQr38FmH','2','72','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('48','eidac@aol.com','zsBVt3dFDH','2','34','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('49','bartlett@yahoo.com','z7xTg5yHsq','2','97','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('50','rkobes@msn.com','nf8uCWAwLK','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('51','fairbank@mac.com','8VbsgqChQz','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('52','jonathan@gmail.com','NhKU7FLgWv','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('53','kramulous@aol.com','f6wymY52ek','2','51','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('54','muzzy@comcast.net','5Kc4EprFMZ','2','6','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('55','spadkins@yahoo.com','j6zHr9RXyA','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('56','petersko@gmail.com','aL9ZjNDdcG','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('57','pspoole@gmail.com','ex3NsBdptu','2','80','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('58','jdhildeb@icloud.com','zWqU7r385M','2','26','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('59','jeteve@live.com','wEHhUMuxD2','2','87','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('60','kayvonf@att.net','fsnNV3mrKz','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('61','parents@outlook.com','L8f5kKXwpx','2','42','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('62','zilla@yahoo.com','TfRrUCaXF6','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('63','mbrown@icloud.com','N54jRFc2ZE','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('64','hikoza@optonline.net','UrLE4kVYtn','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('65','curly@live.com','cPCGBu2xFQ','2','16','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('66','crowl@yahoo.ca','94kvZm5eS3','2','37','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('67','djpig@yahoo.com','bxP8f5yWs2','2','5','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('68','gozer@yahoo.ca','v7wj9qDt4F','2','59','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('69','bartlett@optonline.net','2Jv6nt8Dbm','2','95','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('70','panolex@gmail.com','NPXvf2wqsU','2','62','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('71','mosses@icloud.com','XK5CMb2cQs','2','61','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('72','jandrese@sbcglobal.net','CVmY2bgNHQ','2','63','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('73','bastian@hotmail.com','bywUGdZgE8','2','19','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('74','rwelty@yahoo.ca','sjJT8zdY26','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('75','aracne@msn.com','DJ5cLuaZx3','2','7','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('76','bescoto@sbcglobal.net','HX5w34CWbQ','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('77','magusnet@verizon.net','y9n8CmBA25','2','74','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('78','duncand@optonline.net','RKMU5YymEs','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('79','goresky@sbcglobal.net','pdUQr8Rjwt','2','89','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('80','jonathan@gmail.com','tYPEn6yzXZ','2','55','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('81','dawnsong@gmail.com','eFGSRz42pn','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('82','jusdisgi@outlook.com','7QbeFqhH4M','2','82','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('83','aschmitz@gmail.com','BrMzKtb5aN','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('84','kmiller@gmail.com','yEfxDNLkV6','2','88','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('85','mkearl@verizon.net','9nuZ3EfKFC','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('86','chance@hotmail.com','PLvmTtqHs6','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('87','fmerges@msn.com','pLcGhakAN5','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('88','fallorn@yahoo.com','v5zTtywgC6','2','39','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('89','bigmauler@verizon.net','QEGA5VSb7K','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('90','dsugal@mac.com','kAbWhU4gKQ','2','54','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('91','shrapnull@live.com','tUg2eMnQGj','2','98','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('92','makarow@gmail.com','AY2Rfyh7WZ','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('93','cfhsoft@optonline.net','3JdEZC7g2H','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('94','crowl@yahoo.com','7tTvnEpsx9','2','75','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('95','mcnihil@sbcglobal.net','NKSshByL6f','2','32','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('96','hllam@aol.com','7MpReWSzuJ','2','45','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('97','laird@me.com','CaqDudx3cV','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('98','qrczak@sbcglobal.net','CsWJRbg4zd','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('99','scarlet@verizon.net','d5Qmwr3xn4','2','22','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('100','ivoibs@aol.com','4SVzTkQC8j','2','23','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('101','fmerges@mac.com','ve7kjcnMQA','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('102','gamma@msn.com','fP6EU83vAg','2','12','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('103','maradine@mac.com','Y9yJUpMEvq','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('104','rmcfarla@sbcglobal.net','e4zPJKshrc','2','65','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('105','crusader@live.com','wQba5DKqPZ','2','94','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('106','bmorrow@sbcglobal.net','RVP5npMCvE','2','76','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('107','gmcgath@verizon.net','pmF4q2MetY','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('108','rmcfarla@sbcglobal.net','2HkqQYWZgR','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('109','houle@comcast.net','NX8gzDfMFv','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('110','mbrown@live.com','HwymTeV38d','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('111','durist@msn.com','5dKywtUnxN','2','50','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('112','dpitts@yahoo.ca','xrFWkbvKR8','2','77','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('113','bartlett@aol.com','nCzMjtp83E','2','29','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('114','odlyzko@comcast.net','Le4dJN7pPH','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('115','lstein@yahoo.com','gCkMDBQpq9','2','33','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('116','keiji@aol.com','TqQ9W3NsSU','2','96','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('117','dogdude@live.com','KRgWsL9YXv','3','64','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('118','jesse@outlook.com','fEhtm87zHd','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('119','rmcfarla@att.net','G7TV8uD34E','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('120','burns@comcast.net','rKL4gNAX3W','3','70','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('121','joglo@gmail.com','M4YFCv3bXG','3','66','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('122','farber@sbcglobal.net','54jmFpGxM2','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('123','kudra@aol.com','7RJCr85mwx','3','27','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('124','erynf@comcast.net','9YB64EUgRP','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('125','arachne@icloud.com','BFUD7usndj','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('126','cantu@sbcglobal.net','kgvMW6LVC9','3','57','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('127','scarlet@hotmail.com','xcemtY5Ggs','3','21','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('128','microfab@msn.com','pVZgYHQ2Mn','3','56','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('129','ilikered@aol.com','st3jvHMpZB','3','71','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('130','sburke@live.com','ZHhwtKrq7F','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('131','bockelboy@yahoo.com','Tf2rGMNWPw','3','84','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('132','overbom@att.net','7cSXFqQkaG','3','14','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('133','kiddailey@icloud.com','L7BtqTQjWp','3','13','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('134','jadavis@mac.com','5wxRbsJfQA','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('135','wagnerch@comcast.net','ZxsRywQv28','3','90','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('136','lamprecht@att.net','WuJEAH3US9','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('137','formis@yahoo.com','3sEbHpfjqr','3','36','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('138','crowemojo@att.net','yGsuhfa4Tr','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('139','jfinke@aol.com','LVwfS36Jhr','3','47','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('140','rtanter@mac.com','n9fzLXUmuY','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('141','pemungkah@icloud.com','3WpXH5DyfG','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('142','aibrahim@optonline.net','hmNH8MyWgF','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('143','rcwil@msn.com','UqjPDyQXf2','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('144','sisyphus@optonline.net','ZBVkXsH3GL','3','67','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('145','nimaclea@hotmail.com','aeU24WSdFT','3','73','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('146','eurohack@att.net','G4UJQpgRYr','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('147','pkplex@verizon.net','8pRqegf3SU','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('148','jbailie@yahoo.com','q3rm7yHgpu','3','81','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('149','stomv@comcast.net','PLgy5dTp3f','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('150','timtroyr@me.com','WZj3JG2xKm','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('151','tmccarth@hotmail.com','2K5AxJHmha','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('152','eabrown@mac.com','DyAd6YHqG9','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('153','cyrus@mac.com','KtaRL4AEhP','3','49','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('154','jfmulder@yahoo.com','sD28mT36By','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('155','dunstan@gmail.com','T8vHZeCp9j','3','68','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('156','bester@mac.com','tQPUjyRT9F','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('157','plover@att.net','TP2yHYgCW6','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('158','isotopian@yahoo.ca','qc3rjW8Hew','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('159','pkilab@att.net','sTz5e7849w','3','28','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('160','vlefevre@comcast.net','Vz8wXS9Q6N','3','17','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('161','janneh@mac.com','MNJbs6wQ2C','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('162','kassiesa@live.com','Epn3dGw9zN','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('163','fluffy@verizon.net','UGW6QH7gap','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('164','schwaang@gmail.com','aDJ3uEbwVK','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('165','hahiss@aol.com','eZjA8XKNSV','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('166','goresky@optonline.net','4vALJzuEFt','3','86','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('167','pemungkah@me.com','YPXEM6zD2u','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('168','matsn@msn.com','P3U8KgHcDq','3','30','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('169','hoyer@yahoo.com','WfES9VkLAc','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('170','dburrows@optonline.net','DTge3CWBSU','3','100','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('171','symbolic@mac.com','7dLjWNhH2b','3','11','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('172','andrei@yahoo.com','LDxygrm7fp','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('173','zeller@icloud.com','7X428WNTKw','3','99','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('174','moinefou@msn.com','2vTLWkwaVm','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('175','thaljef@att.net','kjN3p4yGHv','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('176','pdbaby@yahoo.ca','jcdGEKqYP7','3','18','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('177','pedwards@yahoo.ca','P2rS8WFfKn','3','52','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('178','aibrahim@me.com','QqHB6nbcD3','3','60','0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('179','mallanmba@me.com','QnMqJ7HvmB','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('180','rgarcia@optonline.net','ph6KQWeaF4','1',null,'0');
Insert into C##TESZT.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('181','jimmichie@verizon.net','hN64u5arLD','3','25','0');
REM INSERTING into C##TESZT.HELYSZIN
SET DEFINE OFF;
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('1','Magyarország','Budapest','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('2','Magyarország','Debrecen','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('3','Magyarország','Szeged','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('4','Magyarország','Pécs','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('5','Magyarország','Sopron','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('6','Magyarország','Szombathely','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('7','Magyarország','Kecskemét','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('8','Magyarország','Siófok','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('9','Magyarország','Miskolc','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('10','Magyarország','Győr','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('11','Magyarország','Szolnok','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('12','Magyarország','Kaposvár','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('13','Magyarország','Veszprém','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('14','Magyarország','Békéscsaba','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('15','Magyarország','Székesfehérvár','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('16','Magyarország','Baja','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('17','Magyarország','Cegléd','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('18','Magyarország','Csongrád','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('19','Magyarország','Gyula','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('20','Magyarország','Esztergom','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('21','Magyarország','Dunaújváros','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('22','Magyarország','Dunakeszi','1');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('23','Magyarország','Érd','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('24','Magyarország','Hatvan','0');
Insert into C##TESZT.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('25','Magyarország','Hódmezővásárhely','0');
REM INSERTING into C##TESZT.HIRDETO
SET DEFINE OFF;
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('1','4','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('2','6','22');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('3','9','1');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('4','17','4');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('5','24','10');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('6','25','14');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('7','27','26');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('8','29','1');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('9','30','20');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('10','31','16');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('11','32','10');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('12','33','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('13','36','12');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('14','44','8');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('15','46','21');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('16','50','29');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('17','51','25');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('18','52','1');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('19','55','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('20','56','7');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('21','60','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('22','62','25');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('23','63','27');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('24','64','7');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('25','74','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('26','76','22');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('27','78','13');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('28','81','24');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('29','83','30');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('30','85','4');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('31','86','24');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('32','87','12');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('33','89','2');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('34','92','25');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('35','93','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('36','97','26');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('37','98','28');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('38','101','1');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('39','103','19');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('40','107','6');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('41','108','23');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('42','109','11');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('43','110','26');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('44','114','7');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('45','118','28');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('46','119','29');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('47','122','10');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('48','124','9');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('49','125','25');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('50','130','5');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('51','134','19');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('52','136','30');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('53','138','22');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('54','140','7');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('55','141','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('56','142','3');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('57','143','17');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('58','146','20');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('59','147','19');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('60','149','4');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('61','150','12');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('62','151','26');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('63','152','26');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('64','154','23');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('65','156','2');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('66','157','29');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('67','158','17');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('68','161','27');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('69','162','24');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('70','163','20');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('71','164','24');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('72','165','7');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('73','167','19');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('74','169','17');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('75','172','30');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('76','174','19');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('77','175','18');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('78','179','21');
Insert into C##TESZT.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('79','180','22');
REM INSERTING into C##TESZT.ISKOLA
SET DEFINE OFF;
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('1','Állatorvostudományi Egyetem','2024');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('2','Bolyai János Gimnázium','2023');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('3','Kandó Kálmán Szakközépiskola','2025');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('4','Állatorvostudományi Egyetem','2026');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('5','Szegedi Tudományegyetem','2023');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('6','Szegedi Tudományegyetem','2026');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('7','Bolyai János Gimnázium','2024');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('8','Szegedi Tudományegyetem','2022');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('9','Kandó Kálmán Szakközépiskola','2023');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('10','Állatorvostudományi Egyetem','2027');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('11','Állatorvostudományi Egyetem','2022');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('12','Bolyai János Gimnázium','2024');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('13','Szegedi Tudományegyetem','2022');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('14','Kandó Kálmán Szakközépiskola','2025');
Insert into C##TESZT.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('15','Állatorvostudományi Egyetem','2026');
REM INSERTING into C##TESZT.JELENTKEZOK
SET DEFINE OFF;
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('14','4');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('93','49');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('13','11');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('37','29');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('64','38');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('71','60');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('65','11');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('15','62');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('7','45');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('9','25');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('56','56');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('63','28');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('39','68');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('73','34');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('18','18');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('36','21');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('73','19');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('97','51');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','31');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('57','24');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('75','67');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('72','49');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('15','45');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('48','71');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('22','42');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('29','67');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('31','27');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('19','68');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('11','35');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('72','71');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('35','54');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('53','28');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('65','56');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('34','55');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('12','4');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('9','64');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('3','18');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('63','19');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('82','37');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('69','55');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('97','68');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('96','42');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('57','44');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('1','43');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('52','17');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('28','38');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('8','2');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('78','6');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('86','46');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('21','22');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('61','30');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('18','71');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('37','71');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','25');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('52','42');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('50','18');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('39','7');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('88','52');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('30','14');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('60','68');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('59','35');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('13','2');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('83','29');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('47','52');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('44','39');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('93','67');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('43','70');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','20');
Insert into C##TESZT.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('88','56');
REM INSERTING into C##TESZT.KAPCSOLAT
SET DEFINE OFF;
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('1','Gáspár Mihály','gasparmihaly@gmail.com','620516675');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('2','Veres Kálmán','vereskalman@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('3','Kelemen Ferenc','kelemenferenc@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('4','Fülöp Rajmund','fuloprajmund@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('5','Pataki Bálint','patakibalint@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('6','Tamás Márkó','tamasmarko@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('7','Molnár István','molnaristvan@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('8','Faragó Levente','faragolevente@gmail.com','61481971');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('9','Fehér Ákos','feherakos@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('10','Balázs Károly','balazskaroly@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('11','Székely Flórián','szekelyflorian@gmail.com','670574882');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('12','Vass Ádám','vassadam@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('13','Takács Gergő','takacsgergo@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('14','Molnár Dalma','molnardalma@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('15','Novák Lilla','novaklilla@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('16','Kis Georgina','kisgeorgina@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('17','Biró Dorka','birodorka@gmail.com','62091156');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('18','Takács Réka','takacsreka@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('19','Fülöp Regina','fulopregina@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('20','Gáspár Ágnes','gasparagnes@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('21','Jakab Dominika','jakabdominika@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('22','Egyed Kíra','egyedkira@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('23','Pintér Éva','pintereva@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('24','Vincze Sára','vinczeSara@gmail.com','2147483647');
Insert into C##TESZT.KAPCSOLAT (ID,NEV,EMAIL,TELEFON) values ('25','Halász Fruzsina','halaszfruzsina@gmail.com','2147483647');
REM INSERTING into C##TESZT.MUNKAKOR
SET DEFINE OFF;
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('1','Fizikai','Érettségi',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('2','Fizikai','Érettségi','27');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('3','Fizikai','Érettségi','21');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('4','Fizikai','Érettségi','46');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('5','Fizikai','Érettségi','47');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('6','Fizikai','8 Általános',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('7','Fizikai','8 Általános','1');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('8','Fizikai','8 Általános','22');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('9','Fizikai','8 Általános','31');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('10','Fizikai','8 Általános','15');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('11','Fizikai','8 Általános','38');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('12','Fizikai','8 Általános','10');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('13','Fizikai','8 Általános','37');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('14','Irodai','8 Általános','35');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('15','Irodai','8 Általános',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('16','Irodai','8 Általános','7');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('17','Irodai','Érettségi',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('18','Irodai','Érettségi','4');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('19','Irodai','Érettségi','2');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('20','Irodai','Érettségi','26');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('21','Irodai','Érettségi','8');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('22','Irodai','Érettségi','43');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('23','Irodai','Érettségi','16');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('24','Irodai','Diploma','44');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('25','Irodai','Diploma',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('26','Irodai','Diploma','41');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('27','Irodai','Diploma','33');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('28','Irodai','Diploma','34');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('29','Irodai','Diploma','39');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('30','Fizikai','Diploma','12');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('31','Fizikai','Diploma',null);
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('32','Fizikai','Diploma','18');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('33','Fizikai','Diploma','9');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('34','Fizikai','Diploma','6');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('35','Fizikai','Diploma','11');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('36','Fizikai','Diploma','45');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('37','Fizikai','Diploma','28');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('38','Fizikai','Diploma','23');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('39','Fizikai','Diploma','32');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('40','Fizikai','Diploma','17');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('41','Fizikai','Diploma','14');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('42','Fizikai','8 Általános','24');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('43','Fizikai','8 Általános','36');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('44','Fizikai','8 Általános','40');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('45','Fizikai','8 Általános','5');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('46','Fizikai','8 Általános','29');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('47','Irodai','Érettségi','20');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('48','Irodai','Érettségi','42');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('49','Irodai','Érettségi','30');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('50','Irodai','Diploma','13');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('51','Irodai','Diploma','19');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('52','Irodai','Diploma','3');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('53','Irodai','Diploma','25');
Insert into C##TESZT.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGSE_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('54','Irodai','Diploma','48');
REM INSERTING into C##TESZT.NORMAL_FELHASZNALO
SET DEFINE OFF;
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('1','2','50',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('2','3','55','22');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('3','5','39','21');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('4','7','83',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('5','8','8',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('6','10','5',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('7','11','11','12');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('8','12','81',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('9','13','51','3');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('10','14','95',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('11','15','67',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('12','16','72','19');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('13','18','35','28');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('14','19','42',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('15','20','82','20');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('16','21','25',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('17','22','24','25');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('18','23','82',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('19','26','64','14');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('20','28','47',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('21','34','39',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('22','35','10','28');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('23','37','49',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('24','38','56','1');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('25','39','93','18');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('26','40','72',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('27','41','36','6');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('28','42','70',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('29','43','36',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('30','45','59','5');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('31','47','64','30');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('32','48','14','20');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('33','49','9',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('34','53','20','17');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('35','54','11','9');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('36','57','64','11');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('37','58','78',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('38','59','8','4');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('39','61','24','25');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('40','65','84','21');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('41','66','12','7');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('42','67','12',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('43','68','65','25');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('44','69','91','27');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('45','70','28',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('46','71','93','22');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('47','72','17','10');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('48','73','37',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('49','75','47','10');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('50','77','49','29');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('51','79','78',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('52','80','55','11');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('53','82','24','13');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('54','84','21',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('55','88','58','5');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('56','90','63','25');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('57','91','44',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('58','94','37','1');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('59','95','37','26');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('60','96','20','17');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('61','99','70',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('62','100','78',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('63','102','69','11');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('64','104','43',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('65','105','76','1');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('66','106','70','14');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('67','111','64',null);
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('68','112','21','25');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('69','113','68','22');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('70','115','55','4');
Insert into C##TESZT.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('71','116','56','18');
REM INSERTING into C##TESZT.REGISZTRALT_ALLASOK
SET DEFINE OFF;
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('6','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('10','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('11','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('14','3');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('22','1');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('27','2');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('37','1');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('45','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('57','4');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('60','1');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('64','4');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('68','1');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('71','4');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('75','1');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('78','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('79','5');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('85','2');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('95','3');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('99','2');
Insert into C##TESZT.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('100','2');
REM INSERTING into C##TESZT.SZEMELYES_ADATOK
SET DEFINE OFF;
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('1','Váradi Alexander',to_timestamp('70-ÁPR.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('2','Kocsis Márk',to_timestamp('74-DEC.  -11 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('3','Király Péter',to_timestamp('76-AUG.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('4','Takács Gergely',to_timestamp('77-JÚN.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('5','Fekete Dénes',to_timestamp('79-MÁRC. -18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('6','Bogdán Benjamin',to_timestamp('80-JAN.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('7','Szőke Máté',to_timestamp('81-JÚL.  -03 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('8','SzÅ±ts Szilveszter',to_timestamp('82-NOV.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('9','Nemes Benjámin',to_timestamp('83-JAN.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('10','Balogh Géza',to_timestamp('84-NOV.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('11','Miksa Barnabás',to_timestamp('86-JAN.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('12','Papp Adrián',to_timestamp('87-JÚL.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('13','Fekete András',to_timestamp('93-JAN.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('14','László Bence',to_timestamp('93-JÚL.  -29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('15','Apród Ádám',to_timestamp('93-AUG.  -12 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('16','Faragó Kornél',to_timestamp('93-NOV.  -29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('17','Szekeres Károly',to_timestamp('94-JÚL.  -01 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('18','Sándor Patrik',to_timestamp('94-NOV.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('19','Szücs Dénes',to_timestamp('95-FEBR. -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('20','Váradi Barna',to_timestamp('96-MÁRC. -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('21','Kende Albert',to_timestamp('96-SZEPT.-15 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('22','Mezei Alex',to_timestamp('97-JÚN.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('23','Balogh Adrián',to_timestamp('00-AUG.  -03 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('24','Barna Ádám',to_timestamp('01-FEBR. -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('25','Tamás Vilmos',to_timestamp('01-MÁRC. -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('26','Zobor Benedek',to_timestamp('72-OKT.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('27','Bálint Máté',to_timestamp('73-SZEPT.-29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('28','Apród Dominik',to_timestamp('74-SZEPT.-19 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('29','Fehér Noel',to_timestamp('75-AUG.  -21 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('30','Illés Olivér',to_timestamp('78-JÚL.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('31','Balog Gergely',to_timestamp('78-AUG.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('32','Fazekas Tibor',to_timestamp('79-JAN.  -19 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('33','Balogh Donát',to_timestamp('79-NOV.  -22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('34','Veres Milán',to_timestamp('79-DEC.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('35','Csonka Renátó',to_timestamp('80-DEC.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('36','Lukács Levente',to_timestamp('84-JÚL.  -12 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('37','Bogdán Szilveszter',to_timestamp('85-FEBR. -18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('38','Dudás Kálmán',to_timestamp('89-SZEPT.-22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('39','Virág Vince',to_timestamp('91-AUG.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('40','Simon Benjámin',to_timestamp('92-MÁRC. -18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('41','Tamás Szilveszter',to_timestamp('92-JÚN.  -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('42','Soós István',to_timestamp('95-FEBR. -05 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('43','Papp Benjámin',to_timestamp('95-AUG.  -20 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('44','Szekeres Károly',to_timestamp('95-NOV.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('45','Orsós Gábor',to_timestamp('96-ÁPR.  -22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('46','Halász Ferenc',to_timestamp('97-SZEPT.-14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('47','Szabó Róbert',to_timestamp('99-MÁRC. -22 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('48','Vörös Lajos',to_timestamp('99-DEC.  -25 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('49','László Viktor',to_timestamp('00-MÁJ.  -27 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('50','Sípos Balázs',to_timestamp('00-JÚN.  -05 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('51','Csatár Patrícia',to_timestamp('72-ÁPR.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('52','Egyed Borbála',to_timestamp('76-OKT.  -29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('53','Török Erzsébet',to_timestamp('77-JAN.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('54','László Kitti',to_timestamp('77-ÁPR.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('55','Major Laura',to_timestamp('78-JÚL.  -31 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('56','Németh Vanda',to_timestamp('79-OKT.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('57','Bálint Viktória',to_timestamp('79-NOV.  -08 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('58','Király Cintia',to_timestamp('83-AUG.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('59','Pap Éva',to_timestamp('83-SZEPT.-24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('60','Biró Petra',to_timestamp('83-OKT.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('61','Szalai Fanni',to_timestamp('83-DEC.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('62','Balázs Adrienn',to_timestamp('85-JÚN.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('63','Apród Nóra',to_timestamp('85-AUG.  -03 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('64','Kapolcs Anita',to_timestamp('86-SZEPT.-18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('65','Hegedüs Éva',to_timestamp('88-MÁRC. -28 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('66','Máté Adél',to_timestamp('92-MÁJ.  -06 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('67','Magyar Gréta',to_timestamp('92-AUG.  -11 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('68','Székely Ivett',to_timestamp('94-MÁJ.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('69','Egyed Judit',to_timestamp('95-JAN.  -15 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('70','Németh Virág',to_timestamp('95-JÚN.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('71','Pap Zita',to_timestamp('95-SZEPT.-26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('72','Fodor Dorottya',to_timestamp('96-NOV.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('73','Juhász Anna',to_timestamp('98-NOV.  -13 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('74','Székely Bettina',to_timestamp('00-MÁJ.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('75','Fekete Petra',to_timestamp('00-JÚN.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('76','Király Zsófia',to_timestamp('70-AUG.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('77','Jónás Rebeka',to_timestamp('73-JAN.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('78','Kovács Noémi',to_timestamp('73-DEC.  -30 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('79','Antal Flóra',to_timestamp('74-DEC.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('80','Barta Veronika',to_timestamp('75-OKT.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('81','Faragó Petra',to_timestamp('75-NOV.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('82','Balla Mercédesz',to_timestamp('76-ÁPR.  -05 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('83','Fülöp Dóra',to_timestamp('78-ÁPR.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('84','Török Anna',to_timestamp('81-OKT.  -10 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('85','Pataki Vivien',to_timestamp('82-JÚN.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('86','Szekeres Klaudia',to_timestamp('83-AUG.  -26 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('87','Balázs Lili',to_timestamp('84-ÁPR.  -15 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('88','Gál Barbara',to_timestamp('84-AUG.  -17 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('89','Fazekas Regina',to_timestamp('85-ÁPR.  -16 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('90','Orsós Dalma',to_timestamp('85-ÁPR.  -18 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('91','Antal Zita',to_timestamp('85-NOV.  -24 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('92','Pál Nikolett',to_timestamp('86-AUG.  -23 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('93','Simon Vivien',to_timestamp('87-MÁJ.  -07 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('94','Szalai Natália',to_timestamp('89-SZEPT.-29 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('95','Váradi Evelin',to_timestamp('92-AUG.  -20 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('96','Kerekes Virág',to_timestamp('94-ÁPR.  -09 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('97','Oláh Réka',to_timestamp('95-AUG.  -31 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('98','Barta Bernadett',to_timestamp('95-NOV.  -04 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('99','Jónás Dorina',to_timestamp('97-ÁPR.  -14 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
Insert into C##TESZT.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('100','Orosz Mária',to_timestamp('98-ÁPR.  -19 00.00.00,000000000','RR-MON-DD HH24.MI.SSXFF'));
REM INSERTING into C##TESZT.VALLALAT
SET DEFINE OFF;
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('1','Digital Intelligence Systems, LLC','Chantelle Workman','664283306','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('2','University of Chicago/IT Services','Zaine Powers','376467583','5');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('3','Galaxy Systems, Inc.','Kingston Easton','125007618','5');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('4','TransTech LLC','Eddison Fields','132876152','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('5','Matrix Resources','Kyal Mora','340995392','4');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('6','Yash Technologies','Evie-Mai Dean','948377827','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('7','Noble1','Ameena Arellano','734234738','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('8','Bluebeam Software, Inc.','Misbah Brookes','387060163','1');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('9','Genesis10','Amira Dennis','276888031','5');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('10','VanderHouwen & Associates, Inc.','Alena Ahmed','109582896','5');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('11','Maxonic, Inc.','Iona Sutherland','920635916','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('12','CSI (Consultant Specialists Inc.)','Mary Tillman','231829834','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('13','Eastridge Workforce Solutions','Umayr Duggan','734650775','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('14','Collabera','Alayah Stevens','132932128','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('15','Fahrenheit IT Staffing & Consulting','Cecilia Hudson','898213739','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('16','Avesta Computer Services','Samantha Moody','650629952','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('17','Amazon','Calista Head','361453390','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('18','ReqRoute, Inc','Willow Bull','638187944','2');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('19','Turnberry Solutions','Lucinda Dawson','751963708','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('20','Alpha Recruitment','Eshan Osborne','690987693','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('21','Etouch Systems Corp','Emelia Lancaster','564598055','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('22','Centizen','Payton Luna','620070215','1');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('23','Mygo Consulting','Cristian Bentley','24232819','3');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('24','Alpha Consulting Corp.','Tyler-Jay Singleton','819990547','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('25','Ascent','Ismaeel Pearce','936106096','2');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('26','Amerit Consulting','Meerab Rudd','216242848','4');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('27','Tellus Solutions','Teri Herman','804244313','0');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('28','Stratitude Inc','Carson Henderson','153775101','1');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('29','Xoriant Corporation','Ember Garner','678025933','1');
Insert into C##TESZT.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('30','iSpace, Inc','Mckenzie Huber','328038583','0');
REM INSERTING into C##TESZT.VEGZETTSEG
SET DEFINE OFF;
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('1','Egyetem, BSC','Bridgeport International Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('2','Technikum','Carmel Acadmey');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('3','Egyetem, MSC','Country Kids Club');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('4','Egyetem, MSC','Eagle Hill School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('5','Technikum','Easton Country Day School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('6','Egyetem, BSC','Fairfield County Sda School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('7','Szakközépiskola','Fraser Woods Montessori School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('8','Egyetem, BSC','Giant Steps Connecticut');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('9','Egyetem, BSC','Housatonic Valley Waldorf School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('10','Gimnázium','Landmark Preschool');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('11','Egyetem, BSC','Abercorn International School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('12','Gimnázium','Landmark Preschool');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('13','Szakközépiskola','Our Lady Of Grace Nursery School & Kindergarten');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('14','Egyetem, BSC','Our Lady Star Of The Sea School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('15','Egyetem, MSC','Pierrepont School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('16','Gimnázium','St Catherine Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('17','Egyetem, MSC','St Jude School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('18','Egyetem, BSC','St Mary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('19','Gimnázium','St Theresa School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('20','Technikum','St Vincent''s Special Needs Services');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('21','Egyetem, MSC','The Canaan Ridge School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('22','Technikum','The Greenwich Japanese School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('23','Egyetem, MSC','The Stanwich School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('24','Egyetem, BSC','Trinity Catholic Middle');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('25','Technikum','Villa Maria Education Center');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('26','Gimnázium','Whitby School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('27','Egyetem, BSC','Wooster School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('28','Egyetem, MSC','Little Wonders Of Baybrook Baptist');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('29','Technikum','Llano Christian Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('30','Gimnázium','Logos Preparatory School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('31','Egyetem, MSC','Macedonian Christian Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('32','Technikum','Mainland Christian Academy Inc.');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('33','Technikum','Marble Falls First Baptist Christian School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('34','Egyetem, BSC','Masterpiece Bilingual Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('35','Egyetem, BSC','Mesorah High School For Girls');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('36','Egyetem, BSC','Midland Classical Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('37','Egyetem, MSC','Montessori Country Day School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('38','Gimnázium','Montessori School Of Sugar Land');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('39','Egyetem, BSC','Morning Star Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('40','Egyetem, BSC','Mosaic Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('41','Technikum','All Saints Catholic School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('42','Gimnázium','American School For The Deaf');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('43','Egyetem, BSC','Brunswick School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('44','Technikum','Catholic Academy Of Bridgeport/st Raphael Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('45','Szakközépiskola','Christian Heritage School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('46','Egyetem, BSC','Christian Life Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('47','Gimnázium','Eagle Hill - Southport');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('48','Egyetem, MSC','Fairfield College Preparatory');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('49','Egyetem, BSC','Fairfield Country Day School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('50','Egyetem, MSC','Great Beginnings Montessori School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('51','Szakközépiskola','Greens Farms Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('52','Gimnázium','Greenwich Catholic School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('53','Gimnázium','Hudson Country Montessori School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('54','Egyetem, MSC','Immaculate High School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('55','Gimnázium','Immanuel Lutheran School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('56','Gimnázium','Kolbe Cathedral High School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('57','Technikum','Mooreland Hill School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('58','Technikum','Notre Dame Catholic High School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('59','Technikum','Pear Tree Point School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('60','Technikum','St Andrew Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('61','Technikum','St Ann Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('62','Szakközépiskola','St Augustine Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('63','Szakközépiskola','St Augustine School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('64','Egyetem, MSC','St Catherine Of Siena School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('65','Egyetem, BSC','St Cecilia Elementary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('66','Gimnázium','St Christopher School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('67','Egyetem, BSC','St Gregory The Great School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('68','Gimnázium','St James School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('69','Egyetem, BSC','St Joseph Elementary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('70','Gimnázium','St Joseph High School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('71','Egyetem, MSC','St Joseph School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('72','Technikum','St Lawrence Elementary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('73','Gimnázium','St Mary Elementary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('74','Egyetem, BSC','St Rose Of Lima School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('75','Szakközépiskola','St Thomas Aquinas Elementary School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('76','Egyetem, MSC','The Children''s School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('77','Egyetem, BSC','The Long Ridge School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('78','Egyetem, MSC','The Mead School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('79','Egyetem, BSC','The Montessori School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('80','Szakközépiskola','Trinity Catholic High School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('81','Egyetem, MSC','Assumption Early Learning Ce');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('82','Szakközépiskola','Avon Old Farms School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('83','Technikum','Ben Bronz Academy');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('84','Szakközépiskola','Clinical Day School - Manchester Memorial Hospital');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('85','Gimnázium','Community Child Guidance Clinic');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('86','Gimnázium','Enfield Montessori School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('87','Szakközépiskola','Ethel Walker School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('88','Szakközépiskola','Gengras Center/univ Of St Joseph');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('89','Egyetem, BSC','Hartford Area Sda School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('90','Egyetem, BSC','Hebrew High School Of New England');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('91','Egyetem, MSC','Heritage Christian School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('92','Egyetem, MSC','Intensive Education Academy In');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('93','Egyetem, BSC','Kingswood-oxford School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('94','Egyetem, MSC','Miss Porter''s School');
Insert into C##TESZT.VEGZETTSEG (ID,NEV,INTEZMENY) values ('95','Technikum','Montessori School Greater Hartford');
--------------------------------------------------------
--  DDL for Package MD_META
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."MD_META" 
AS
FUNCTION get_next_id RETURN NUMBER;
-- Following code taken directly from wwv_flow_random from APEX
--
-- seed random function
procedure srand( new_seed in number );

function rand return number;
pragma restrict_references( rand, WNDS  );

procedure get_rand( r OUT number );

function rand_max( n IN number ) return number;
pragma restrict_references( rand_max, WNDS);

procedure get_rand_max( r OUT number, n IN number );

function quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG) RETURN VARCHAR2;
END;

/
--------------------------------------------------------
--  DDL for Package MIGRATION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."MIGRATION" 
AS

-- Public functions
FUNCTION copy_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL,p_scratchModel BOOLEAN := FALSE) RETURN NUMBER;
FUNCTION transform_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE, p_prefixName VARCHAR2, p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY;
FUNCTION transform_datatypes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE, p_numbytesperchar INTEGER,  p_is12c VARCHAR2 := 'N') RETURN NUMBER;
FUNCTION transform_identity_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_is12c VARCHAR2 := 'N') RETURN NUMBER;
FUNCTION transform_rewrite_trigger(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER;
FUNCTION gatherConnectionStats(p_connectionId MD_CONNECTIONS.ID%TYPE,p_comments MD_CONNECTIONS.COMMENTS%TYPE) RETURN NUMBER;
PROCEDURE transform_clashes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE);
PROCEDURE populate_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE);
PROCEDURE revert_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE);
PROCEDURE remove_duplicate_foreignkeys(p_connectionid MD_CONNECTIONS.ID%TYPE);
PROCEDURE remove_unwanted_uniquekeys(p_connectionid MD_CONNECTIONS.ID%TYPE);
PROCEDURE uniquekey_constraint_columns(p_connectionid MD_CONNECTIONS.ID%TYPE);
END;

/
--------------------------------------------------------
--  DDL for Package MIGRATION_REPORT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."MIGRATION_REPORT" AS 
--get status
  FUNCTION getCaptureStatus(srcid IN NUMBER)  RETURN VARCHAR2;
  FUNCTION getConvertStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2;
  FUNCTION getGenerateStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2;
--migration details
  FUNCTION getDetails(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN MIGR_REPORT_DETAIL_TABLE PIPELINED; 
--migration summary
   FUNCTION getSum(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN MIGR_REPORT_SUM_TABLE PIPELINED;
END MIGRATION_REPORT;

/
--------------------------------------------------------
--  DDL for Package MIGRATION_TRANSFORMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."MIGRATION_TRANSFORMER" AS
FUNCTION check_identifier_length(p_ident VARCHAR2) RETURN VARCHAR2;
FUNCTION add_suffix(p_work VARCHAR2, p_suffix VARCHAR2, p_maxlen NUMBER) RETURN VARCHAR2;
FUNCTION check_reserved_word(p_work VARCHAR2) RETURN VARCHAR2;
FUNCTION sys_check(p_work VARCHAR2) RETURN VARCHAR2;
FUNCTION check_allowed_chars(p_work NVARCHAR2) RETURN NVARCHAR2;
FUNCTION transform_identifier(p_identifier NVARCHAR2)  RETURN NVARCHAR2;
FUNCTION getDisallowedCharsNames(p_work NVARCHAR2) RETURN VARCHAR2;
FUNCTION getNameForNullCase(p_work NVARCHAR2) RETURN NVARCHAR2;
PROCEDURE set_oracle_long_identifier(b_flag INT);
FUNCTION get_oracle_long_identifier RETURN NUMBER;
END;

/
--------------------------------------------------------
--  DDL for Package SQLSERVER_TSQL_TRANSLATOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."SQLSERVER_TSQL_TRANSLATOR" as

  procedure translate_sql(sql_text              in  clob,
                          translated_text       out clob);

  procedure translate_error(error_code          in  binary_integer,
                            translated_code     out binary_integer,
                            translated_sqlstate out varchar2);

end;

/
--------------------------------------------------------
--  DDL for Package SS2K5ALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."SS2K5ALLPLATFORM" AS 
                        FUNCTION StageCapture(projectId NUMBER, pluginClassIn VARCHAR2, projExists BOOLEAN:=FALSE, p_scratchModel BOOLEAN := FALSE) RETURN VARCHAR2;
                        FUNCTION amINewid(myc clob) return number; -- public function as called from sql
                        Function getPrecision(typein varchar2 , precisionin number, scalein number) return number; -- public function as called from sql
                        Function getnewscale(typein varchar2 , precisionin number, scalein number) return number; -- public function as called from sql
                        FUNCTION printUDTDef(basename VARCHAR2, p  NUMBER, s NUMBER,m NUMBER )  RETURN VARCHAR2; --public function used from sql                       
                        FUNCTION GetStatus(iid INTEGER) RETURN VARCHAR2;
END;

/
--------------------------------------------------------
--  DDL for Package SYB12ALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."SYB12ALLPLATFORM" AS 
	                     FUNCTION StageCapture(projectId NUMBER, pluginClassIn varchar2, pjExists BOOLEAN := FALSE, p_scratchModel BOOLEAN := FALSE) RETURN VARCHAR2;
	                     FUNCTION GetStatus(iid INTEGER) RETURN varchar2;
                         FUNCTION GetDescription(basename VARCHAR2, precisionin NUMBER, scalein NUMBER, lengthin NUMBER) RETURN VARCHAR2;
                         FUNCTION LOCALSUBSTRB(vin  VARCHAR2) RETURN VARCHAR2; 
	                    END; 

/
--------------------------------------------------------
--  DDL for Package TDALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C##TESZT"."TDALLPLATFORM" AS 
    FUNCTION StageCapture(p_projectId NUMBER,
                          p_pluginClassIn varchar2,
                          p_jExists BOOLEAN := FALSE,
                          p_scratchModel BOOLEAN := FALSE) RETURN VARCHAR2;
    FUNCTION GetStatus(iid INTEGER) RETURN varchar2;
END TDALLPLATFORM;

/
--------------------------------------------------------
--  DDL for Package Body MD_META
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."MD_META" AS

    multiplier constant number  := 22695477;
    increment  constant number  := 1;
    "2^32"     constant number  := 2 ** 32;
    "2^16"     constant number  := 2 ** 16;
    "0x7fff"   constant number  := 32767;
    Seed       number := 1;
    g_curr_val NUMBER DEFAULT NULL;
/*
 * Get the next available id for objectids.
 * @return the next id that can be used in objectid fields
 * This code is taken from wwv_flows
 */
FUNCTION get_next_id RETURN NUMBER
IS
BEGIN
/*
	select  to_number(
                 to_char(dbobjectid_sequence.nextval) ||
                      lpad( substr( abs(rand), 1, 5 ),5, '0' ) ||
                   ltrim(to_char(mod(abs(hsecs),1000000),'000000')))
    into    g_curr_val
    from   sys.v_$timer;

	select to_number(
				to_char(dbobjectid_sequence.nextval) ||
					lpad( substr( abs(rand), 1, 5 ), 5, '0') ||
				ltrim(to_char(mod(dbms_random.value(100000000000, 999999999999),1000000),'000000')))
    into    g_curr_val
	from dual;				
*/
	select dbobjectid_sequence.nextval
    into    g_curr_val
	from dual;	
    return g_curr_val;
END get_next_id;
-- Following code taken from wwv_flows_random 
 procedure srand( new_seed in number ) is
 begin
  Seed := new_seed;
 end srand;
--
  function rand return number is
    s number;
  begin
    seed := mod( multiplier * seed + increment, "2^32" );
    begin
       return bitand( seed/"2^16", "0x7fff" );
    --mhichwa
    exception when others then
       select dbobjectid_sequence.nextval into s from dual;
       return s||to_char(sysdate,'HH24MISS');
    end;
  end rand;
--
  procedure get_rand( r OUT number ) is
  begin
    r := rand;
  end get_rand;
--
  function rand_max( n IN number ) return number is
  begin
    return mod( rand, n ) + 1;
  end rand_max;
--
  procedure get_rand_max( r OUT number, n IN number )  is
  begin
    r := rand_max( n );
  end get_rand_max;

 FUNCTION quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG ) RETURN VARCHAR2
  AS
  v_plugin VARCHAR2(1000);
  v_result VARCHAR2(4000) :='';
  v_ldelim VARCHAR2(1);
  v_rdelim VARCHAR2(1);
  v_isCatalogRequired BOOLEAN;
  v_isSchemaRequired BOOLEAN;
  v_maxCharsToDelim INT;
  BEGIN
  -- get database type using connid
   SELECT lower(VALUE) 
   INTO v_plugin
   FROM MD_ADDITIONAL_PROPERTIES
   WHERE PROP_KEY = 'PLUGIN_ID'
   AND connection_id_fk = connid;

    -- get the delimeter
    IF      v_plugin like '%sybase12%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 28;
    ELSIF   v_plugin like '%sybase%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;    
            v_maxCharsToDelim := 300;
    ELSIF   v_plugin like '%sqlserver%' THEN 
            v_ldelim := '[';
            v_rdelim := ']';    
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF  v_plugin like '%msaccess%'  THEN
            v_ldelim := '[';
            v_rdelim := ']'; 
            v_isCatalogRequired := false;
            v_isSchemaRequired :=false;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%mysql%'    THEN
            v_ldelim :='`'; 
            v_rdelim :='`';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%db2%'        THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired := false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%teradata%'   THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSE
            v_ldelim :='[';
            v_rdelim :=']';
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    END IF;

    IF LENGTH(catalog) > v_maxCharsToDelim THEN
      v_result := v_result || catalog ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result || v_ldelim || catalog ||v_rdelim;
    END IF ;

    IF LENGTH(schema) > v_maxCharsToDelim THEN
      v_result := v_result || '.' || schema ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || schema || v_rdelim;
    END IF ;

    IF LENGTH(object) > v_maxCharsToDelim THEN
      v_result := v_result ||'.' || object ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || object ||v_rdelim;
    END IF;      


   return v_result; 
END quote;  

--
-- One time initialisation
begin
  select to_char(sysdate,'JSSSSS')
    into seed
    from dual;
end;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."MIGRATION" AS
/**
 * The migration package contains all of the PL/SQL Procedures and functions required by the migration
 * system.
 * @author Barry McGillin
 * @author Dermot Daly.
 */
--a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, 
--B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
TYPE DERIVATIVE_REC IS RECORD (
     schema_id          NUMBER,
     schema_name        VARCHAR2(4000 BYTE),
     catalog_id         NUMBER,
     catalog_name       VARCHAR2(4000 BYTE),
     dummy_flag         CHAR(1 BYTE),
     cap_type           CHAR(1 BYTE),    
     character_set      VARCHAR2(4000 BYTE),
     version_tag        VARCHAR2(40 BYTE)
     ); 

TYPE DERIVATIVE_REC2 IS RECORD (
     schemaid  NUMBER, 
     newid     NUMBER
);     

v_prefixName VARCHAR2(4) :=''; --text to prefix objects with ,set using transform_all_identifiers
-- Constants that are used throughout the package body.
C_CONNECTIONTYPE_CONVERTED   CONSTANT MD_CONNECTIONS.TYPE%TYPE := 'CONVERTED';
C_CONNECTIONTYPE_SCRATCH   CONSTANT MD_CONNECTIONS.TYPE%TYPE := 'SCRATCH'; -- enterprise capture/convert
-- Supported object types.
C_OBJECTTYPE_CONNECTIONS     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONNECTIONS';
C_OBJECTTYPE_CATALOGS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CATALOGS';
C_OBJECTTYPE_SCHEMAS         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SCHEMAS';
C_OBJECTTYPE_TABLES          CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TABLES';
C_OBJECTTYPE_COLUMNS         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_COLUMNS';
C_OBJECTTYPE_CNSTRNT_DETAILS CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONSTRAINT_DETAILS';
C_OBJECTTYPE_CONSTRAINTS     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONSTRAINTS';
C_OBJECTTYPE_INDEX_DETAILS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_INDEX_DETAILS';
C_OBJECTTYPE_INDEXES         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_INDEXES';
C_OBJECTTYPE_TRIGGERS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TRIGGERS';
C_OBJECTTYPE_VIEWS           CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_VIEWS';
C_OBJECTTYPE_USERS           CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USERS';
C_OBJECTTYPE_GROUP_MEMBERS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_GROUPMEMBERS';
C_OBJECTTYPE_GROUPS          CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_GROUPS';
C_OBJECTTYPE_OTHER_OBJECTS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_OTHER_OBJECTS';
C_OBJECTTYPE_TABLESPACES     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TABLESPACES';
C_OBJECTTYPE_UDDT            CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USER_DEFINED_DATA_TYPES';
C_OBJECTTYPE_STORED_PROGRAMS CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_STORED_PROGRAMS';
C_OBJECTTYPE_PACKAGES        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_PACKAGES';
C_OBJECTTYPE_SYNONYMS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SYNONYMS';
C_OBJECTTYPE_SEQUENCES       CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SEQUENCES';
C_OBJECTTYPE_PRIVILEGES      CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_PRIVILEGES';
C_OBJECTTYPE_USER_PRIVILEGES CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USER_PRIVILEGES';
-- Dummy flag for a dummy catalog.
C_DUMMYFLAG_TRUE             CONSTANT MD_CATALOGS.DUMMY_FLAG%TYPE := 'Y';
-- Flag in MD_DERIVATIVES to show if something has been transformed
C_TRANSFORMED_TRUE           CONSTANT MD_DERIVATIVES.TRANSFORMED%TYPE := 'Y';
-- Flag in MD_SYNONYMS.PRIVATE_VISIBILITY to highlight that a synonym is marked as private
C_SYNONYM_PRIVATE            CONSTANT MD_SYNONYMS.PRIVATE_VISIBILITY%TYPE := 'Y';
-- Flag in MD_GROUPS.GROUP_FLAG to show this is a role
C_ROLE_FLAG                  CONSTANT MD_GROUPS.GROUP_FLAG%TYPE := 'R';
-- Flag in MD_COLUMNS TO SHOW A COLUMN IS NULLABLE
C_NULLABLE_YES               CONSTANT MD_COLUMNS.NULLABLE%TYPE := 'Y';
-- Special defined additional properties.
C_PROPKEY_SEEDVALUE          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'SEEDVALUE';
C_PROPKEY_INCREMENT          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'INCREMENT';
C_PROPKEY_LASTVALUE          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'LASTVALUE';
C_PROPKEY_EXTENDEDINDEXTYPE	 CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'EXTENDEDINDEXTYPE';
C_PROPKEY_SEQUENCEID	       CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'SEQUENCEID';
C_PROPKEY_TRIGGER_REWRITE	   CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'TRIGGER_REWRITE';
C_PROPKEY_REAL_IDENTITY      CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'REALIDENTITY';
C_PROPKEY_ALREADY_IDENTITY   CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'ALREADYIDENTITY';
-- Name spaces for identifiers
C_NS_SCHEMA_OBJS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_SCHEMAOBJS';
C_NS_INDEXES                 CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_INDEXES';
C_NS_CONSTRAINTS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_CONSTRAINTS';
C_NS_CLUSTERS                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_CLUSTERS';
C_NS_DB_TRIGGERS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DB_TRIGGERS';
C_NS_PRIVATE_DBLINKS         CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PRIVATEDBLINKS';
C_NS_DIMENSIONS              CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DIMENSIONS';
C_NS_USER_ROLES              CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_USERROLES';
C_NS_PUBLIC_SYNONYMS         CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PUB_SYNONYMS';
C_NS_PUBLIC_DBLINKS          CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PUBLICDBLINKS';
C_NS_TABLESPACES             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_TABLESPACES';
C_NS_PROFILES                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PROFILES';
C_NS_DATABASE                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DATABASE';
C_NS_USERS                   CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_USERS';
-- Constants for Filter Types
 -- Filter Types are 0-> ALL, 1->NAMELIST, 2->WHERE CLAUSE, 3->OBJECTID LIST
C_FILTERTYPE_ALL	     CONSTANT INTEGER := 0;
C_FILTERTYPE_NAMELIST	     CONSTANT INTEGER := 1;
C_FILTERTYPE_WHERECLAUSE     CONSTANT INTEGER := 2;
C_FILTERTYPE_OBJECTIDLIST    CONSTANT INTEGER := 3;
-- Constatns for TEXT INDEX TYPES
-- see http://download-west.oracle.com/docs/cd/B10501_01/text.920/a96518/csql.htm#19446
-- Use this index type when there is one CLOB or BLOB column in the index only
C_INDEXTYPE_CONTEXT	CONSTANT MD_ADDITIONAL_PROPERTIES.VALUE%TYPE := 'ctxsys.context';
-- Use this index type when the index containst a CLOB or BLOB column.
C_INDEXTYPE_CTXCAT CONSTANT  MD_ADDITIONAL_PROPERTIES.VALUE%TYPE := 'ctxsys.ctxcat';
-- Constant for LANGUAGE - Used in MD_TRIGGERS, MD_PACKAGES, MD_STORED_PROGRAMS, MD_VIEWS, and MD_CONSTRAINTS
C_LANGUAGEID_ORACLE CONSTANT MD_TRIGGERS.LANGUAGE%TYPE := 'OracleSQL';
-- Type for a generic REF CURSOR
TYPE REF_CURSOR IS REF CURSOR;
/**
 * Find a filter element from a filter list
 */
FUNCTION find_filter_for_type(p_filterSet MIGR_FILTER_SET, p_objtype MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE) RETURN MIGR_FILTER
IS
BEGIN
  IF p_filterset is NULL OR p_objtype is NULL then
    return NULL;
  END IF;
  FOR indx in p_filterset.FIRST .. p_filterset.LAST
  LOOP
    if p_filterset(indx).OBJTYPE = p_objtype THEN
      return p_filterset(indx);
    end if;
  END LOOP;
  return NULL;
END find_filter_for_type;

/**
 * Convert a name list from a filter into a condition for use in a where clause.
 * @param p_nameList the set of names that form part of the filter
 * @param p_nameField the name of the field to be compared against.
 * @return A condition that can be used in a where clause.
 */
FUNCTION namelist_to_where_clause(p_nameList NAMELIST, p_nameField VARCHAR2) RETURN VARCHAR2
IS
  v_ret VARCHAR2(4000);
BEGIN
  v_ret := p_nameField || ' IN (';
  FOR indx IN p_nameList.FIRST .. p_nameList.LAST
  LOOP
    v_ret := v_ret || '''' || p_nameList(indx) || '''';
    IF  indx != p_nameList.LAST THEN
      v_ret := v_ret || ', ';
    END IF;
  END LOOP;
  v_ret := v_ret || ')';
  return v_ret;
END namelist_to_where_clause;

/**
 * Convert an object id list from a filter into a condition for use in a where clause.
 * @param p_oidList The list of object ids taken from the filter.
 * @param p_idFIeld The field to be tested against.
 * @return A condition that can be used in a where clause.
 */
FUNCTION objectIdList_to_where_clause(p_oidList OBJECTIDLIST, p_idField VARCHAR2) RETURN VARCHAR2
IS
  v_ret VARCHAR2(4000);
BEGIN
  V_RET := p_idField || ' IN (';
  FOR indx IN p_oidList.FIRST .. p_oidList.LAST
  LOOP
    v_ret := v_ret || TO_CHAR(p_oidList(indx));
    IF indx != p_oidList.LAST THEN
      v_ret := v_ret || ', ';
    END IF;
  END LOOP;
  v_ret := v_ret || ')';
  return v_ret;
END objectIdList_to_where_clause;

/**
 * Convert a filter to a condition for use in a where clause.
 * @param p_filter The filter
 * @param p_nameFileld The name field that will be used in the names list or where clause.
 * @param p_idField The id field that will be used if the filter is an objectid list.
 * @return A condition that could be used in a where clause.  NULL if no additional filtering is required.
 */
FUNCTION where_clause_from_filter(p_filter MIGR_FILTER, p_nameField VARCHAR2, p_idField VARCHAR2) RETURN VARCHAR2
IS
BEGIN
	IF p_filter.FILTER_TYPE = C_FILTERTYPE_ALL THEN
	  RETURN NULL;
    ELSIF p_filter.FILTER_TYPE = C_FILTERTYPE_NAMELIST THEN
      RETURN namelist_to_where_clause(p_filter.NAMES, p_nameField);
    ELSIF p_filter.FILTER_TYPE = C_FILTERTYPE_WHERECLAUSE THEN
	  RETURN p_nameField || ' ' || p_filter.WHERECLAUSE;
    ELSE
	  RETURN objectidlist_to_where_clause(p_filter.OBJECTIDS, p_idField);
	END IF;
END where_clause_from_filter;

/**
 * Apply a filter to an existing select statement
 * @param p_filter_set The filter set.
 * @param p_filter_type The type of the object, for finding in the filter set.
 * @param p_name_field The name field of the table being filtered
 * @param p_id_field The id field of the table being filtered.
 * @param p_select_stmt The select statment to tag the new condition on to
 * @return The select statement with the new condition added to it (or the original statement if
 *         there is no applicable filter for this object type.
 */
FUNCTION apply_filter(p_filter_set MIGR_FILTER_SET,
                      p_filter_type MD_DERIVATIVES.SRC_TYPE%TYPE,
                      p_name_field VARCHAR2,
                      p_id_field VARCHAR2,
                      p_select_stmt VARCHAR2) RETURN VARCHAR2
IS
  v_filt MIGR_FILTER;
  v_condition VARCHAR2(4000);
BEGIN
  v_filt := find_filter_for_type(p_filter_set, p_filter_type);
  --if the filter is null, then we need to set a value that will fail always so nothing is moved.
  -- ie 1=2
  IF v_filt IS NOT NULL THEN
    v_condition := where_clause_from_filter(v_filt, p_name_field, p_id_field);
    IF v_condition IS NOT NULL THEN
      RETURN p_select_stmt || ' AND ' || v_condition;
    ELSE
     RETURN p_select_stmt;
    END IF;
  END IF;
  RETURN p_select_stmt ;
END apply_filter;


/**
 * Find the copy of a particular object.  This function checks for a copied object of a particular
 * type by searching the MD_DERIVATIVES table.
 * @param p_objectid The id of the object to search for.
 * @param p_objecttype The type of the object to search for.
 * @return the id of the copy object if it is present, or NULL if it is not.
 */
FUNCTION find_object_copy(p_objectid md_projects.id%TYPE, p_objecttype MD_DERIVATIVES.SRC_TYPE%TYPE, p_derivedconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS 
  v_ret MD_DERIVATIVES.DERIVED_ID%TYPE;
BEGIN
  SELECT /* APEX53913a */  derived_id INTO v_ret FROM MD_DERIVATIVES
    WHERE src_id = p_objectid 
     AND src_type = p_objecttype
     AND derived_type = p_objecttype 
     AND derived_connection_id_fk = p_derivedconnectionid;
  RETURN v_ret;
EXCEPTION
  WHEN NO_DATA_FOUND then
    -- Should we raise an error?
    RETURN NULL;
END find_object_copy;

/**
 * Copy additional properties. function copies the additional properties for an object.
 * @param p_refobjectid The object id whose additional properties have to be copied
 * @param p_newrefobject The id of the copied object the new properties should refer to
 * @return number of additional properties copied
 */
FUNCTION copy_additional_properties(p_refobjectid MD_ADDITIONAL_PROPERTIES.REF_ID_FK%TYPE, p_newrefobject MD_PROJECTS.ID%TYPE, p_newconnectionid MD_ADDITIONAL_PROPERTIES.CONNECTION_ID_FK%TYPE) RETURN NUMBER
IS
  CURSOR ORIGINAL_RECS IS SELECT PROPERTY_ORDER, PROP_KEY, REF_TYPE, VALUE FROM MD_ADDITIONAL_PROPERTIES WHERE REF_ID_FK=p_refobjectid;
  v_numcopied NUMBER := 0;
BEGIN
  for newrec in ORIGINAL_RECS LOOP
    INSERT INTO MD_ADDITIONAL_PROPERTIES (ref_id_fk, ref_type, property_order, prop_key, value, connection_id_fk)
      VALUES (p_newrefobject, newrec.ref_type, newrec.property_order, newrec.prop_key, newrec.value, p_newconnectionid);
    v_numcopied := v_numcopied + 1;
  END LOOP;
  commit;
  return v_numcopied;
END copy_additional_properties;

FUNCTION copy_connection(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE) RETURN NUMBER
IS
  newrec MD_CONNECTIONS%ROWTYPE;
  newid MD_CONNECTIONS.ID%TYPE;
  origName MD_CONNECTIONS.NAME%TYPE;
BEGIN
  SELECT /* APEX1930d7 */  * INTO newrec from MD_CONNECTIONS WHERE id = p_connectionid;

  newrec.HOST := NULL;
  newrec.PORT := NULL;
  newrec.USERNAME := NULL;
  newrec.DBURL := NULL;
  -- TODO.  Need to do this in a more i18n friendly manner.
  origName := newrec.NAME;

  IF p_scratchModel = FALSE 
  THEN
     newrec.TYPE :=C_CONNECTIONTYPE_CONVERTED;  
     newrec.NAME := 'Converted:' || newrec.NAME;
  ELSE
     newrec.TYPE :=C_CONNECTIONTYPE_SCRATCH;  
     newrec.NAME := 'Scratch:' || newrec.NAME;     
  END IF;
  -- Let the trigger create the new ID
  newrec.ID := NULL;
  INSERT /* APEX5e30c0 */  INTO MD_CONNECTIONS VALUES newrec
  	RETURNING id into newid;
  INSERT /* APEXc1acd0 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, original_identifier, new_identifier)
    VALUES (p_connectionid, C_OBJECTTYPE_CONNECTIONS, newid, C_OBJECTTYPE_CONNECTIONS, newid, origName, newrec.NAME);
  commit;
  return newid;
END copy_connection;


FUNCTION create_dummy_catalog(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_CATALOGS.ID%TYPE;
BEGIN
  INSERT /* APEXa33eb5 */  INTO MD_CATALOGS (CONNECTION_ID_FK, CATALOG_NAME, DUMMY_FLAG, NATIVE_SQL, NATIVE_KEY)
  VALUES (p_connectionid, ' ', C_DUMMYFLAG_TRUE, NULL, NULL)
  RETURNING ID INTO newid;
  RETURN newid;
END create_dummy_catalog;

FUNCTION find_or_create_dummy_catalog(p_connectionid MD_CONNECTIONS.ID%TYPE, p_catalogid MD_CATALOGS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_CATALOGS%ROWTYPE;
  newid MD_CATALOGS.ID%TYPE;
BEGIN
  SELECT /* APEX6fc7e7 */  * INTO newrec from MD_CATALOGS where connection_id_fk = p_connectionid and "ID" = p_catalogid;
  return newrec.id;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
  INSERT /* APEX5171b3 */  INTO MD_CATALOGS (CONNECTION_ID_FK, CATALOG_NAME, DUMMY_FLAG, NATIVE_SQL, NATIVE_KEY)
  VALUES (p_connectionid, ' ', C_DUMMYFLAG_TRUE, NULL, NULL)
  RETURNING ID INTO newid;
  INSERT /* APEXd6ad63 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, DERIVED_OBJECT_NAMESPACE)
    VALUES (p_catalogid, C_OBJECTTYPE_CATALOGS, newid, C_OBJECTTYPE_CATALOGS, p_connectionid, C_NS_DATABASE);
  commit;
  return newid;
END find_or_create_dummy_catalog;

-- Enterprise convert may have 1 catalog belonging to a given connection id
PROCEDURE create_dummy_catalogs(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN) 
IS
  CURSOR curcats(connId MD_CONNECTIONS.ID%TYPE) IS select * from MD_CATALOGS where connection_id_fk = connId;
  cat_row MD_CATALOGS%ROWTYPE;
  newid MD_CATALOGS."ID"%TYPE;
  v_sql VARCHAR2(300);
BEGIN
   OPEN curcats(p_connectionid);
   FETCH curcats INTO cat_row;  
   LOOP
     EXIT WHEN curcats%NOTFOUND;
     newid := find_or_create_dummy_catalog(p_newconnectionid, cat_row."ID");
     v_sql := 'UPDATE MD_CATALOGS SET CATALOG_NAME = ''' || cat_row."CATALOG_NAME"  || ''' WHERE ID = ' || TO_CHAR(newid);
     EXECUTE IMMEDIATE v_sql;
     FETCH curcats INTO cat_row;  
   END LOOP;
  CLOSE curcats; 
  COMMIT;
END create_dummy_catalogs;


FUNCTION copy_individual_catalog(p_catalogid MD_CATALOGS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_CATALOGS%ROWTYPE;
  newconnectionid MD_CATALOGS.CONNECTION_ID_FK%TYPE;
  dummycatalogid MD_CATALOGS.ID%TYPE;
  originalconnectionid MD_CATALOGS.CONNECTION_ID_FK%TYPE;
BEGIN
  -- Catalogs aren't copied as such. Instead, we make a single DUMMY catalog
  -- Within the new connection
  -- So..first see if one exists for the copied connection
  SELECT /* APEX4a8b0f */  CONNECTION_ID_FK INTO originalconnectionid FROM MD_CATALOGS WHERE ID = p_catalogid;
  -- For connections, we have a special case.  We can't store the new connection, but 0 is ok.
  newconnectionid := find_object_copy(originalconnectionid, C_OBJECTTYPE_CONNECTIONS, 0);
  IF newconnectionid IS NULL THEN
    newconnectionid := copy_connection(originalconnectionid);
  END IF;
  dummycatalogid := find_or_create_dummy_catalog(newconnectionid, p_catalogid);
  RETURN dummycatalogid;  
END copy_individual_catalog;

FUNCTION copy_individual_schema(p_schemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_SCHEMAS.ID%TYPE;
  newrec MD_SCHEMAS%ROWTYPE;
  newcatalogid MD_CATALOGS.ID%TYPE;
  originalcatalogname MD_CATALOGS.CATALOG_NAME%TYPE;
  originalcatalogid MD_SCHEMAS.CATALOG_ID_FK%TYPE;
  originalschemaname MD_SCHEMAS.NAME%TYPE;
  originalisdummy CHAR;
BEGIN
  SELECT /* APEXdeeaa8 */  * INTO newrec FROM md_schemas WHERE id = p_schemaid;
  newcatalogid := find_object_copy(newrec.catalog_id_fk,   C_OBJECTTYPE_CATALOGS, p_newconnectionid);
  originalcatalogid := newrec.catalog_id_fk;
  originalschemaname := newrec.NAME;
  select /* APEX8764f4 */  CATALOG_NAME, DUMMY_FLAG into originalcatalogname, originalisdummy from MD_CATALOGS WHERE ID = originalcatalogid;
  IF newcatalogid IS NULL THEN
    newcatalogid := copy_individual_catalog(newrec.catalog_id_fk);
  END IF;

  newrec.catalog_id_fk := newcatalogid;
  if originalisdummy <> C_DUMMYFLAG_TRUE THEN
    newrec.name := originalcatalogname || '_' || newrec.name;
  end if;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT /* APEXb791c3 */  INTO MD_SCHEMAS VALUES newrec RETURNING ID INTO newid;
  INSERT /* APEX934add */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES (p_schemaid, C_OBJECTTYPE_SCHEMAS, newid, C_OBJECTTYPE_SCHEMAS, originalschemaname, newrec.name, C_NS_DATABASE);
  INSERT /* APEX5a0913 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type)
    VALUES (originalcatalogid, C_OBJECTTYPE_CATALOGS, newid, C_OBJECTTYPE_SCHEMAS);
  COMMIT;
  return newid;
END copy_individual_schema;

FUNCTION copy_individual_table(p_tableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_TABLES%rowtype;
  newid MD_TABLES.ID%TYPE;
  newschemaid MD_SCHEMAS.ID%TYPE;
BEGIN
  SELECT /* APEX674369 */  * INTO newrec FROM MD_tables WHERE id = p_tableid;
  newschemaid := find_object_copy(newrec.schema_id_fk,   C_OBJECTTYPE_SCHEMAS, p_newconnectionid);
  IF newschemaid IS NULL THEN
    newschemaid := copy_individual_schema(newrec.schema_id_fk, p_newconnectionid);
  END IF;

  newrec.schema_id_fk := newschemaid;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT /* APEXc18abc */  INTO MD_TABLES VALUES newrec RETURNING ID INTO newid;
  INSERT /* APEX21ce7a */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(p_tableid,   C_OBJECTTYPE_TABLES,   newid,   C_OBJECTTYPE_TABLES, p_newconnectionid, newrec.table_name, newrec.table_name, C_NS_SCHEMA_OBJS || TO_CHAR(newschemaid));
  COMMIT;
  RETURN newid;
END copy_individual_table;

FUNCTION copy_individual_column(p_columnid MD_COLUMNS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_COLUMNS.ID%TYPE;
  newrec MD_COLUMNS%rowtype;
  newtableid MD_TABLES.ID%TYPE;
BEGIN
  SELECT /* APEX55d38b */  * INTO newrec FROM md_columns WHERE id = p_columnid;
  -- TODO: How do I check if this worked?
  -- OK. We need to fix up table id
  newtableid := find_object_copy(newrec.table_id_fk,   C_OBJECTTYPE_TABLES, p_newconnectionid);

  IF newtableid IS NULL THEN
    newtableid := copy_individual_table(newrec.table_id_fk, p_newconnectionid);
  END IF;

  newrec.table_id_fk := newtableid;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT /* APEX39b0de */  INTO md_columns VALUES newrec RETURNING ID INTO newid;
  -- Columns have their own namespace.  They must be unique within the given table.  So..we'll use the table id as the namespace
  INSERT /* APEXb60765 */  INTO md_derivatives(src_id,   src_type,   derived_id,   derived_type, derived_connection_id_fk, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(p_columnid,   C_OBJECTTYPE_COLUMNS,   newid,   C_OBJECTTYPE_COLUMNS, p_newconnectionid, newrec.column_name, newrec.column_name, C_OBJECTTYPE_COLUMNS || TO_CHAR(newtableid));
  COMMIT;
  RETURN newid;
END copy_individual_column;

FUNCTION copy_all_tables(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR all_tables_cursor is select table_id from mgv_all_tables where connection_id = p_connectionid;
  v_count NUMBER := 0;
  newid MD_TABLES.ID%TYPE;
BEGIN
  FOR v_tableid IN all_tables_cursor LOOP
    newid := copy_individual_table(v_tableid.table_id, p_newconnectionid);
    v_count := v_count + 1;
  END LOOP;
  RETURN v_count;
END copy_all_tables;

FUNCTION copy_all_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR all_columns_cursor is select id from MD_COLUMNS where table_id_fk in 
    (select table_id from MGV_ALL_TABLES where connection_id = p_connectionid);
  v_count NUMBER :=0;
  newid MD_COLUMNS.ID%TYPE;
BEGIN
  FOR v_columnid IN all_columns_cursor LOOP
    newid := copy_individual_column(v_columnid.id, p_newconnectionid);
    v_count := v_count + 1;
  END LOOP;
  return v_count;
END copy_all_columns;

FUNCTION copy_constraint_details(p_oldconsid MD_CONSTRAINTS.ID%TYPE, p_newconsid MD_CONSTRAINTS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_CONSTRAINT_DETAILS WHERE CONSTRAINT_ID_FK = p_oldconsid;
  v_newid MD_CONSTRAINT_DETAILS.ID%TYPE;
  v_count NUMBER := 0;
  v_originalid MD_CONSTRAINT_DETAILS.ID%TYPE;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.COLUMN_ID_FK := find_object_copy(v_row.COLUMN_ID_FK , C_OBJECTTYPE_COLUMNS, p_newconnectionid);
    v_row.CONSTRAINT_ID_FK := p_newconsid;
    INSERT INTO MD_CONSTRAINT_DETAILS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Constraint details don't have an identifier, so don't need a namespace.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid, C_OBJECTTYPE_CNSTRNT_DETAILS, v_newid, C_OBJECTTYPE_CNSTRNT_DETAILS, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_constraint_details;

FUNCTION copy_all_constraints_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
   v_selectStmt VARCHAR2(4000) :=     
  'SELECT * FROM MD_CONSTRAINTS WHERE TABLE_ID_FK IN       
    (SELECT SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = ''' || C_OBJECTTYPE_TABLES ||''' AND DERIVED_TYPE = '''
    || C_OBJECTTYPE_TABLES || ''' AND DERIVED_ID IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE SCHEMA_ID = ' || p_newschemaid || '))';
  v_count NUMBER := 0;
  v_newid MD_CONSTRAINTS.ID%TYPE;
  v_originalid MD_CONSTRAINTS.ID%TYPE;
  v_ret NUMBER;
  v_row MD_CONSTRAINTS%ROWTYPE;
  v_storeRefTableId MD_TABLES.ID%TYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_CONSTRAINTS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_ID_FK := find_object_copy(v_row.TABLE_ID_FK , C_OBJECTTYPE_TABLES, p_newconnectionid);
    if v_row.REFTABLE_ID_FK IS NOT NULL THEN
      v_storeRefTableId := v_row.REFTABLE_ID_FK;
      v_row.REFTABLE_ID_FK := find_object_copy(v_row.REFTABLE_ID_FK , C_OBJECTTYPE_TABLES, p_newconnectionid);
    END IF;
    INSERT /* APEX47e80e */  INTO MD_CONSTRAINTS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX980c66 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_CONSTRAINTS, v_newid, C_OBJECTTYPE_CONSTRAINTS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_CONSTRAINTS|| TO_CHAR(p_newschemaid));
    v_ret := copy_constraint_details(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  return v_count;    
END copy_all_constraints_cascade;

FUNCTION copy_all_columns_cascade(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_COLUMNS WHERE TABLE_ID_FK = ' || p_oldtableid;
  v_originalId MD_COLUMNS.ID%TYPE;
  v_newid MD_COLUMNS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_COLUMNS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_COLUMNS, 'COLUMN_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_ID_FK := p_newtableid;
    INSERT /* APEX13e8c1 */  INTO MD_COLUMNS values  v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Columns don't need a namespace as such, they must not clash within the table.  We'll handle this
	-- As a special case.
    INSERT /* APEX6ad23f */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_COLUMNS, v_newid, C_OBJECTTYPE_COLUMNS, p_newconnectionid, v_row.column_name, v_row.column_name, C_OBJECTTYPE_COLUMNS || TO_CHAR(p_newtableid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_columns_cascade;

FUNCTION copy_index_details(p_oldindexid MD_INDEXES.ID%TYPE, p_newindexid MD_INDEXES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_INDEX_DETAILS WHERE MD_INDEX_DETAILS.INDEX_ID_FK = p_oldindexid;
  v_originalid MD_INDEX_DETAILS.ID%TYPE;
  v_newid MD_INDEX_DETAILS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN CURS LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.INDEX_ID_FK := p_newindexid;
    v_row.COLUMN_ID_FK := find_object_copy(v_row.COLUMN_ID_FK, C_OBJECTTYPE_COLUMNS, p_newconnectionid);
    INSERT INTO MD_INDEX_DETAILS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Index details don't have identifiers, so don't need a namespace.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
    VALUES(v_originalid, C_OBJECTTYPE_INDEX_DETAILS, v_newid, C_OBJECTTYPE_INDEX_DETAILS, p_newconnectionid);
  END LOOP;
  RETURN v_count;
END copy_index_details;

FUNCTION copy_all_indexes(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_INDEXES WHERE MD_INDEXES.TABLE_ID_FK = ' || p_oldtableid;
  v_originalid MD_INDEXES.ID%TYPE;
  v_newid MD_INDEXES.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_INDEXES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_INDEXES, 'INDEX_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;

    v_row.ID := NULL;
    v_row.TABLE_ID_FK := p_newtableid;
    INSERT /* APEX97ce1b */  INTO MD_INDEXES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEXe06bd4 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_INDEXES, v_newid, C_OBJECTTYPE_INDEXES, p_newconnectionid, v_row.INDEX_NAME, v_row.INDEX_NAME, C_NS_INDEXES || p_newschemaid);
    v_ret := copy_index_details(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_indexes;

FUNCTION copy_all_table_triggers(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = ' || p_oldtableid;
  v_originalid MD_TRIGGERS.ID%TYPE;
  v_newid MD_TRIGGERS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TRIGGERS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TRIGGERS, 'TRIGGER_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_OR_VIEW_ID_FK := p_newtableid;
    INSERT /* APEX4ced8d */  INTO MD_TRIGGERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX2ea386 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_TRIGGERS, v_newid, C_OBJECTTYPE_TRIGGERS, p_newconnectionid, v_row.TRIGGER_NAME, v_row.TRIGGER_NAME, C_NS_DB_TRIGGERS);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_table_triggers;

FUNCTION copy_all_tables_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET :=NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  /*CURSOR curs IS SELECT * FROM MD_TABLES where SCHEMA_ID_FK = p_oldschemaid; */
  v_newid MD_TABLES.ID%TYPE := NULL;
  v_originalid MD_TABLES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TABLES%ROWTYPE;
  v_filt MIGR_FILTER;
  v_condition VARCHAR2(4000);
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLES where SCHEMA_ID_FK = ' || p_oldschemaid;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TABLES, 'TABLE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEXdc6972 */  INTO MD_TABLES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEXcd0659 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_TABLES, v_newid, C_OBJECTTYPE_TABLES, p_newconnectionid, v_row.TABLE_NAME, v_row.TABLE_NAME,  C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_all_columns_cascade(v_originalid, v_newid, p_newconnectionid, p_filter_set);
    v_ret := copy_all_indexes(v_originalid, v_newid, p_newconnectionid, p_newschemaid, p_filter_set);
    v_ret := copy_all_table_triggers(v_originalid, v_newid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_tables_cascade;

FUNCTION copy_all_view_triggers(p_oldviewid MD_VIEWS.ID%TYPE, p_newviewid MD_VIEWS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs IS SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = p_oldviewid;
  v_originalid MD_TRIGGERS.ID%TYPE;
  v_newid MD_TRIGGERS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_OR_VIEW_ID_FK := p_newviewid;
    INSERT INTO MD_TRIGGERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_TRIGGERS, v_newid, C_OBJECTTYPE_TRIGGERS, p_newconnectionid, v_row.TRIGGER_NAME, v_row.TRIGGER_NAME, C_NS_DB_TRIGGERS);
  END LOOP;
  return v_count;
END copy_all_view_triggers;

FUNCTION copy_all_views_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_VIEWS.ID%TYPE := NULL;
  v_originalid MD_VIEWS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_VIEWS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_VIEWS, 'VIEW_NAME' ,'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEX82b502 */  INTO MD_VIEWS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX97cda7 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_VIEWS,   v_newid,   C_OBJECTTYPE_VIEWS, p_newconnectionid, v_row.VIEW_NAME, v_row.VIEW_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_all_view_triggers(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  RETURN v_count;
END copy_all_views_cascade;

FUNCTION copy_group_members(p_oldgroupid MD_GROUPS.ID%TYPE, p_newgroupid MD_GROUPS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs IS SELECT * FROM MD_GROUP_MEMBERS WHERE GROUP_ID_FK = p_oldgroupid;
  v_newid MD_GROUP_MEMBERS.ID%TYPE := NULL;
  v_originalid MD_GROUP_MEMBERS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.GROUP_ID_FK := p_newgroupid;
    v_row.USER_ID_FK := find_object_copy(v_row.USER_ID_FK, C_OBJECTTYPE_USERS, p_newconnectionid);
    INSERT INTO MD_GROUP_MEMBERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Group members do not have identifiers, so don't need a namespace
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid,   C_OBJECTTYPE_GROUP_MEMBERS,   v_newid,   C_OBJECTTYPE_GROUP_MEMBERS, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_group_members;

FUNCTION copy_all_groups_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_GROUPS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_GROUPS.ID%TYPE := NULL;
  v_originalid MD_GROUPS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_namespace MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := NULL;
  v_row MD_GROUPS%ROWTYPE;
  v_catalogname MD_CATALOGS.CATALOG_NAME%TYPE;
  v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
  v_oldname MD_GROUPS.GROUP_NAME%TYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_GROUPS, 'GROUP_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    SELECT /* APEXf67838 */  CATALOG_NAME, DUMMY_FLAG INTO v_catalogname, v_catalogdummy
      FROM MD_CATALOGS, MD_SCHEMAS WHERE MD_CATALOGS.ID = MD_SCHEMAS.CATALOG_ID_FK 
      AND MD_SCHEMAS.ID = p_oldschemaid;
    v_oldname := v_row.GROUP_NAME;
    if v_catalogdummy <> C_DUMMYFLAG_TRUE then
      v_row.GROUP_NAME := v_row.GROUP_NAME || '_' || v_catalogname;
    END IF;
    INSERT /* APEX590cc8 */  INTO MD_GROUPS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	IF v_row.GROUP_FLAG = C_ROLE_FLAG THEN
		v_namespace := C_NS_USER_ROLES;
	ELSE
		v_namespace := C_NS_DATABASE;
	END IF;
    INSERT /* APEX5af855 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_GROUPS, v_newid, C_OBJECTTYPE_GROUPS, p_newconnectionid, v_oldname, v_row.GROUP_NAME, v_namespace);
    v_ret := copy_group_members(v_originalid, v_newid, p_newconnectionid);   
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_groups_cascade;

FUNCTION copy_all_users_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_USERS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_USERS.ID%TYPE := NULL;
  v_originalid MD_USERS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_USERS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_USERS, 'USERNAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEX0fe45d */  INTO MD_USERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX0e5fd5 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_USERS,   v_newid,   C_OBJECTTYPE_USERS, p_newconnectionid, v_row.USERNAME, v_row.USERNAME, C_NS_USERS);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_users_cascade;

FUNCTION copy_all_other_objects_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_OTHER_OBJECTS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_OTHER_OBJECTS.ID%TYPE := NULL;
  v_originalid MD_OTHER_OBJECTS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_OTHER_OBJECTS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_OTHER_OBJECTS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEXa579b1 */  INTO MD_OTHER_OBJECTS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX16da27 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_OTHER_OBJECTS,   v_newid,   C_OBJECTTYPE_OTHER_OBJECTS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_other_objects_cascade;

FUNCTION copy_all_tablespaces_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLESPACES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_TABLESPACES.ID%TYPE := NULL;
  v_originalid MD_TABLESPACES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TABLESPACES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TABLESPACES, 'TABLESPACE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEXcc0cda */  INTO MD_TABLESPACES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX9d43e8 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_TABLESPACES,   v_newid,   C_OBJECTTYPE_TABLESPACES, p_newconnectionid, v_row.TABLESPACE_NAME, v_row.TABLESPACE_NAME, C_NS_TABLESPACES);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_tablespaces_cascade;

FUNCTION copy_all_udds_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_USER_DEFINED_DATA_TYPES.ID%TYPE := NULL;
  v_originalid MD_USER_DEFINED_DATA_TYPES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_USER_DEFINED_DATA_TYPES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_UDDT, 'DATA_TYPE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEX6f21bc */  INTO MD_USER_DEFINED_DATA_TYPES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX10196b */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_UDDT,   v_newid,   C_OBJECTTYPE_UDDT, p_newconnectionid, v_row.DATA_TYPE_NAME, v_row.DATA_TYPE_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_udds_cascade;

FUNCTION copy_child_procedures(p_oldpackageid MD_PACKAGES.ID%TYPE, p_newpackageid MD_PACKAGES.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE PACKAGE_ID_FK = ' || p_oldpackageid;
  v_newid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_originalid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_STORED_PROGRAMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.PACKAGE_ID_FK := p_newpackageid;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEXdf6e6a */  INTO MD_STORED_PROGRAMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- No need for namespace here, the namespace is the package itself.
    INSERT /* APEXc32b1c */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
      VALUES(v_originalid,   C_OBJECTTYPE_STORED_PROGRAMS,   v_newid,   C_OBJECTTYPE_STORED_PROGRAMS, p_newconnectionid, v_row.NAME, v_row.NAME);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_child_procedures;

FUNCTION copy_all_packages_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_PACKAGES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_PACKAGES.ID%TYPE := NULL;
  v_originalid MD_PACKAGES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_PACKAGES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_PACKAGES, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEX261d79 */  INTO MD_PACKAGES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX71aa11 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_PACKAGES,   v_newid,   C_OBJECTTYPE_PACKAGES, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_child_procedures(v_originalid, v_newid, p_newschemaid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_packages_cascade;

FUNCTION copy_all_unpackaged_sps(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = ' || p_oldschemaid ||' AND PACKAGE_ID_FK IS NULL';
  v_newid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_originalid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_STORED_PROGRAMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.schema_id_fk := p_newschemaid;
    INSERT /* APEXb512c3 */  INTO MD_STORED_PROGRAMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Non-packaged procedures belong in the schema objects namespace.
    INSERT /* APEX5a765e */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_STORED_PROGRAMS, v_newid, C_OBJECTTYPE_STORED_PROGRAMS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_unpackaged_sps;

FUNCTION copy_all_synonyms_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SYNONYMS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_SYNONYMS.ID%TYPE := NULL;
  v_originalid MD_SYNONYMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_namespace MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE;
  v_row MD_SYNONYMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SYNONYMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SYNONYM_FOR_ID := find_object_copy(v_row.SYNONYM_FOR_ID, v_row.FOR_OBJECT_TYPE, p_newconnectionid);
    INSERT /* APEX847b11 */  INTO MD_SYNONYMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Synonyms have two potential name spaces:  Private synonyms belong in the schema objects, while public 
	-- synonyms belong in their own namespace.
	IF v_row.PRIVATE_VISIBILITY = C_SYNONYM_PRIVATE THEN
		v_namespace := C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid);
	ELSE
		v_namespace := C_NS_PUBLIC_SYNONYMS;
        END IF;
    INSERT /* APEX77a859 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_SYNONYMS, v_newid, C_OBJECTTYPE_SYNONYMS, p_newconnectionid, v_row.NAME, v_row.NAME, v_namespace);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_synonyms_cascade;

FUNCTION copy_all_sequences_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_SEQUENCES.ID%TYPE := NULL;
  v_originalid MD_SEQUENCES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_SEQUENCES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SEQUENCES, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    INSERT /* APEX8dc51f */  INTO MD_SEQUENCES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT /* APEX8995e0 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_SEQUENCES, v_newid, C_OBJECTTYPE_SEQUENCES, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_sequences_cascade;

FUNCTION copy_user_privileges(p_olduserid MD_PRIVILEGES.ID%TYPE, p_newuserid MD_PRIVILEGES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_USER_PRIVILEGES WHERE PRIVILEGE_ID_FK = p_olduserid;
  v_newid MD_USER_PRIVILEGES.ID%TYPE;
  v_count NUMBER := 0;
  v_originalid MD_USER_PRIVILEGES.ID%TYPE;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.USER_ID_FK := find_object_copy(v_row.USER_ID_FK , C_OBJECTTYPE_USERS, p_newconnectionid);
    v_row.PRIVILEGE_ID_FK := p_newuserid;
    INSERT INTO MD_USER_PRIVILEGES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid, C_OBJECTTYPE_USER_PRIVILEGES, v_newid, C_OBJECTTYPE_USER_PRIVILEGES, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_user_privileges;

FUNCTION copy_all_privileges_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_PRIVILEGES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_PRIVILEGES.ID%TYPE := NULL;
  v_originalid MD_PRIVILEGES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_PRIVILEGES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_PRIVILEGES, 'PRIVILEGE_NAME' ,'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.PRIVELEGE_OBJECT_ID := find_object_copy(v_row.PRIVELEGE_OBJECT_ID , v_row.PRIVELEGEOBJECTTYPE, p_newconnectionid);
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT /* APEX77d54d */  INTO MD_PRIVILEGES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    -- No need to pass on the identifiers to the derivatives as no need to worry about the clashes for the same.
    INSERT /* APEX0ce3d5 */  INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_PRIVILEGES,   v_newid,   C_OBJECTTYPE_PRIVILEGES, p_newconnectionid, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_user_privileges(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  RETURN v_count;
END copy_all_privileges_cascade;

FUNCTION copy_all_cross_schema_objects(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
-- DD; Can't do this until all schema tables are done
-- There may be foreign keys between schema
  v_ret := copy_all_constraints_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_groups_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_other_objects_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_privileges_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  -- Do synonyms last: This way, we can be sure that the oject for which it is a synonym
  -- has already been copied.
  v_ret := copy_all_synonyms_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  return v_ret;
END copy_all_cross_schema_objects;

FUNCTION copy_all_schema_objects(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := copy_all_tables_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_views_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_users_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_tablespaces_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_udds_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_packages_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_unpackaged_sps(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_sequences_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  -- TODO: Roles are wrong in the model right now.  I need to fix these up.
  --v_ret := copy_all_roles_cascade(p_oldschemaid, p_newschemaid);
  return v_ret;  
END copy_all_schema_objects;


FUNCTION CREATE_SCHEMANAME(p_schemaName VARCHAR2,p_catalogName VARCHAR2) RETURN VARCHAR2
IS
BEGIN
IF UPPER(p_schemaName)  = 'DBO' THEN
  RETURN p_catalogName;
ELSE
 RETURN p_schemaName || '_' || p_catalogName;
 END IF;
END CREATE_SCHEMANAME;

FUNCTION copy_catalogs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                   p_catalogid MD_CATALOGS.ID%TYPE, 
                                   p_newcatalogid MD_CATALOGS.ID%TYPE, 
                                   p_newconnectionid MD_CONNECTIONS.ID%TYPE, 
                                   p_filter_set MIGR_FILTER_SET :=NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_newid NUMBER;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_newName MD_SCHEMAS.NAME%TYPE;
  v_filt MIGR_FILTER;
  v_selectStmt VARCHAR2(4000) := 'SELECT a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
      FROM MD_SCHEMAS A, MD_CATALOGS B
      WHERE 
      	A.CATALOG_ID_FK = B.ID 
        AND B.ID =' || p_catalogid  || 
        ' AND CONNECTION_ID_FK = ' || p_connectionid ;
--  v_schemaid MD_SCHEMAS.ID%TYPE;
--  v_schemaname MD_SCHEMAS.NAME%TYPE;
--  v_catalogid MD_CATALOGS.ID%TYPE;
--  v_catalogname MD_CATALOGS.CATALOG_NAME%TYPE;
--  v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
--  v_schematype MD_SCHEMAS.TYPE%TYPE;
--  v_schemacharset MD_SCHEMAS.CHARACTER_SET%TYPE;
--  v_schemaversiontag MD_SCHEMAS.VERSION_TAG%TYPE;

  v_derivedRec  DERIVATIVE_REC;
  v_derivedRec2 DERIVATIVE_REC2;
BEGIN
  --v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_CATALOGS, 'B.CATALOG_NAME', 'B.ID', v_selectStmt);
  -- NOTE: May need to apply a schema filter here too
  --v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SCHEMAS, 'A.NAME', 'A.ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    --FETCH cv_curs INTO v_schemaid, v_schemaname, v_catalogid, v_catalogname, v_catalogdummy, v_schematype, v_schemacharset, v_schemaversiontag;
    FETCH cv_curs INTO v_derivedRec;
    EXIT WHEN cv_curs%NOTFOUND;

    /*
     schema_id          NUMBER,
     schema_name        VARCHAR2(4000 BYTE),
     catalog_id         NUMBER,
     catalog_name       VARCHAR2(4000 BYTE),
     dummy_flag         CHAR(1 BYTE),
     character_set      VARCHAR2(4000 BYTE),
     version_tag        VARCHAR2(40 BYTE)

    */
    -- TODO: Handle wrapping here.
    if v_derivedRec.dummy_flag  <> C_DUMMYFLAG_TRUE then
      v_newName := CREATE_SCHEMANAME(v_derivedRec.schema_name,v_derivedRec.catalog_name);
	else
	  v_newName := v_derivedRec.schema_name;
	end if;
    INSERT /* APEXabce74 */  INTO MD_SCHEMAS(CATALOG_ID_FK, NAME, TYPE, CHARACTER_SET, VERSION_TAG)
    VALUES (p_newcatalogid,  v_newName, v_derivedRec.cap_type, v_derivedRec.character_set, v_derivedRec.version_tag)
    RETURNING ID INTO v_newid;
    -- Here's and interesting situation.  What will we do with the additional properties?
    -- I can coalesce them such that they are in the condensed catalog/schema pair
    -- But their order could (will) contain duplicates.....
    v_ret := copy_additional_properties(p_catalogid, v_newid, p_newconnectionid);
    v_ret := copy_additional_properties(v_derivedRec.schema_id, v_newid, p_newconnectionid);
	-- No Need for namespace stuff for catalogs.
    INSERT /* APEX057955 */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
      ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
    VALUES (v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, v_newid, C_OBJECTTYPE_SCHEMAS, p_newconnectionid, v_derivedRec.schema_name, v_newName);
    INSERT /* APEX06931c */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
    VALUES (v_derivedRec.catalog_id, C_OBJECTTYPE_CATALOGS, v_newid, C_OBJECTTYPE_SCHEMAS, p_newconnectionid, v_derivedRec.catalog_name, v_newName);
    -- TODO: ADD THE FILTER TO THE PARAMETERS BELOW
    v_ret := copy_all_schema_objects(v_derivedRec.schema_id, v_newid, p_newconnectionid, p_filter_set);
    v_count := v_count + 1;
    v_newName :='';
  END LOOP;
  CLOSE cv_curs;
  -- Now...Once all of the schema objects have been done, we have to copy all of those objects that could cross
  -- schema boundaries.  So we need to loop through them again
v_selectStmt := 'SELECT SRC_ID, DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = ' 
  					|| '''' || C_OBJECTTYPE_SCHEMAS || ''' AND DERIVED_TYPE = ''' || C_OBJECTTYPE_SCHEMAS ||''''
  					--|| ' AND DERIVED_CONNECTION_ID_FK = ' || p_newconnectionid
                      || ' AND DERIVED_ID IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CATALOG_ID = ' || p_newcatalogid || ' AND CONNECTION_ID = ' || p_newconnectionid || ')';
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_derivedRec2;
    EXIT when cv_curs%NOTFOUND;
    v_ret := copy_all_cross_schema_objects(v_derivedRec2.schemaid, v_derivedRec2.newid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;  					
  return v_count;
END copy_catalogs_cascade;

FUNCTION remove_duplicate_indexes(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs IS select  index_id_fk, sum(md_index_details.column_id_fk * md_index_details.detail_order) simplehash from md_index_details 
    where index_id_fk in (select id from md_indexes where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)) 
    group by index_id_fk
    order by simplehash, index_id_fk;
  v_lasthash NUMBER :=0;
  v_currenthash NUMBER :=0;
  v_currentid MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;
  v_lastid MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;
  v_count NUMBER := 0;
  v_sql VARCHAR(255);
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_currentid, v_currenthash;
    EXIT WHEN v_curs%NOTFOUND;
    if v_currenthash = v_lasthash THEN
      -- dbms_output.put_line('Index ' || TO_CHAR(v_currentid) || ' is a duplicate');
      v_sql := 'DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid;
      EXECUTE IMMEDIATE v_sql;
      --dbms_output.put_line('DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid);
      v_sql := 'UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = ''DUPIND'', DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid);
      EXECUTE IMMEDIATE v_sql;
      -- dbms_output.put_line('UPDATE MD_DERIVATIVES SET DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid));
      v_count := v_count + 1;
    else
      v_lasthash := v_currenthash;
      v_lastid := v_currentid;
    end if;
  END LOOP;
  CLOSE v_curs;
  return v_count;    
END remove_duplicate_indexes;

FUNCTION remove_indexes_used_elsewhere(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs IS
    select INDEX_ID_FK from 
      (select  index_id_fk, sum(md_index_details.column_id_fk * md_index_details.detail_order) simplehash from md_index_details 
       where index_id_fk in (select id from md_indexes where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)) 
       group by index_id_fk
       order by simplehash) a
    WHERE A.SIMPLEHASH 
    IN
    (
      SELECT b.simplehash FROM 
      (
        SELECT SUM(MD_CONSTRAINT_DETAILS.COLUMN_ID_FK * MD_CONSTRAINT_DETAILS.DETAIL_ORDER) simplehash from md_constraint_details
        where constraint_id_fk in (select id from md_constraints where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid))
        group by constraint_id_fk
        order by simplehash
      ) b
     );
  v_currentId MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;     
  v_sql VARCHAR2(255);
  v_count NUMBER := 0;
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_currentid;
    EXIT WHEN v_curs%NOTFOUND;
      v_sql := 'DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid;
      EXECUTE IMMEDIATE v_sql;
      --dbms_output.put_line('DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid);
      v_sql := 'DELETE FROM MD_DERIVATIVES WHERE DERIVED_ID = ' || TO_CHAR(v_currentid);
      EXECUTE IMMEDIATE v_sql;
      -- dbms_output.put_line('UPDATE MD_DERIVATIVES SET DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid));
      v_count := v_count + 1;
  END LOOP;
  CLOSE v_curs;
  RETURN v_count;
END remove_indexes_used_elsewhere;    

PROCEDURE cut_lob_indexes_to_25(p_connectionId MD_CONNECTIONS.ID%TYPE)
IS
  CURSOR v_curs (context MD_ADDITIONAL_PROPERTIES.VALUE%TYPE, ctxcat MD_ADDITIONAL_PROPERTIES.VALUE%TYPE) is 
    SELECT * FROM MD_INDEXES WHERE 
    TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND LENGTH(INDEX_NAME) > 25 AND  
    ( EXISTS (SELECT 1 FROM MD_ADDITIONAL_PROPERTIES WHERE ( VALUE = context 
    OR VALUE = ctxcat ) AND REF_ID_FK = MD_INDEXES.ID ) )
    FOR UPDATE OF INDEX_NAME;
  v_numIndexCount INTEGER := 1;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;
  v_row MD_INDEXES%ROWTYPE;
BEGIN
-- totierne: for each lob index cut to 23 or 22 or 21 to put _XXX up to 25 chars (should be bytes)
  OPEN v_curs (C_INDEXTYPE_CONTEXT, C_INDEXTYPE_CTXCAT);
  LOOP
    FETCH v_curs INTO v_row;
    EXIT WHEN v_curs%NOTFOUND;
    v_newName := MIGRATION_TRANSFORMER.add_suffix(v_row.INDEX_NAME, '_' || TO_CHAR(v_numIndexCount), 25);
    update /* APEXa5c421 */  MD_INDEXES SET index_name = v_newName where current of v_curs;
    v_numIndexCount := v_numIndexCount + 1;
  END LOOP;
  CLOSE v_curs;
  commit;
END cut_lob_indexes_to_25;

FUNCTION fixupTextIndexes(p_connectionId MD_CONNECTIONS.ID%TYPE) return NUMBER
IS
  CURSOR v_curs is
    select index_id_fk, count(*) numcols from md_index_details where
    index_id_fk in (
      select c.id
      from md_columns a, md_index_details b, md_indexes c
      where b.column_id_fk = a.id
      and column_type in ('BLOB', 'CLOB')
      and b.index_id_fk = c.id
      and c.table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)
    ) group by index_id_fk;
  v_indexId MD_INDEXES.ID%TYPE;
  v_numCols INTEGER;
  v_extendedIndexType MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
BEGIN        
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_indexId, v_numCols;
    EXIT WHEN v_curs%NOTFOUND;
    IF v_numCols = 1 THEN
      v_extendedIndexType := C_INDEXTYPE_CONTEXT;
    ELSE
      v_extendedIndexType := C_INDEXTYPE_CTXCAT;
    END IF;
    INSERT /* APEX0325eb */  INTO MD_ADDITIONAL_PROPERTIES(CONNECTION_ID_FK ,REF_ID_FK, REF_TYPE, PROP_KEY, VALUE)
    VALUES (p_connectionId, v_indexId, C_OBJECTTYPE_INDEXES, C_PROPKEY_EXTENDEDINDEXTYPE, v_extendedIndexType);
    COMMIT;
  END LOOP;
  -- NCLOBs cannot be indexed.  They aren't allowed in normal indexes, and they aren't allowed in TEXT 
  -- indexes.   The only thing to do here is to remove it.
  -- TODO: We can't just do this silently.
   -- Mark THE derivative RECORD AS DELETEd.
  UPDATE /* APEX411608 */  md_derivatives SET DERIVATIVE_REASON = 'NCLOBIND' WHERE DERIVED_TYPE = 'MD_INDEXES' AND DERIVED_CONNECTION_ID_FK = p_connectionid
      AND  DERIVED_ID IN 
             (SELECT C.ID   FROM MD_COLUMNS A, MD_INDEX_DETAILS B, MD_INDEXES C, MGV_ALL_TABLES D
                 WHERE B.COLUMN_ID_FK = A.ID AND COLUMN_TYPE ='NCLOB' AND B.INDEX_ID_FK = C.ID
                  AND C.TABLE_ID_FK = D.TABLE_ID AND D.CONNECTION_ID = p_connectionid);
  DELETE /* APEXe4da0a */  FROM MD_INDEXES WHERE ID IN
             (SELECT C.ID   FROM MD_COLUMNS A, MD_INDEX_DETAILS B, MD_INDEXES C, MGV_ALL_TABLES D
                 WHERE B.COLUMN_ID_FK = A.ID AND COLUMN_TYPE ='NCLOB' AND B.INDEX_ID_FK = C.ID
                  AND C.TABLE_ID_FK = D.TABLE_ID AND D.CONNECTION_ID = p_connectionid);
  -- cut blob/clob index string to 25 characters with _nn incrementing marker
  cut_lob_indexes_to_25(p_connectionId);
  CLOSE v_curs;
  return 0;
END fixupTextIndexes;

PROCEDURE createDummyScrTblPerSchema_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                               
  v_qualified_native_name VARCHAR2(300);
  n_newtblid NUMBER;
  tbltrigRec MD_TRIGGERS%ROWTYPE;
  n_newtrigId MD_TRIGGERS."ID"%TYPE;
  origtrigId MD_TRIGGERS."ID"%TYPE;
  CURSOR curtblTrig(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_TRIGGERS 
                                       WHERE TRIGGER_ON_FLAG = 'T'
                                           AND TABLE_OR_VIEW_ID_FK IN (
                                                SELECT "ID" 
                                                FROM MD_TABLES
                                                WHERE SCHEMA_ID_FK = schId);

BEGIN
   SELECT /* APEX7ee71a */  A.catalog_name || '.' || B."NAME" || 'DUMMY' INTO v_qualified_native_name
             FROM MD_CATALOGS A, MD_SCHEMAS B
             WHERE A."ID" = B.catalog_id_fk
                   AND B."ID" = schemaId;

   -- insert 1 DUMMY table per schema.  We don't want to create peer records in md_tables for each table entry
   INSERT /* APEXc8bf9a */  INTO MD_TABLES(schema_id_fk, table_name, qualified_native_name)
                  VALUES(new_schemaId, 'DUMMY', v_qualified_native_name)
                  RETURNING "ID" INTO n_newtblid;
   -- There is no additional property to copy as this is a dummy table with no src peer
   -- This table is used to attached all the translated triggers

   -- insert corresponding row into md_derivatives
   INSERT /* APEX8dc967 */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (n_newtblid, C_OBJECTTYPE_TABLES, n_newtblId, C_OBJECTTYPE_TABLES, p_scratchConn, 'DUMMY', 'DUMMY');  

   --copy_all_tbl_trigs_ee
   OPEN curtblTrig(schemaId);
   FETCH curtblTrig INTO tbltrigRec;
   LOOP
      EXIT WHEN curtblTrig%NOTFOUND;
      origtrigId := tbltrigRec."ID";
      tbltrigRec."ID" := NULL;
      tbltrigRec.table_or_view_id_fk := n_newtblid;
      INSERT /* APEXeb2a18 */  INTO MD_TRIGGERS VALUES tbltrigRec RETURNING "ID" INTO n_newtrigId;

      -- insert corresponding row into md_derivatives
      INSERT /* APEXd4c5e7 */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (origtrigId, C_OBJECTTYPE_TRIGGERS, n_newtrigId, C_OBJECTTYPE_TRIGGERS, p_scratchConn, tbltrigRec.TRIGGER_NAME, tbltrigRec.TRIGGER_NAME);  


      FETCH curtblTrig INTO tbltrigRec;
   END LOOP;
   CLOSE curtblTrig;

END createDummyScrTblPerSchema_ee;

PROCEDURE copy_all_views_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                         
   CURSOR curViews(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = schId;
   viewRec MD_VIEWS%ROWTYPE;
   n_newVwid MD_VIEWS."ID"%TYPE;
   norigVwid MD_VIEWS."ID"%TYPE;
   n_ret NUMBER;

  vwtrigRec MD_TRIGGERS%ROWTYPE;
  n_newtrigId MD_TRIGGERS."ID"%TYPE;
  origtrigId MD_TRIGGERS."ID"%TYPE;
  CURSOR curvwTrig(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_TRIGGERS 
                                       WHERE TRIGGER_ON_FLAG = 'V'
                                           AND TABLE_OR_VIEW_ID_FK IN (
                                                SELECT "ID" 
                                                FROM MD_TABLES
                                                WHERE SCHEMA_ID_FK = schId);   
BEGIN
   OPEN curViews(schemaId);
   FETCH curViews INTO viewRec;
   LOOP
      EXIT WHEN curViews%NOTFOUND;
      norigVwid := viewRec."ID";
      viewRec."ID" := NULL;
      viewRec.SCHEMA_ID_FK := new_schemaId;
      INSERT /* APEX9a24c0 */  INTO MD_VIEWS VALUES viewRec RETURNING "ID" INTO n_newVwId;
      n_ret := copy_additional_properties(viewRec."ID", n_newVwId, p_scratchConn);

      INSERT /* APEX047d7e */  INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES(norigVwid,   
                                  C_OBJECTTYPE_VIEWS,   
                                  n_newVwId,   
                                  C_OBJECTTYPE_VIEWS, 
                                  p_scratchConn, viewRec.VIEW_NAME, viewRec.VIEW_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaId));

      -- Handle view triggers
      OPEN curvwTrig(schemaId);
      FETCH curvwTrig INTO vwtrigRec;
      LOOP
         EXIT WHEN curvwTrig%NOTFOUND;
         origtrigId := vwtrigRec."ID";
         vwtrigRec."ID" := NULL;
         vwtrigRec.table_or_view_id_fk := n_newVwId;

         INSERT /* APEX174e8d */  INTO MD_TRIGGERS VALUES vwtrigRec RETURNING "ID" INTO n_newtrigId;

         INSERT /* APEXc04ef5 */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (origtrigId, C_OBJECTTYPE_TRIGGERS, n_newtrigId, C_OBJECTTYPE_TRIGGERS, p_scratchConn, vwtrigRec.TRIGGER_NAME, vwtrigRec.TRIGGER_NAME);           

         FETCH curvwTrig INTO vwtrigRec;         
      END LOOP; -- end vw trigger loop
      CLOSE curvwTrig;

      FETCH curViews INTO viewRec;
      --copy_all_tbl_trigs_ee      
   END LOOP; -- end vw loop
   CLOSE curViews;
END copy_all_views_ee;

PROCEDURE copy_all_unpackaged_sps_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS              
   CURSOR curSps(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = schId;
   spRec MD_STORED_PROGRAMS%ROWTYPE;
   n_newSpid MD_STORED_PROGRAMS."ID"%TYPE;
   norigSpid MD_STORED_PROGRAMS."ID"%TYPE;
   n_ret NUMBER;
BEGIN
   OPEN curSps(schemaId);
   FETCH curSps INTO spRec;
   LOOP
      EXIT WHEN curSps%NOTFOUND;
      norigSpid := spRec."ID";
      spRec."ID" := NULL;
      spRec.schema_id_fk := new_schemaId;

      INSERT /* APEX11b4d7 */  INTO MD_STORED_PROGRAMS VALUES spRec RETURNING "ID" INTO n_newSpid;
      n_ret := copy_additional_properties(spRec."ID", n_newSpid, p_scratchConn);

      INSERT /* APEX20b0a4 */  INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES(norigSpid,   
                                  C_OBJECTTYPE_STORED_PROGRAMS,   
                                  n_newSpid,   
                                  C_OBJECTTYPE_STORED_PROGRAMS, 
                                  p_scratchConn, spRec."NAME", spRec."NAME", C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaId));
      FETCH curSps INTO spRec;
   END LOOP;
   CLOSE curSps;
END copy_all_unpackaged_sps_ee;

PROCEDURE copy_all_tbl_trigs_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
   NULL;
END copy_all_tbl_trigs_ee;

PROCEDURE copy_all_vw_trigs_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
   NULL;
END copy_all_vw_trigs_ee;

PROCEDURE createIndexEntry(tableId MD_TABLES."ID"%TYPE, 
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curIndexes(tableId MD_TABLES."ID"%TYPE) IS SELECT * FROM md_indexes WHERE table_id_fk = tableId;
   idxRow MD_INDEXES%ROWTYPE;

BEGIN
   OPEN curIndexes(tableId);
   FETCH curIndexes INTO idxRow;

   LOOP
      EXIT WHEN curIndexes%NOTFOUND;

      INSERT /* APEX5aa9ac */  INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              idxRow."ID",
                              C_OBJECTTYPE_INDEXES,
                              idxRow."ID",
                              'MD_INDEXES',
                              p_scratchConn,
                              idxRow.index_name,
                              idxRow.index_name,
                              C_OBJECTTYPE_INDEXES || TO_CHAR(tableId)         
                           );      
      FETCH curIndexes INTO idxRow;
   END LOOP;
   CLOSE curIndexes;

END;

PROCEDURE createColumnEntry(tableId MD_TABLES."ID"%TYPE, 
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curColumns(tableId MD_TABLES."ID"%TYPE) IS SELECT * FROM md_columns WHERE table_id_fk = tableId;
   colRow MD_COLUMNS%ROWTYPE;
BEGIN
   OPEN curColumns(tableId);
   FETCH curColumns INTO colRow;

   LOOP
      EXIT WHEN curColumns%NOTFOUND;

      INSERT /* APEX37caa8 */  INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              colRow."ID",
                              C_OBJECTTYPE_COLUMNS,
                              colRow."ID",
                              'MD_COLUMNS',
                              p_scratchConn,
                              colRow.column_name,
                              colRow.column_name,
                              C_OBJECTTYPE_COLUMNS || TO_CHAR(tableId)         
                           );      
      FETCH curColumns INTO colRow;
   END LOOP;
   CLOSE curColumns;
END;


PROCEDURE createTableEntry(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curTables(schemaId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM md_tables WHERE schema_id_fk = schemaId;
   tblRow MD_TABLES%ROWTYPE;
BEGIN
   OPEN curTables(schemaId);
   FETCH curTables INTO tblRow;

   LOOP
      EXIT WHEN curTables%NOTFOUND;

      INSERT /* APEXf0d835 */  INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              tblRow."ID",
                              C_OBJECTTYPE_TABLES,
                              tblRow."ID",
                              'MD_TABLES',
                              p_scratchConn,
                              tblRow.table_name,
                              tblRow.table_name,
                              C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaid)         
                           );      
      createColumnEntry(tblRow."ID", p_scratchConn);      
      createIndexEntry(tblRow."ID", p_scratchConn);      
      FETCH curTables INTO tblRow;
   END LOOP;
   CLOSE curTables;
END;


PROCEDURE createConstraintEntry(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
BEGIN
   NULL;
END;


PROCEDURE copy_schema_objects_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
    --This create scratch model for table triggers as well
    createDummyScrTblPerSchema_ee(schemaId,   
                                 new_schemaId,
                                 p_scratchConn);
    -- Make md_derivatives entry only for the following objects -- begin 
    createTableEntry(schemaId, new_schemaId, p_scratchConn);
    createConstraintEntry(schemaId, new_schemaId, p_scratchConn);    
    -- Make md_derivatives entry only for the following objects -- end

    --This create scratch model for view triggers as well                                 
    copy_all_views_ee(schemaId, 
                   new_schemaId,
                   p_scratchConn);

    copy_all_unpackaged_sps_ee(schemaId, 
                 new_schemaId,
                 p_scratchConn);                                    
END copy_schema_objects_ee;

-- p_connectionid -- scratch model connection id
PROCEDURE copy_catalogs_cascade_ee(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
   CURSOR curDerivatives(conId MD_CONNECTIONS."ID"%TYPE) IS
                SELECT *
                       FROM MD_DERIVATIVES 
                       WHERE DERIVED_CONNECTION_ID_FK = conId
                       AND SRC_TYPE = C_OBJECTTYPE_CATALOGS;
   recDerived MD_DERIVATIVES%ROWTYPE;

   CURSOR curSchemas(catId MD_SCHEMAS.CATALOG_ID_FK%TYPE) IS
                SELECT * FROM MD_SCHEMAS WHERE CATALOG_ID_FK = catId;
   recSchema MD_SCHEMAS%ROWTYPE;

   ncatId MD_SCHEMAS.CATALOG_ID_FK%TYPE;
   n_newschId MD_SCHEMAS."ID"%TYPE;
   v_ret NUMBER;
   v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
   v_catalogname VARCHAR2(300);
   v_newName VARCHAR2(300); 
BEGIN
   OPEN curDerivatives(p_connectionid);
   FETCH curDerivatives INTO recDerived;
   LOOP -- for each of the catalog process its schemas
      EXIT WHEN curDerivatives%NOTFOUND;
      SELECT /* APEXa213de */  dummy_flag, catalog_name INTO v_catalogdummy, v_catalogname FROM MD_CATALOGS WHERE "ID" = recDerived.src_id;
      ncatId := recDerived.src_id;
      OPEN curSchemas(ncatId);
      FETCH curSchemas INTO recSchema;
      LOOP
         EXIT WHEN curSchemas%NOTFOUND;

         v_newName := CREATE_SCHEMANAME(recSchema."NAME",v_catalogname);

         INSERT /* APEXc5ddfb */  INTO MD_SCHEMAS(CATALOG_ID_FK, "NAME", "TYPE", CHARACTER_SET, VERSION_TAG)
                          VALUES (recDerived.derived_id, 
                                  v_newName, 
                                  recSchema."TYPE",
                                  recSchema.CHARACTER_SET, 
                                  recSchema.VERSION_TAG)
                          RETURNING "ID" INTO n_newschId;
         v_ret := copy_additional_properties(ncatId, n_newschId, p_connectionid);                          
         v_ret := copy_additional_properties(recSchema."ID", n_newschId, p_connectionid);

	       -- No Need for namespace stuff for catalogs.
         INSERT /* APEXbc229f */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (recSchema."ID", C_OBJECTTYPE_SCHEMAS, n_newschId, C_OBJECTTYPE_SCHEMAS, p_connectionid, recSchema."NAME", v_newName);

         INSERT /* APEX3b1b2b */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (recDerived.src_id, C_OBJECTTYPE_CATALOGS, n_newschId, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_catalogname, v_newName);         

         copy_schema_objects_ee(recSchema."ID", n_newschId, p_connectionId);
         FETCH curSchemas INTO recSchema;
      END LOOP; -- end schema loop
      CLOSE curSchemas;

      FETCH curDerivatives INTO recDerived;
   END LOOP;  -- end catalog loop
   CLOSE curDerivatives;
END copy_catalogs_cascade_ee;

FUNCTION copy_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL, p_scratchModel BOOLEAN := FALSE) RETURN NUMBER
IS
  v_newConnectionId MD_CONNECTIONS.ID%TYPE;
  v_numProps NUMBER;
  v_catalogId MD_CATALOGS.ID%TYPE;
  v_catalogName MD_CATALOGS.CATALOG_NAME%TYPE;
  v_numCatalogs NUMBER;
  v_numDuplicateIndexes NUMBER;
  v_sql VARCHAR(255);   

  CURSOR curDerivatives(conId MD_CONNECTIONS."ID"%TYPE) IS
                SELECT distinct 
                           id,
                           src_id,
                           src_type,
                           derived_id,
                           derived_type,
                           derived_connection_id_fk,
                           transformed,
                           original_identifier,
                           new_identifier,
                           derived_object_namespace,
                           derivative_reason,
                           security_group_id,
                           created_on,
                           created_by,
                           last_updated_on,
                           last_updated_by,
                           enabled
                       FROM MD_DERIVATIVES 
                       WHERE DERIVED_CONNECTION_ID_FK = conId
                       AND SRC_TYPE = C_OBJECTTYPE_CATALOGS;

   recDerived MD_DERIVATIVES%ROWTYPE;


BEGIN

  --DROP ANY EXISTING CONVERTED MODEL, AS WE ONLY HAVE A ONE TO ONE RELATIONSHIP WITH CAPTURED AND CONVERTED MODELS NOW
  DELETE /* APEXaa078e */  FROM Md_Connections C 
  WHERE C.Type = 'CONVERTED' --only want to delete CONVERTED MODELS
  AND C.Id IN ( -- delete all converted models associated with this captured model
  SELECT d.derived_id FROM md_derivatives d WHERE d.src_id =  p_connectionid
  );

  -- The connection doesn't use the filter, because it is called for a single connection.
  v_newConnectionId := copy_connection(p_connectionid, p_scratchModel);
  -- Don't forget its additional props
  v_numProps := copy_additional_properties(p_connectionid, v_newConnectionId, v_newConnectionId);
  -- OK - Next coalesce the schema/catalogs

  IF p_scratchModel = FALSE 
  THEN
      --v_catalogId := create_dummy_catalog(v_newConnectionId);
      --select CATALOG_NAME INTO v_catalogName FROM MD_CATALOGS WHERE CONNECTION_ID_FK = p_connectionid;
      --v_sql := 'UPDATE MD_CATALOGS SET CATALOG_NAME = ''' || v_catalogName  || ''' WHERE ID = ' || TO_CHAR(v_catalogId);
      --EXECUTE IMMEDIATE v_sql;
      create_dummy_catalogs(p_connectionid, v_newConnectionId, FALSE);

      OPEN curDerivatives(v_newConnectionId);

      LOOP
            FETCH curDerivatives INTO recDerived;
            EXIT WHEN curDerivatives%NOTFOUND;
           --v_numCatalogs := copy_catalogs_cascade(p_connectionid, v_catalogid, v_newConnectionId, p_filter_set);
           v_numCatalogs := copy_catalogs_cascade(p_connectionid, recDerived.src_id, recDerived.derived_id, v_newConnectionId, p_filter_set);
           --FETCH curDerivatives INTO recDerived;
      END LOOP;
      CLOSE curDerivatives;
      v_numDuplicateIndexes := remove_duplicate_indexes(v_newConnectionId);
      v_numDuplicateIndexes := v_numDuplicateIndexes + remove_indexes_used_elsewhere(v_newConnectionId);
  ELSE -- enterprise capture
      create_dummy_catalogs(p_connectionid, v_newConnectionId, TRUE);
      copy_catalogs_cascade_ee(v_newConnectionId);
  END IF;
  COMMIT;
  return v_newConnectionId;
END copy_connection_cascade;

PROCEDURE update_derivative_record(p_orig VARCHAR2, p_new VARCHAR2, p_derivedid MD_DERIVATIVES.DERIVED_ID%TYPE,
p_derivedtype MD_DERIVATIVES.DERIVED_TYPE%TYPE, p_connectionid MD_DERIVATIVES.DERIVED_CONNECTION_ID_FK%TYPE)
IS	
BEGIN
    UPDATE /* APEX46913a */  MD_DERIVATIVES SET TRANSFORMED = C_TRANSFORMED_TRUE, ORIGINAL_IDENTIFIER = p_orig, NEW_IDENTIFIER = p_new
      WHERE DERIVED_ID = p_derivedid
      AND DERIVED_TYPE = p_derivedtype
      AND DERIVED_CONNECTION_ID_FK = p_connectionid;
END update_derivative_record;

/*
 * This procedure is like update_derivative_record except it should be used at name clash stage
 * basically, this will work the same as update_derivative_record except in those cases where
 * there is already a derivative record.  In this latter case, we want ORIGINAL_IDENTIFIER preserved
 * (this is called when there is a possiblity that we've carried out a second transformation
 */
PROCEDURE second_update_derivative(p_orig VARCHAR2, p_new VARCHAR2, p_derivedid MD_DERIVATIVES.DERIVED_ID%TYPE,
p_derivedtype MD_DERIVATIVES.DERIVED_TYPE%TYPE, p_connectionid MD_DERIVATIVES.DERIVED_CONNECTION_ID_FK%TYPE)
IS
  v_firstOriginal MD_DERIVATIVES.ORIGINAL_IDENTIFIER%TYPE;
BEGIN
  -- see if p_orig is already the new identifier
  select /* APEX3d4c8f */  ORIGINAL_IDENTIFIER INTO v_firstOriginal FROM MD_DERIVATIVES
      WHERE DERIVED_ID = p_derivedid
      AND DERIVED_TYPE = p_derivedtype
      AND NEW_IDENTIFIER = p_orig
      AND DERIVED_CONNECTION_ID_FK = p_connectionid;
  if v_firstOriginal IS NULL then
    update_derivative_record(p_orig, p_new, p_derivedid, p_derivedtype, p_connectionid);
  else
    update_derivative_record(v_firstOriginal, p_new, p_derivedid, p_derivedtype, p_connectionid);
  end if;
EXCEPTION
  when NO_DATA_FOUND THEN
    update_derivative_record(p_orig, p_new, p_derivedid, p_derivedtype, p_connectionid);
  WHEN TOO_MANY_ROWS THEN
    dbms_output.put_line(TO_CHAR(p_derivedid) || ' ' || TO_CHAR(p_derivedtype) || ' '|| TO_CHAR(p_connectionid));

END second_update_derivative;

FUNCTION transform_column_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                 p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
    SELECT * FROM MD_COLUMNS
    WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(COLUMN_NAME) != COLUMN_NAME 
    FOR UPDATE OF COLUMN_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
    SELECT c.*, d.NEW_IDENTIFIER FROM MD_COLUMNS c, MD_DERIVATIVES d
    WHERE (c.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE= C_OBJECTTYPE_COLUMNS AND DERIVED_CONNECTION_ID_FK = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != COLUMN_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF COLUMN_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.COLUMN_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_COLUMNS, p_connectionid);    
    IF p_scratchModel = FALSE -- Update md_columns only for non migration estimation models
    THEN
        UPDATE /* APEXb1b33a */  MD_COLUMNS SET COLUMN_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_COLUMNS, v_count);
  --return v_count;
END transform_column_identifiers;

FUNCTION transform_constraint_idents(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_CONSTRAINTS
  WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT c.*, d.NEW_IDENTIFIER FROM MD_CONSTRAINTS c, MD_DERIVATIVES d
  WHERE (c.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE = C_OBJECTTYPE_CONSTRAINTS AND DERIVED_CONNECTION_ID_FK = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != c.NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_CONSTRAINTS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
       UPDATE /* APEXf3bef4 */  MD_CONSTRAINTS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_CONSTRAINTS, v_count);
END transform_constraint_idents;

FUNCTION transform_group_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                          p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_GROUPS WHERE
   SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(GROUP_NAME) != GROUP_NAME
    FOR UPDATE OF GROUP_NAME;
*/    

  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_GROUPS WHERE
   ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE = C_OBJECTTYPE_GROUPS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(GROUP_NAME) != GROUP_NAME
    FOR UPDATE OF GROUP_NAME;
  v_rec MD_GROUPS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.GROUP_NAME);

    update_derivative_record(v_rec.GROUP_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_GROUPS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
       UPDATE /* APEX09ecb8 */  MD_GROUPS SET GROUP_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_GROUPS, v_count);
END transform_group_identifiers;

FUNCTION transform_index_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_INDEXES WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||INDEX_NAME) != INDEX_NAME
    FOR UPDATE OF INDEX_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT i.*, d.NEW_IDENTIFIER FROM MD_INDEXES i, MD_DERIVATIVES d WHERE (i.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_INDEXES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != i.INDEX_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF INDEX_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.INDEX_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_INDEXES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
        UPDATE /* APEXc5eeb3 */  MD_INDEXES SET INDEX_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  commit;
  CLOSE v_curs;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_INDEXES, v_count);
END transform_index_identifiers;

FUNCTION transform_othobj_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                          p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_OTHER_OBJECTS  WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_OTHER_OBJECTS  WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_OTHER_OBJECTS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_OTHER_OBJECTS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_OTHER_OBJECTS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEXb71a65 */  MD_OTHER_OBJECTS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_OTHER_OBJECTS, v_count);
END transform_othobj_identifiers;

FUNCTION transform_package_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                        p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_PACKAGES  WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_PACKAGES  WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
    WHERE SRC_TYPE = C_OBJECTTYPE_PACKAGES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_PACKAGES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_PACKAGES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX7aeacf */  MD_PACKAGES SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_PACKAGES, v_count);
END transform_package_identifiers;

FUNCTION transform_schema_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                         p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SCHEMAS WHERE ID IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT s.*, d.NEW_IDENTIFIER FROM MD_SCHEMAS s, MD_DERIVATIVES d WHERE (s.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_SCHEMAS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName:= MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SCHEMAS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX29798d */  MD_SCHEMAS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SCHEMAS, v_count);
END transform_schema_identifiers;

FUNCTION transform_sequence_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                           p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT s.*, d.NEW_IDENTIFIER FROM MD_SEQUENCES s, MD_DERIVATIVES d WHERE (s.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_SEQUENCES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SEQUENCES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEXb2479c */  MD_SEQUENCES SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SEQUENCES, v_count);
END transform_sequence_identifiers;

FUNCTION transform_sproc_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                         p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT sp.*, d.NEW_IDENTIFIER FROM MD_STORED_PROGRAMS sp, MD_DERIVATIVES d WHERE (sp.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_STORED_PROGRAMS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != sp.NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_STORED_PROGRAMS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX62fa1b */  MD_STORED_PROGRAMS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_STORED_PROGRAMS, v_count);
END transform_sproc_identifiers;

FUNCTION transform_synonym_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                       p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SYNONYMS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SYNONYMS WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE =  C_OBJECTTYPE_SYNONYMS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_SYNONYMS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);

    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SYNONYMS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX294351 */  MD_SYNONYMS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SYNONYMS, v_count);
END transform_synonym_identifiers;

FUNCTION transform_table_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TABLE_NAME) != TABLE_NAME
    FOR UPDATE OF TABLE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT t.*, d.NEW_IDENTIFIER FROM MD_TABLES t, MD_DERIVATIVES d WHERE (t.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_TABLES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != TABLE_NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF TABLE_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.TABLE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TABLES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX2d2098 */  MD_TABLES SET TABLE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TABLES, v_count);
END transform_table_identifiers;

FUNCTION transform_view_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||VIEW_NAME) != VIEW_NAME
    FOR UPDATE OF VIEW_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT v.*, d.NEW_IDENTIFIER FROM MD_VIEWS v, MD_DERIVATIVES d WHERE (v.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_VIEWS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != VIEW_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF VIEW_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.VIEW_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_VIEWS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEXba7a16 */  MD_VIEWS SET VIEW_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_VIEWS, v_count);
END transform_view_identifiers;

FUNCTION transform_tablespace_idents(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLESPACES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(TABLESPACE_NAME) != TABLESPACE_NAME
    FOR UPDATE OF TABLESPACE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLESPACES WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_TABLESPACES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(TABLESPACE_NAME) != TABLESPACE_NAME
    FOR UPDATE OF TABLESPACE_NAME;
  v_rec MD_TABLESPACES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.TABLESPACE_NAME);

    update_derivative_record(v_rec.TABLESPACE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TABLESPACES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEXf7e330 */  MD_TABLESPACES SET TABLESPACE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TABLESPACES, v_count);
END transform_tablespace_idents;

FUNCTION transform_trigger_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                       p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs IS 
  SELECT * FROM MD_TRIGGERS  WHERE TABLE_OR_VIEW_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TRIGGER_NAME) != TRIGGER_NAME
    FOR UPDATE OF TRIGGER_NAME;
  CURSOR v_view_trigger_curs IS 
    SELECT * FROM MD_TRIGGERS  WHERE TABLE_OR_VIEW_ID_FK IN
    (SELECT VIEW_ID FROM MGV_ALL_VIEWS WHERE CONNECTION_ID =  p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TRIGGER_NAME) != TRIGGER_NAME
    FOR UPDATE OF TRIGGER_NAME;
*/    
  CURSOR v_curs IS 
  SELECT t.*, d.NEW_IDENTIFIER FROM MD_TRIGGERS t, MD_DERIVATIVES d WHERE (t.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE =  C_OBJECTTYPE_TRIGGERS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != t.TRIGGER_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF TRIGGER_NAME;

  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.TRIGGER_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TRIGGERS, p_connectionid);
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX1343ad */  MD_TRIGGERS SET TRIGGER_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;       

  END LOOP;
  CLOSE v_curs;
  /*
  OPEN v_view_trigger_curs;
  LOOP
    FETCH v_view_trigger_curs INTO v_rec;
    EXIT WHEN v_view_trigger_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.TRIGGER_NAME);

    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_TRIGGERS SET TRIGGER_NAME = v_newName WHERE CURRENT OF v_view_trigger_curs;
    END IF;

    update_derivative_record(v_rec.TRIGGER_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TRIGGERS, p_connectionid);
  END LOOP;
  CLOSE v_view_trigger_curs;
  */
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TRIGGERS, v_count);
END transform_trigger_identifiers;

FUNCTION transform_uddt_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                      p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||DATA_TYPE_NAME) != DATA_TYPE_NAME
    FOR UPDATE OF DATA_TYPE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_UDDT AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||DATA_TYPE_NAME) != DATA_TYPE_NAME
    FOR UPDATE OF DATA_TYPE_NAME;
  v_rec MD_USER_DEFINED_DATA_TYPES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.DATA_TYPE_NAME);

    update_derivative_record(v_rec.DATA_TYPE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_UDDT, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEX656142 */  MD_USER_DEFINED_DATA_TYPES SET DATA_TYPE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_UDDT, v_count);
END transform_uddt_identifiers;

FUNCTION transform_user_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USERS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME
    FOR UPDATE OF USERNAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USERS WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_USERS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME
    FOR UPDATE OF USERNAME;
  v_rec MD_USERS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.USERNAME);

    update_derivative_record(v_rec.USERNAME, v_newName, v_rec.ID, C_OBJECTTYPE_USERS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE /* APEXf2ee88 */  MD_USERS SET USERNAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_USERS, v_count);
END transform_user_identifiers;

PROCEDURE rename_duplicate_index_names(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE)
IS
    CURSOR v_curs IS
    select * from md_derivatives a 
          where a.derived_connection_id_fk = p_connectionid
                and 1 < (select count(*) 
                          from md_derivatives b 
                              where a.new_identifier = b.new_identifier 
                                  and a.derived_type='MD_INDEXES'
                                      and a.derived_connection_id_fk = b.derived_connection_id_fk)
                                      order by new_identifier;

  v_row MD_DERIVATIVES%ROWTYPE;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;

  v_id MD_DERIVATIVES.DERIVED_ID%TYPE;

  v_curName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_count NUMBER := 1;
  v_maxIdentLen NUMBER := 30;
BEGIN
  v_curName := 'dsa;lkjsd;alskj;';
  v_maxIdentLen := MIGRATION_TRANSFORMER.GET_ORACLE_LONG_IDENTIFIER();
  OPEN v_curs;
  LOOP
    FETCH v_curs INTO v_row;
    EXIT WHEN v_curs%NOTFOUND;


   IF UPPER(v_row.NEW_IDENTIFIER) = UPPER(v_curName) THEN
      v_newName := MIGRATION_TRANSFORMER.ADD_SUFFIX(v_row.NEW_IDENTIFIER, '_' || TO_CHAR(v_count), v_maxIdentLen);
      v_count := v_count + 1;

      if p_scratchModel = FALSE
      THEN
         update /* APEX6007dc */  MD_INDEXES SET index_name = v_newName where id = v_row.DERIVED_ID;
      END IF;
      second_update_derivative(v_row.NEW_IDENTIFIER, v_newName, v_row.DERIVED_ID, C_OBJECTTYPE_INDEXES, p_connectionid);
    else
      v_curName := v_row.NEW_IDENTIFIER;
      v_count := 1;
    END IF;
  END LOOP;
  CLOSE v_curs;
  commit;
END rename_duplicate_index_names;

PROCEDURE fixup_duplicate_identifier(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                      p_mdrec_id MD_DERIVATIVES.ID%TYPE,
                                      p_derived_type MD_DERIVATIVES.DERIVED_TYPE%TYPE,
                                      p_derived_id MD_DERIVATIVES.DERIVED_ID%TYPE,
                                      p_new_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE,
                                      p_suffix INTEGER, 
                                      p_scratchModel BOOLEAN := FALSE)
IS
	v_transform_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
	v_did_a_transform CHAR(1) := 'Y';
	v_maxIdentLen NUMBER := 30;
	--v_underscoresuffixsize NUMBER;
	--v_underscoresuffix VARCHAR2(100);
  --v_sizebeforeprefix NUMBER;
BEGIN
  --v_underscoresuffix := '_' || TO_CHAR(p_suffix);
  --v_underscoresuffixsize := LENGTH(v_underscoresuffix);
  --v_sizebeforeprefix := 30 - v_underscoresuffixsize;
  v_maxIdentLen := MIGRATION_TRANSFORMER.GET_ORACLE_LONG_IDENTIFIER();
  v_transform_identifier := MIGRATION_TRANSFORMER.ADD_SUFFIX(p_new_identifier, '_' || TO_CHAR(p_suffix) , v_maxIdentLen);

  IF p_scratchModel = FALSE
  THEN
     CASE p_derived_type
      WHEN C_OBJECTTYPE_CONNECTIONS THEN
        UPDATE /* APEXe75c92 */  MD_CONNECTIONS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_CATALOGS THEN
        UPDATE /* APEX9d59e6 */  MD_CATALOGS SET CATALOG_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SCHEMAS THEN
        UPDATE /* APEXf18c9c */  MD_SCHEMAS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TABLES THEN
        UPDATE /* APEX4e4a3a */  MD_TABLES SET TABLE_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_CONSTRAINTS THEN
        UPDATE /* APEXacb055 */  MD_CONSTRAINTS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_INDEXES THEN
        UPDATE /* APEX9a6ec3 */  MD_INDEXES SET INDEX_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TRIGGERS THEN
        UPDATE /* APEXbfe20a */  MD_TRIGGERS SET TRIGGER_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_VIEWS THEN
        UPDATE /* APEXf05c07 */  MD_VIEWS SET VIEW_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_USERS THEN
        UPDATE /* APEX21fb2b */  MD_USERS SET USERNAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_GROUPS THEN
        UPDATE /* APEX3bb2ec */  MD_GROUPS SET GROUP_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_OTHER_OBJECTS THEN
        UPDATE /* APEXee949f */  MD_OTHER_OBJECTS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TABLESPACES THEN
        UPDATE /* APEX601b91 */  MD_TABLESPACES SET TABLESPACE_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_UDDT THEN
        UPDATE /* APEXa954ee */  MD_USER_DEFINED_DATA_TYPES SET DATA_TYPE_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_STORED_PROGRAMS THEN
        UPDATE /* APEX58551f */  MD_STORED_PROGRAMS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_PACKAGES THEN
        UPDATE /* APEX4639d1 */  MD_PACKAGES SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SYNONYMS THEN
        UPDATE /* APEXa96fbb */  MD_SYNONYMS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SEQUENCES THEN
        UPDATE /* APEX9aa6b2 */  MD_SEQUENCES SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      ELSE
        -- Handle column namespace here.
        IF SUBSTR(P_DERIVED_TYPE,1, LENGTH(C_OBJECTTYPE_COLUMNS)) = C_OBJECTTYPE_COLUMNS THEN
          UPDATE /* APEXb3a512 */  MD_COLUMNS SET COLUMN_NAME = v_transform_identifier WHERE ID = p_derived_id;
        ELSE
          v_did_a_transform := 'N';
        END IF;
      END CASE;
  END IF; -- end if scratch model

	IF v_did_a_transform = 'Y' THEN
	  UPDATE /* APEX247405 */  MD_DERIVATIVES SET NEW_IDENTIFIER = v_transform_identifier WHERE ID = p_mdrec_id;
	  commit;
    END IF;
    commit;
END fixup_duplicate_identifier;

FUNCTION getClashCount(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN INTEGER 
IS
  v_clashCount INTEGER;
BEGIN
  SELECT /* APEXf4178c */  COUNT(*) INTO v_clashCount FROM md_derivatives a
    where rowid > (
      select min(rowid) from md_derivatives b
      where
        b.derived_connection_id_fk = p_connectionid
        AND b.derived_connection_id_fk = a.derived_connection_id_fk
        AND UPPER(b.new_identifier) = UPPER(a.new_identifier)--  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
        AND b.derived_object_namespace = a.derived_object_namespace);
  RETURN v_clashCount;
END getClashCount;

PROCEDURE transform_clashes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE)
IS
  CURSOR v_curs IS
    select id,derived_type, derived_id, UPPER(new_identifier) --  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
    from md_derivatives a
    where rowid > (
      select min(rowid) from md_derivatives b
      where
        b.derived_connection_id_fk = p_connectionid
        AND b.derived_connection_id_fk = a.derived_connection_id_fk
        AND UPPER(b.new_identifier) = UPPER(a.new_identifier) --  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
        AND b.derived_object_namespace = a.derived_object_namespace)
        ORDER BY new_identifier, derived_type;
  v_derived_type MD_DERIVATIVES.DERIVED_TYPE%TYPE;
  v_curr_type v_derived_type%TYPE := '~~dasdddfl;';
  v_derived_id MD_DERIVATIVES.DERIVED_ID%TYPE;
  v_new_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_curr_identifier v_new_identifier%TYPE := '~~~~asdasnc';
  v_suffix INTEGER := 0;
  v_innerSuffix INTEGER;
  v_clashCount INTEGER;
  v_mdrec_id MD_DERIVATIVES.ID%TYPE;
BEGIN

  rename_duplicate_index_names(p_connectionid, p_scratchModel);

  v_clashCount := getClashCount(p_connectionid);
  WHILE v_clashCount > 0 
  LOOP
	v_suffix := v_suffix + 1;
	v_innerSuffix := v_suffix; 
    -- Now lets see if there are any identifier clashes
    OPEN v_curs;
    LOOP 
      FETCH v_curs into v_mdrec_id, v_derived_type, v_derived_id, v_new_identifier;
      EXIT WHEN v_curs%NOTFOUND;
 	  IF v_derived_type = v_curr_type AND v_new_identifier = v_curr_identifier THEN
		  v_innerSuffix := v_innerSuffix + 1;
	  else
		  v_curr_type := v_derived_type;
		  v_curr_identifier := v_new_identifier;
	  END IF;
      -- We have to fix up all of these identifiers
      fixup_duplicate_identifier(p_connectionid, v_mdrec_id, v_derived_type, v_derived_id, v_new_identifier, v_innerSuffix, p_scratchModel);
    END LOOP;
	CLOSE v_curs;
    v_clashCount := getClashCount(p_connectionid);
  END LOOP;
END transform_clashes;

FUNCTION getDuplicateIdentifierID(p_connectionid MD_CONNECTIONS.ID%TYPE, v_duplicateIdentifier md_derivatives.new_identifier%TYPE) RETURN NUMBER 
IS 
  v_md_derivative_id NUMBER;
BEGIN
 select a.id into v_md_derivative_id from md_derivatives a, mgv_all_details m
      where
        a.derived_connection_id_fk = p_connectionid    
         AND m.objname = a.original_identifier
         and a.derived_connection_id_fk = m.connid
         and m.capturedorconverted = 'CONVERTED'
          AND m.objtype = a.derived_type 
        and m.objid = a.derived_id 
        AND a.original_identifier = v_duplicateIdentifier
        and a.derived_type not in ('MD_COLUMNS')
        and rownum = 1;
return v_md_derivative_id;
end getDuplicateIdentifierID;

FUNCTION isDuplicateIdentifier(p_connectionid MD_CONNECTIONS.ID%TYPE, v_duplicateIdentifier md_derivatives.new_identifier%TYPE) RETURN CHAR 
IS 
  v_recordExists CHAR;
BEGIN

 select case 
            when exists (select 1 
                         from md_derivatives a, mgv_all_details m 
                         where a.new_identifier = v_duplicateIdentifier and a.derived_connection_id_fk = p_connectionid    
         AND m.objname = a.original_identifier
         and a.derived_connection_id_fk = m.connid
         and m.capturedorconverted = 'CONVERTED'
        and a.derived_type not in ('MD_COLUMNS') )
            then 'Y' 
            else 'N' 
        end as rec_exists
into v_recordExists from dual;
return v_recordExists;
end isDuplicateIdentifier;


PROCEDURE remove_duplicate_id_objecttype(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE)
IS
CURSOR v_duplicateIdentifier_cur
  IS SELECT New_identifier FROM (
select a.new_identifier,a.DERIVED_OBJECT_NAMESPACE from md_derivatives a, mgv_all_details m
      where
        a.derived_connection_id_fk = p_connectionid
         AND m.objname = a.original_identifier
         and a.derived_connection_id_fk = m.connid
         and m.capturedorconverted = 'CONVERTED'
          AND m.objtype = a.derived_type
        and m.objid = a.derived_id
        and a.derived_type not in ('MD_COLUMNS')
       GROUP BY a.new_identifier,a.DERIVED_OBJECT_NAMESPACE
       HAVING COUNT(*) > 1)X ;

  v_duplicateIdentifier md_derivatives.new_identifier%TYPE;
  v_transform_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_derived_type MD_DERIVATIVES.DERIVED_TYPE%TYPE;
  v_derived_id MD_DERIVATIVES.DERIVED_ID%TYPE;

  v_recordExists CHAR(1) := 'N';
  v_suffix INTEGER := 0;
  p_mdrec_id NUMBER := 0;
  v_mdDerivativeRow MD_DERIVATIVES%ROWTYPE;
  v_maxIdentLen NUMBER := 30;

BEGIN
  v_maxIdentLen := MIGRATION_TRANSFORMER.GET_ORACLE_LONG_IDENTIFIER();
  OPEN v_duplicateIdentifier_cur;
  FETCH v_duplicateIdentifier_cur INTO v_duplicateIdentifier;
  LOOP
    EXIT WHEN v_duplicateIdentifier_cur%NOTFOUND;
       LOOP
       v_suffix := v_suffix + 1;
       v_transform_identifier := MIGRATION_TRANSFORMER.ADD_SUFFIX(v_duplicateIdentifier, '_' || TO_CHAR(v_suffix) , v_maxIdentLen);
       v_recordExists := isDuplicateIdentifier(p_connectionid, v_transform_identifier);
       exit when v_recordExists = 'N';
       END LOOP;    
       p_mdrec_id := getDuplicateIdentifierID(p_connectionid, v_duplicateIdentifier);

       SELECT * INTO v_mdDerivativeRow from MD_DERIVATIVES WHERE "ID" = p_mdrec_id;     
       v_derived_type := v_mdDerivativeRow.DERIVED_TYPE;
       v_derived_id := v_mdDerivativeRow.DERIVED_ID;

       fixup_duplicate_identifier(p_connectionid, p_mdrec_id, v_derived_type, v_derived_id, v_duplicateIdentifier, v_suffix, p_scratchModel);         
       v_suffix := 0;

    FETCH v_duplicateIdentifier_cur INTO v_duplicateIdentifier;
  END LOOP;
  CLOSE v_duplicateIdentifier_cur;
  COMMIT;
END remove_duplicate_id_objecttype;

FUNCTION transform_all_identifiers_x(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                             p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY
IS
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_ARRAY;
  v_rec NAME_AND_COUNT_T;
BEGIN
  v_ret := NAME_AND_COUNT_ARRAY();
  -- We need to update identifiers on pretty much the whole schema
  -- MD_COLUMNS
  v_rec := transform_column_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');

  -- MD_CONSTRAINTS
  v_rec := transform_constraint_idents(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_GROUPS
  v_rec := transform_group_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_INDEXES
  v_rec := transform_index_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_OTHER_OBJECTS
  v_rec := transform_othobj_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_PACKAGES
  v_rec := transform_package_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SCHEMAS
  v_rec := transform_schema_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SEQUENCES
  v_rec := transform_sequence_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_STORED_PROGRAMS
  v_rec := transform_sproc_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SYNONYMS
  v_rec := transform_synonym_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TABLES
  v_rec := transform_table_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TABLESPACES
  v_rec := transform_tablespace_idents(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TRIGGERS
  v_rec := transform_trigger_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_USER_DEFINED_DATA_TYPES
  v_rec := transform_uddt_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_USERS
  v_rec := transform_user_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  /*
  UPDATE MD_USERS SET USERNAME = MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME;
  dbms_output.put_line(SQL%ROWCOUNT || ' USER names updated');
  */
  -- MD_VIEWS
  v_rec := transform_view_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  transform_clashes(p_connectionid, p_scratchModel);
  -- TODO: Something meaningful if all goes wrong

  -- The following call will remove Duplicate Identifiers across the all objects types
  remove_duplicate_id_objecttype(p_connectionid, p_scratchModel); 

  return v_ret;
  COMMIT;
END transform_all_identifiers_x;

FUNCTION transform_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE, p_prefixName VARCHAR2, p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY
IS
BEGIN
v_prefixName := p_prefixName;
RETURN  transform_all_identifiers_x(p_connectionid, p_scratchModel);
END transform_all_identifiers;

FUNCTION rule_specificity(p_precision MIGR_DATATYPE_TRANSFORM_RULE.SOURCE_PRECISION%TYPE, p_scale MIGR_DATATYPE_TRANSFORM_RULE.SOURCE_SCALE%TYPE) RETURN INTEGER
IS
BEGIN
  IF p_precision is NULL then 
    return 1;
  END IF;
  IF p_scale is NULL then
    return 2;
  END IF;
  return 3;
END rule_specificity;

FUNCTION addToWhereClause(p_whereclause VARCHAR2, p_toAdd VARCHAR2) return VARCHAR2
IS
BEGIN
  IF p_whereclause is NULL then
    return p_toAdd;
  else
    return p_whereclause || ' AND ' || p_toAdd;
  END IF;
END addToWhereClause;

FUNCTION precision_val(p_srcPrecision MD_COLUMNS.PRECISION%TYPE, p_newDataType VARCHAR2) RETURN VARCHAR2
IS
  v_newDataType VARCHAR2(255);
  v_ret VARCHAR2(255);
BEGIN
  v_newDataType := UPPER(to_char(p_newDataType));
  -- Assume that no precision should be present
  v_ret := 'NULL';
  -- No see what the new data type is and ensure that a precision is required
  IF v_newDataType = 'VARCHAR2' OR
     v_newDataType = 'NVARCHAR2' OR
     v_newDataType = 'NUMBER' OR
     v_newDataType = 'DECIMAL' OR
     v_newDataType = 'TIMESTAMP' OR
     v_newDataType = 'INTERVAL YEAR' OR
     v_newDataType = 'INTERVAL DAY' OR
     v_newDataType = 'UROWID' OR
     v_newDataType = 'CHAR' OR
     v_newDataType = 'RAW' OR
     v_newDataType = 'NCHAR' THEN
     v_ret := p_srcPrecision;
  END IF;
  return v_ret;
END precision_val;

FUNCTION scale_val(p_srcPrecision MD_COLUMNS.SCALE%TYPE, p_newDataType VARCHAR2) RETURN VARCHAR2
IS
  v_newDataType VARCHAR2(255);
  v_ret VARCHAR2(255);
BEGIN
  v_newDataType := UPPER(to_char(p_newDataType));
  v_ret := 'NULL';
  IF v_newDataType = 'NUMBER'  OR v_newDataType = 'DECIMAL' THEN
    v_ret := p_srcPrecision;
  END IF;
  return v_ret;
END scale_val;

FUNCTION check_for_invalid_data_types(p_connectionid MD_CONNECTIONS.ID%TYPE, p_numbytesperchar INTEGER, p_is12c CHAR:= 'N') RETURN NUMBER
IS
    --make limits that vary in 12c variables
    v_limitVarchar2 MD_COLUMNS.PRECISION%TYPE :=4000;
    v_limitChar MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitNChar MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitNChar_2 MD_COLUMNS.PRECISION%TYPE := 1000;
    v_limitNVarchar2 MD_COLUMNS.PRECISION%TYPE := 4000;
    v_limitNVarchar2_2 MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitRaw MD_COLUMNS.PRECISION%TYPE := 2000;
BEGIN
    IF (p_is12c = 'Y') THEN
    	--Note: CHAR and NCHAR are not effected
        v_limitVarchar2 :=32767;
        v_limitNVarchar2 := 32767;
        v_limitNVarchar2_2 := 16383;
        v_limitRaw := 32767;
    END IF;
    -- First, for char(n) columns, drop back to varchar2 - this could go up to 4k.
    -- If its even greater than this, it will be caught later on and made into a CLOB.
    UPDATE /* APEXa70168 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
        AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'CHAR' AND PRECISION > v_limitChar
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX0d0107 */  MD_COLUMNS SET COLUMN_TYPE = 'VARCHAR2' WHERE COLUMN_TYPE = 'CHAR' AND PRECISION > v_limitChar
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- We'll do something similar for NCHARs
    IF p_numbytesperchar = 1 THEN
        UPDATE /* APEX785abf */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE /* APEXbcc963 */  MD_COLUMNS SET COLUMN_TYPE = 'NVARCHAR2' WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    ELSE   
        -- 2 bytes per char - max is actually 1k          
        UPDATE /* APEX02dfc9 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE /* APEXe5183d */  MD_COLUMNS SET COLUMN_TYPE = 'NVARCHAR2' WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    END IF;            
    -- VARCHAR or VARCHAR2 can't go above 4000 (32767 in 12c).  If they do, they need to fallback to a CLOB
    UPDATE /* APEX8b4b3d */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'VARCHAR' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX096a2c */  MD_COLUMNS SET COLUMN_TYPE = 'CLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'VARCHAR' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEXf2a9a1 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS  WHERE COLUMN_TYPE = 'VARCHAR2' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX69c07f */  MD_COLUMNS SET COLUMN_TYPE = 'CLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'VARCHAR2' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- NUMBER has a max precision of 38, and scale must be between -84 and 127
    -- We can only narrow this.  

    UPDATE /* APEX3d0724 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND PRECISION > 38
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX10b202 */  MD_COLUMNS SET PRECISION = 38 WHERE COLUMN_TYPE = 'NUMBER' AND PRECISION > 38
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEX9ffcee */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND SCALE < -84
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX596ca6 */  MD_COLUMNS SET SCALE = -84 WHERE COLUMN_TYPE = 'NUMBER' AND SCALE < -84
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEX91ec93 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND SCALE > 127
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX4b7717 */  MD_COLUMNS SET SCALE = 127 WHERE COLUMN_TYPE = 'NUMBER' AND SCALE > 127
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- NVARCHAR has a max of 4000 (32767 in 12c) bytes.  But its definition depends on the character set in use.
    IF  p_numbytesperchar = 1 THEN
        UPDATE /* APEX21479a */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE /* APEXa6699b */  MD_COLUMNS SET COLUMN_TYPE = 'NCLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    ELSE
        UPDATE /* APEX7efb4a */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE /* APEX222907 */  MD_COLUMNS SET COLUMN_TYPE = 'NCLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2_2
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    END IF;            
    -- TIMESTAMP has a max size of 9

    UPDATE /* APEXbe9787 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'TIMESTAMP' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX2972c8 */  MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'TIMESTAMP' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEXd90649 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL YEAR' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEXe6819d */  MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'INTERVAL YEAR' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEX0f2de6 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL DAY' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX80e93f */  MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'INTERVAL DAY' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEX52de60 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL DAY' AND SCALE > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEXc299dd */  MD_COLUMNS SET SCALE = 9 WHERE COLUMN_TYPE = 'INTERVAL DAY' AND SCALE > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE /* APEX1b3ace */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'UROWID' AND PRECISION > 4000
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX7f22a3 */  MD_COLUMNS SET PRECISION = 4000 WHERE COLUMN_TYPE = 'UROWID' AND PRECISION > 4000
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- Too large RAW?  Make it a CLOB        

    UPDATE /* APEXa72390 */  MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'RAW' AND PRECISION > v_limitRaw
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE /* APEX2119b7 */  MD_COLUMNS SET COLUMN_TYPE = 'BLOB', PRECISION = NULL WHERE COLUMN_TYPE = 'RAW' AND PRECISION > v_limitRaw
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    commit;
    RETURN 0;        
END check_for_invalid_data_types;

FUNCTION transform_datatypes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE, p_numbytesperchar INTEGER, p_is12c VARCHAR2 :=  'N') RETURN NUMBER
IS
  v_projectid MD_PROJECTS.ID%TYPE;
  v_mapProjectid MD_PROJECTS.ID%TYPE;
  CURSOR v_curs(mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE) IS
    SELECT * FROM MIGR_DATATYPE_TRANSFORM_RULE WHERE map_ID_fk = mapid
    ORDER BY     DECODE(source_precision,
            NULL, 0,
            1) +
    DECODE(source_scale,
            NULL, 0,
            1)  DESC;
  v_rule MIGR_DATATYPE_TRANSFORM_RULE%ROWTYPE;
  v_whereClause VARCHAR2(4000);
  v_updateClause VARCHAR2(4000);
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  -- We should only work with our "own" maps.  I.e. The map should be part of this project.
  SELECT /* APEX276ceb */  project_id_fk into v_projectid from MD_CONNECTIONS where id = p_connectionid;
  SELECT /* APEXd9efb1 */  project_id_fk into v_mapProjectid from MIGR_DATATYPE_TRANSFORM_MAP where id = p_mapid;
  IF v_projectid != v_mapProjectid then 
    -- TODO.  Some nice RAISE_APPLICATION_ERROR stuff here.
    return 0;
  END IF;
  -- OK We can work with our map
  OPEN v_curs(p_mapid);
  LOOP
    fetch v_curs INTO v_rule;
    EXIT WHEN v_curs%NOTFOUND;
    v_whereClause := 'UPPER(COLUMN_TYPE) = ''' || UPPER(v_rule.SOURCE_DATA_TYPE_NAME) || '''';
    if v_rule.SOURCE_PRECISION is not NULL then
      v_whereClause := addToWhereClause(v_whereClause, 'PRECISION = ' || to_char(v_rule.source_precision));
      IF v_rule.SOURCE_SCALE is not NULL then
        v_whereClause := addToWhereClause(v_whereClause, 'SCALE = ' || to_char(v_rule.source_scale));
      end IF;
    END IF;
    v_whereClause := addToWhereClause(v_whereClause, 'table_id_fk in (SELECT table_id from MGV_ALL_TABLES WHERE connection_id = ' || to_char(p_connectionid) || ')');
    v_whereClause := addTowhereclause(v_whereClause, 'DATATYPE_TRANSFORMED_FLAG IS NULL');
    v_updateClause := 'UPDATE MD_COLUMNS SET COLUMN_TYPE = ''' || v_rule.TARGET_DATA_TYPE_NAME || ''', DATATYPE_TRANSFORMED_FLAG=''Y''';
    IF v_rule.TARGET_PRECISION is not NULL then
      v_updateClause := v_updateClause || ', PRECISION = ' || precision_val(v_rule.TARGET_PRECISION, v_rule.TARGET_DATA_TYPE_NAME);
      IF v_rule.TARGET_SCALE is not NULL then
        -- The rule says change it to a specific scale, but we may override this is the data type shouldn't have a scale
        v_updateClause := v_updateClause || ', SCALE = ' || scale_val(v_rule.TARGET_SCALE, v_rule.TARGET_DATA_TYPE_NAME);
      ELSE
        -- There was no mention on the rule to touch the scale, so we should leave it alone...
        -- ..unless of course the data type forbids having it.
        IF scale_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
          v_updateClause := v_updateClause || ', SCALE = NULL';
        END IF;
      END IF;
    ELSE
      -- There was no metion on the rul to touch the precision, so we should leave it alone...
      -- ..unless of course the data type forbids having it.
      IF precision_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
        v_updateClause := v_updateClause || ', PRECISION = NULL';
      END IF;
      IF scale_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
        v_updateClause := v_updateClause || ', SCALE = NULL';
      END IF;
    END IF;
    v_updateClause := v_updateClause || ' WHERE ' || v_whereClause;
    dbms_output.put_line(v_updateClause);
    EXECUTE IMMEDIATE v_updateClause;
    v_count := v_count + SQL%ROWCOUNT;
  END LOOP;
  CLOSE v_curs;
  COMMIT;
  -- OK.  Lets see if we've made any columns invalid.
  v_ret := check_for_invalid_data_types(p_connectionid, p_numbytesperchar, p_is12c);  
  -- Now that we know the data types of the index columns, we may have flag some of the indexes
  -- as text indexes.
  v_ret := fixupTextIndexes(p_connectionid);

  RETURN v_count;
END transform_datatypes;

FUNCTION GET_SIMPLE_IDENTITY_TRIGGER(v_triggerName VARCHAR2 , v_tableName VARCHAR2  , 
v_ColumnName VARCHAR2,v_emulationPkgNamePrefix VARCHAR2 ) RETURN VARCHAR2
as
 v_identityClause VARCHAR2(200);
BEGIN

IF (v_emulationpkgnameprefix = 'mysql_utilities.') THEN
  v_identityclause := '  --used to emulate LAST_INSERT_ID()'|| chr(10) || '  --'||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
ELSIF (v_emulationpkgnameprefix = 'utils.') THEN --sqlserver and sybase use identity_value
  v_identityclause := '  -- save this to emulate @@identity'|| chr(10) || '  '||v_emulationpkgnameprefix || 'identity_value := v_newVal; '|| chr(10) ;
ELSE
  v_identityclause := '  --used to help get last identity value '|| chr(10) || '  '||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
END IF;

return 'CREATE OR REPLACE TRIGGER ' || v_triggerName || ' AFTER INSERT ON ' || v_tableName || CHR(10) ||
       'FOR EACH ROW' || CHR(10) ||
       'DECLARE ' || CHR(10)||
       'v_newVal NUMBER(12) := 0;' ||CHR(10) ||
       'BEGIN' || CHR(10) ||
       '  v_newVal := :new.' || v_ColumnName || ';' || CHR(10) ||
       v_identityClause
      ||
       'END;' || CHR(10);
END GET_SIMPLE_IDENTITY_TRIGGER;

FUNCTION GET_IDENTITY_TRIGGER(v_triggerName VARCHAR2 , v_tableName VARCHAR2  , 
v_ColumnName VARCHAR2  ,v_seqName VARCHAR2 ,v_emulationPkgNamePrefix VARCHAR2 ) RETURN VARCHAR2
as
 v_identityClause VARCHAR2(200);
BEGIN

IF (v_emulationpkgnameprefix = 'mysql_utilities.') THEN
  v_identityclause := '    --used to emulate LAST_INSERT_ID()'|| chr(10) || '    --'||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
ELSIF (v_emulationpkgnameprefix = 'utils.') THEN --sqlserver and sybase use identity_value
  v_identityclause := '  -- save this to emulate @@identity'|| chr(10) || '  '||v_emulationpkgnameprefix || 'identity_value := v_newVal; '|| chr(10) ;
ELSE
  v_identityclause := '  --used to help get last identity value '|| chr(10) || '  '||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
END IF;

return 'CREATE OR REPLACE TRIGGER ' || v_triggerName || ' BEFORE INSERT ON ' || v_tableName || CHR(10) ||
       'FOR EACH ROW' || CHR(10) ||
       'DECLARE ' || CHR(10)||
       'v_newVal NUMBER(12) := 0;' ||CHR(10) ||
	   'v_incval NUMBER(12) := 0;'||CHR(10) ||
       'BEGIN' || CHR(10) ||
       '  IF INSERTING AND :new.' || v_ColumnName || ' IS NULL THEN' || CHR(10) ||
       '    SELECT  ' || v_seqName || '.NEXTVAL INTO v_newVal FROM DUAL;' || CHR(10) ||
	   '    -- If this is the first time this table have been inserted into (sequence == 1)' || CHR(10) ||
	   '    IF v_newVal = 1 THEN ' || CHR(10) ||
	   '      --get the max indentity value from the table' || CHR(10) ||
	   '      SELECT NVL(max(' || v_ColumnName || '),0) INTO v_newVal FROM ' || v_tableName || ';'|| CHR(10) || 
	   '      v_newVal := v_newVal + 1;' || CHR(10) || 
	   '      --set the sequence to that value'|| CHR(10) || 
	   '      LOOP'|| CHR(10) || 
	   '           EXIT WHEN v_incval>=v_newVal;'|| CHR(10) || 
	   '           SELECT ' || v_seqName || '.nextval INTO v_incval FROM dual;'|| CHR(10) || 
       '      END LOOP;'|| CHR(10) || 
       '    END IF;'|| chr(10) ||    
       v_identityClause
      ||
       '   -- assign the value from the sequence to emulate the identity column'|| CHR(10) || 
       '   :new.' || v_ColumnName || ' := v_newVal;'|| CHR(10) || 
       '  END IF;' || CHR(10) ||
       'END;' || CHR(10);
END GET_IDENTITY_TRIGGER;

FUNCTION get_plugin_name(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN VARCHAR2
IS
  CURSOR v_pluginNameCur IS SELECT value FROM MD_ADDITIONAL_PROPERTIES WHERE prop_key='PLUGIN_ID' AND connection_id_fk = p_connectionid;
  v_pluginName MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
  BEGIN
	  OPEN v_pluginNameCur;
	  FETCH v_pluginNameCur INTO v_pluginName;
	  CLOSE v_pluginNameCur;
	  RETURN v_pluginName;
END get_plugin_name;	  

FUNCTION get_emulation_pkg_name(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN VARCHAR2
AS
v_pkgName VARCHAR2(1000);
v_pluginName MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
BEGIN
	v_pluginName := get_plugin_name(p_connectionid);
	IF LOWER(v_pluginName) LIKE '%sqlserver%'THEN
	  	v_pkgName := 'utils.';
	  ELSIF LOWER(v_pluginName) LIKE '%access%'THEN
	    v_pkgName := 'msaccess_utilities.';
	  ELSIF LOWER(v_pluginName) LIKE '%sybase%'THEN
	    v_pkgName := 'utils.';
	  ELSIF LOWER(v_pluginName) LIKE '%mysql%' THEN
	    v_pkgName := 'mysql_utilities.';
	  ELSIF LOWER(v_pluginName) LIKE '%db2%' THEN
	    v_pkgName := 'db2_utilities.';
	END IF;
  RETURN v_pkgName;
END get_emulation_pkg_name;

FUNCTION transform_identity_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_is12c VARCHAR2) RETURN NUMBER
IS
  CURSOR v_curs IS SELECT a.schema_id_fk, a.id tableid, a.TABLE_NAME, b.id, b.column_name, b.NULLABLE
                   FROM md_tables a, md_columns b WHERE b.id IN
                     (SELECT ref_id_fk FROM md_additional_properties WHERE prop_key = C_PROPKEY_SEEDVALUE)
                   AND table_id_fk IN (SELECT table_id FROM mgv_all_tables WHERE connection_id = p_connectionid)
                   AND a.id = b.table_id_fk
                   AND b.id NOT IN (SELECT SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_COLUMNS AND DERIVED_TYPE = C_OBJECTTYPE_SEQUENCES AND 
                                    DERIVED_CONNECTION_ID_FK = p_connectionid);  
  	v_schemaId MD_SCHEMAS.ID%TYPE;
	v_tableId MD_TABLES.ID%TYPE;
        v_tableName MD_TABLES.TABLE_NAME%TYPE;
	v_columnId MD_COLUMNS.ID%TYPE;
	v_columnName MD_COLUMNS.COLUMN_NAME%TYPE;
	v_row MD_ADDITIONAL_PROPERTIES%ROWTYPE;
	v_seedValue NUMBER;
	-- Default the increment to 1 if it is not supplied.
	v_increment NUMBER := 1;
	v_lastVal NUMBER := NULL;
	v_retId MD_SEQUENCES.ID%TYPE;
	v_retSeqId MD_SEQUENCES.ID%TYPE;
	v_seqName MD_SEQUENCES.NAME%TYPE;
        v_trgName MD_TRIGGERS.TRIGGER_NAME%TYPE;
	v_triggerText VARCHAR2(4000);
        v_lob CLOB;
	v_transRet NAME_AND_COUNT_T;
	v_dbTypeCurs VARCHAR2(1000);
	v_emulationPkgNamePrefix VARCHAR2(100) := '';
	v_nullable MD_COLUMNS.NULLABLE%TYPE;
    v_alreadyDone NUMBER;
    v_continueTriggered BOOLEAN := FALSE;
    v_identityClause VARCHAR2(4000);
BEGIN
  -- Auxillary, get the emulation package name
  v_emulationPkgNamePrefix := get_emulation_pkg_name(p_connectionid);

  OPEN v_curs;
  LOOP
    v_continueTriggered := FALSE;
  	FETCH v_curs into v_schemaId, v_tableId, v_tableName, v_columnId, v_columnName, v_nullable;
  	EXIT WHEN v_curs%NOTFOUND;
  	-- The above query excludes already created sequences, so we should be ok.
  	-- create the sequence:
  	-- 1. Get the seedvalue, increment, lastvalue if present
    v_alreadyDone := 0;
    BEGIN
      IF (p_is12c = 'Y') THEN
        SELECT /* APEX34db74 */  1 INTO  v_alreadyDone FROM MD_ADDITIONAL_PROPERTIES
        WHERE CONNECTION_ID_FK = p_connectionid 
        AND REF_ID_FK = v_tableId 
        AND REF_TYPE = C_OBJECTTYPE_TABLES 
        AND PROP_KEY = C_PROPKEY_ALREADY_IDENTITY;
      ELSE
        v_alreadyDone:=0;
      END IF;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN v_alreadyDone :=0;
    END;

    IF (v_nullable = 'N' AND p_is12c = 'Y' AND v_alreadyDone != 1) THEN
	    FOR v_row in (SELECT * FROM MD_ADDITIONAL_PROPERTIES WHERE REF_ID_FK = v_columnId)
	  	LOOP
	  	  IF v_row.PROP_KEY = C_PROPKEY_SEEDVALUE THEN
	  	    v_seedValue := TO_NUMBER(v_row.VALUE);
	      END IF;
	  	  IF v_row.PROP_KEY = C_PROPKEY_INCREMENT THEN
	  	    v_increment := TO_NUMBER(v_row.VALUE);
	      END IF;
	  	END LOOP;
      -- Bug 29230132 - MIGRATE AUTO_INCREMENT COLUMN GET ORA-04006
      v_identityClause := 'GENERATED BY DEFAULT ON NULL AS IDENTITY START WITH '||v_seedValue||' INCREMENT BY '||v_increment||' MINVALUE '||v_seedValue||' NOMAXVALUE';
      INSERT /* APEXe30c52 */  INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
      VALUES (p_connectionid, v_columnId, C_OBJECTTYPE_COLUMNS, C_PROPKEY_REAL_IDENTITY, v_identityClause);
      INSERT /* APEX5242f6 */  INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
      VALUES (p_connectionid, v_tableId, C_OBJECTTYPE_TABLES, C_PROPKEY_ALREADY_IDENTITY, '');

      v_continueTriggered:=FALSE; -- no need to have Trigger Created 

      --DONE do it in create table/ enable - 
      --ISSUES: DONE can be ascending or decending 
      --        DONE top (bottom) value has to be set at end (along with enable constraints)
      --ISSUE   If no entries sequence next val will be 0+increment - there was some work by Indian integrator to recapture current sequence,
      --            if capture convert generate is not done at the same time, or the sequence is otherwise above max/min value.

  	END IF; -- IF (v_nullable = 'N' AND p_is12c = 'Y' AND v_alreadyDone != 1)

    IF (p_is12c = 'N' ) THEN
	  	IF (v_continueTriggered = TRUE) THEN /* need simple trigger to fill @@identity */
	      v_trgName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_TRG');
	      v_triggerText := GET_SIMPLE_IDENTITY_TRIGGER(v_trgName, v_tableName , v_ColumnName ,v_emulationPkgNamePrefix);
	      -- Note: I'm adding _TRG to the column name for now.We'll have to use the collsion manager in the futre.
	  	  INSERT /* APEX66f507 */  INTO MD_TRIGGERS(TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME, TRIGGER_TIMING, TRIGGER_OPERATION, NATIVE_SQL, LANGUAGE)
	      VALUES(v_tableId, 'T', v_trgName, 'AFTER', 'INSERT OR UPDATE', EMPTY_CLOB(), C_LANGUAGEID_ORACLE)
	      RETURNING ID INTO v_retId;
	      INSERT /* APEX61327d */  INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
	        VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_TRIGGER_REWRITE, '');
	      --INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
	      --  VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_SEQUENCEID, TO_CHAR(v_retSeqId));  
	      INSERT /* APEX6120aa */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
	        VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_TRIGGERS, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_trgName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
	      SELECT /* APEXec4ee7 */  NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_retId;          
	        DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
	        DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
	        DBMS_LOB.CLOSE(v_lob);
	  	ELSE	
	  	 FOR v_row in (SELECT /* APEXc1c83e */  * FROM MD_ADDITIONAL_PROPERTIES WHERE REF_ID_FK = v_columnId)
	  	LOOP
	  	  IF v_row.PROP_KEY = C_PROPKEY_SEEDVALUE THEN
	  	    v_seedValue := TO_NUMBER(v_row.VALUE);
	          END IF;
	  	  IF v_row.PROP_KEY = C_PROPKEY_INCREMENT THEN
	  	    v_increment := TO_NUMBER(v_row.VALUE);
	          END IF;
	  	  IF v_row.PROP_KEY = C_PROPKEY_LASTVALUE THEN
	  	    v_lastVal := TO_NUMBER(v_row.VALUE);
	  	  END IF;
	  	END LOOP;
	  	-- Note: We'll start our sequence where the source left off.
	  	IF v_lastVal IS NOT NULL THEN
	  	  v_seedValue := v_lastVal;
	  	END IF;

	  	-- 2. Create the sequence
	  	-- Note: I'm adding _SEQ to the column name for now. We'll have to use the collision manager in the
	  	-- future.
	  	v_seqName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_SEQ');
	  	INSERT /* APEX5f9e5e */  INTO MD_SEQUENCES(SCHEMA_ID_FK, NAME, SEQ_START, INCR)
	  	  VALUES (v_schemaId, v_seqName, v_seedValue, v_increment)
	  	  RETURNING ID INTO v_retId;
	  	v_retSeqId := v_retId;
	  	-- And of course a new derivative record
	  	INSERT /* APEX51180d */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
	  	  VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_SEQUENCES, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_seqName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
	  	-- Create the trigger
	        v_trgName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_TRG');
	  	v_triggerText := GET_IDENTITY_TRIGGER(v_trgName, v_tableName , v_ColumnName ,v_seqName ,v_emulationPkgNamePrefix);
	  	-- Note: I'm adding _TRG to the column name for now.We'll have to use the collsion manager in the futre.
	  	INSERT /* APEX7c7756 */  INTO MD_TRIGGERS(TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME, TRIGGER_TIMING, TRIGGER_OPERATION, NATIVE_SQL, LANGUAGE)
	  	  VALUES(v_tableId, 'T', v_trgName, 'BEFORE', 'INSERT OR UPDATE', EMPTY_CLOB(), C_LANGUAGEID_ORACLE)
	  	  RETURNING ID INTO v_retId;
	  	INSERT /* APEXce94e3 */  INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
	       VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_TRIGGER_REWRITE, '');
	    INSERT /* APEXcf7d69 */  INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
	       VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_SEQUENCEID, TO_CHAR(v_retSeqId));	
	  	INSERT /* APEX2740dd */  INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
	  	  VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_TRIGGERS, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_trgName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
	        SELECT /* APEX58d98d */  NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_retId;          
	        DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
	        DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
	        DBMS_LOB.CLOSE(v_lob);
	    END IF;
   END IF; -- if (p_is12c = 'N' )
  END LOOP;
  COMMIT;
  CLOSE v_curs;
  RETURN 0;
END transform_identity_columns;

FUNCTION transform_rewrite_trigger(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs is SELECT ID, TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME,
    TRIGGER_TIMING, TRIGGER_OPERATION, TRIGGER_EVENT, NATIVE_SQL, NATIVE_KEY,
    LANGUAGE, COMMENTS from MD_TRIGGERS where ID in
    (SELECT REF_ID_FK from MD_ADDITIONAL_PROPERTIES
    WHERE CONNECTION_ID_FK = p_connectionid and PROP_KEY = C_PROPKEY_TRIGGER_REWRITE);

  v_rowTriggers MD_TRIGGERS%ROWTYPE;
  v_tableName MD_TABLES.TABLE_NAME%TYPE;
	v_columnName MD_COLUMNS.COLUMN_NAME%TYPE;
	v_retId MD_SEQUENCES.ID%TYPE;
  v_retSeqId MD_SEQUENCES.ID%TYPE;
	v_seqName MD_SEQUENCES.NAME%TYPE;
  v_seqName2 MD_SEQUENCES.NAME%TYPE;
	v_triggerText VARCHAR2(4000);
  v_lob CLOB;
  v_projectName VARCHAR2(100);
  v_emulationPkgNamePrefix VARCHAR2(100) := '';
BEGIN
  -- Auxillary, get the emulation package name
  v_emulationPkgNamePrefix := get_emulation_pkg_name(p_connectionid);

  open v_curs;
  loop
    fetch v_curs into v_rowTriggers.ID, v_rowTriggers.TABLE_OR_VIEW_ID_FK, v_rowTriggers.TRIGGER_ON_FLAG, v_rowTriggers.TRIGGER_NAME,
    v_rowTriggers.TRIGGER_TIMING, v_rowTriggers.TRIGGER_OPERATION, v_rowTriggers.TRIGGER_EVENT, v_rowTriggers.NATIVE_SQL, v_rowTriggers.NATIVE_KEY,
    v_rowTriggers.LANGUAGE, v_rowTriggers.COMMENTS ;
    EXIT WHEN v_curs%NOTFOUND;
    update /* APEXab31cc */  MD_TRIGGERS set native_sql = empty_clob() where id = v_rowTriggers.ID;

    -- get table and column name from the derivative of this trigger
    select /* APEX5cc7d2 */  T.TABLE_NAME, C.COLUMN_NAME into v_tableName, v_columnName from MD_TABLES T,
      MD_COLUMNS C where C.TABLE_ID_FK = T.ID and C.ID =
      (select SRC_ID from MD_DERIVATIVES where DERIVED_ID =  v_rowTriggers.ID and SRC_TYPE =
      C_OBJECTTYPE_COLUMNS and DERIVED_CONNECTION_ID_FK = p_connectionid);
    -- get sequence name from id got from additional property
    BEGIN
      select /* APEX83cfe5 */  s.NAME into v_seqName from MD_SEQUENCES s where s.ID =
        (select TO_NUMBER(VALUE) from MD_ADDITIONAL_PROPERTIES where CONNECTION_ID_FK = p_connectionid
        AND REF_ID_FK = v_rowTriggers.ID and PROP_KEY = C_PROPKEY_SEQUENCEID);
      v_triggerText := GET_IDENTITY_TRIGGER(v_rowTriggers.TRIGGER_NAME, v_tableName , v_ColumnName ,v_seqName ,v_emulationPkgNamePrefix);
    EXCEPTION WHEN NO_DATA_FOUND THEN
      --no sequence known (its 12 c identity)
      v_triggerText := GET_SIMPLE_IDENTITY_TRIGGER(v_rowTriggers.TRIGGER_NAME, v_tableName , v_ColumnName ,v_emulationPkgNamePrefix);
    END;
    SELECT /* APEXa55231 */  NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_rowTriggers.ID;          
    DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
    DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
    DBMS_LOB.CLOSE(v_lob);
  END LOOP;
  COMMIT;
  CLOSE v_curs;
  return 0;
END transform_rewrite_trigger;

-- Remove all ForeignKeys that are created on the same table with same referenced Table columns
PROCEDURE remove_duplicate_foreignkeys(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
  CURSOR v_reftableidfk_cur
  IS
    SELECT CONSTRAINT_ID, TABLE_ID_FK, REFTABLE_ID_FK, COL_ID_FK FROM 
	(
	    SELECT ROW_NUMBER() OVER (PARTITION BY A.COL_ID_FK ORDER BY A.CONSTRAINT_ID) rn, A.CONSTRAINT_ID, A.TABLE_ID_FK, A.REFTABLE_ID_FK, A.COL_ID_FK FROM 
	    (
	        (
	            SELECT
	                mc.id CONSTRAINT_ID,
	                mc.table_id_fk TABLE_ID_FK,
	                mc.reftable_id_fk REFTABLE_ID_FK,
	                LISTAGG(mcd.column_id_fk, ',') WITHIN GROUP (ORDER BY mc.id) COL_ID_FK,
	                COUNT(*)
	            FROM
	                md_constraints   mc,
	                md_constraint_details mcd,
	                mgv_all_constraints_details macd
	            WHERE
	                mc.constraint_type = 'FOREIGN KEY'
	                AND mc.id = macd.objid
	                AND mcd.constraint_id_fk = mc.id
	                AND mc.table_id_fk = macd.mainobjid
	                AND macd.connid = p_connectionid
	            GROUP BY
	                mc.id,
	                mc.table_id_fk,
	                mc.reftable_id_fk
	            ORDER BY
	                CONSTRAINT_ID
	        ) A   
	    )
	)
	WHERE RN > 1; 

  v_reftable_id_fk_id md_constraints.reftable_id_fk%TYPE;
  v_temprow MD_CONSTRAINTS%ROWTYPE;
  v_tableName VARCHAR(4000);
  v_record v_reftableidfk_cur%rowtype;
  v_constraint_id md_constraints.id%TYPE;
  row_num        INTEGER;
  single_quote   CHAR(1) := '''';
  n_char         CHAR(1) := 'N';
  delete_command VARCHAR(1000);

BEGIN
  OPEN v_reftableidfk_cur;
  LOOP
    FETCH v_reftableidfk_cur INTO v_record;
    EXIT
  WHEN v_reftableidfk_cur%NOTFOUND;
  delete_command := 'DELETE from md_constraints where id = :constraint_id and table_id_fk = :table_id and reftable_id_fk = :reftable_id' ;
  EXECUTE IMMEDIATE delete_command USING v_record.constraint_id, v_record.table_id_fk, v_record.reftable_id_fk ;

  delete_command := 'DELETE FROM md_constraint_details WHERE constraint_id_fk = :constraint_id AND ref_flag = ' ||single_quote||n_char||single_quote ;
  EXECUTE IMMEDIATE delete_command USING v_record.constraint_id;

  delete_command := 'DELETE FROM md_derivatives WHERE derived_id = :constraint_id' ;
  EXECUTE IMMEDIATE delete_command USING v_record.constraint_id;

  END LOOP; 
  CLOSE v_reftableidfk_cur;
  COMMIT;

END remove_duplicate_foreignkeys;

-- Remove all UniqueKeys that are created on the same table columns that has Primary keys created. 
PROCEDURE remove_unwanted_uniquekeys(p_connectionid MD_CONNECTIONS.ID%TYPE) 
IS  
  CURSOR v_tableidfk_cur
  IS
    SELECT uk_c.table_id_fk
    FROM md_constraints uk_c,
      md_constraints pk_c,
      mgv_all_tables mt
    WHERE pk_c.constraint_type = 'PK'
    AND uk_c.constraint_type   = 'UNIQUE'
    AND pk_c.table_id_fk       = uk_c.table_id_fk
    AND uk_c.TABLE_ID_FK       = mt.table_id
    AND mt.CONNECTION_ID       = p_connectionid;
  CURSOR v_uk_constraint_id_cur(table_id_fk_id md_constraints.table_id_fk%TYPE)
  IS
    SELECT cd.constraint_id_fk,
      cd.column_id_fk
    FROM md_constraint_details cd
    WHERE cd.constraint_id_fk IN
      (SELECT ID
      FROM md_constraints mc,
        mgv_all_tables mt
      WHERE mc.table_id_fk   = table_id_fk_id
      AND mc.constraint_type = 'UNIQUE'
      AND mc.table_id_fk     = mt.table_id
      AND mt.CONNECTION_ID   = p_connectionid
      )
  ORDER BY column_id_fk;
  CURSOR v_pk_constraint_id_cur(table_id_fk_id md_constraints.table_id_fk%TYPE)
  IS
    SELECT cd.constraint_id_fk,
      cd.column_id_fk
    FROM md_constraint_details cd
    WHERE cd.constraint_id_fk IN
      (SELECT ID
      FROM md_constraints mc,
        mgv_all_tables mt
      WHERE table_id_fk    = table_id_fk_id
      AND constraint_type  = 'PK'
      AND mc.table_id_fk   = mt.table_id
      AND mt.CONNECTION_ID = p_connectionid
      )
  ORDER BY column_id_fk;
TYPE ukColListType
IS
  TABLE OF NUMBER;
  ukColList ukColListType := ukColListType();
TYPE pkColListType
IS
  TABLE OF NUMBER;
  pkColList pkColListType := pkColListType();
  v_record v_tableidfk_cur%rowtype;
  v_record_uk_constraint v_uk_constraint_id_cur%rowtype;
  v_record_pk_constraint v_pk_constraint_id_cur%rowtype;
  counter        INTEGER;
  ukpkFlag       BOOLEAN;
  n_char         CHAR(1) := 'N';
  single_quote   CHAR(1) := '''';
  uniquekey      CHAR(6) := 'UNIQUE';
  delete_command VARCHAR(1000);
BEGIN
  OPEN v_tableidfk_cur;
  FETCH v_tableidfk_cur INTO v_record;
  LOOP
    EXIT
  WHEN v_tableidfk_cur%NOTFOUND;
    counter := 1;
    OPEN v_uk_constraint_id_cur(v_record.table_id_fk);
    FETCH v_uk_constraint_id_cur INTO v_record_uk_constraint;
    LOOP
      EXIT
    WHEN v_uk_constraint_id_cur%NOTFOUND;
      ukColList.extend(1) ;
      ukColList(counter) := v_record_uk_constraint.column_id_fk;
      counter            := counter + 1;
      FETCH v_uk_constraint_id_cur INTO v_record_uk_constraint;
    END LOOP;
    CLOSE v_uk_constraint_id_cur;
    counter := 1;
    OPEN v_pk_constraint_id_cur(v_record.table_id_fk);
    FETCH v_pk_constraint_id_cur INTO v_record_pk_constraint;
    LOOP
      EXIT
    WHEN v_pk_constraint_id_cur%NOTFOUND;
      pkColList.extend(1) ;
      pkColList(counter) := v_record_pk_constraint.column_id_fk;
      counter            := counter + 1;
      FETCH v_pk_constraint_id_cur INTO v_record_pk_constraint;
    END LOOP;
    CLOSE v_pk_constraint_id_cur;
    ukpkFlag := FALSE;
    FOR i IN ukColList.FIRST .. ukColList.LAST
    LOOP
      FOR j IN pkColList.FIRST .. pkColList.LAST
      LOOP
        IF ukColList(i) = pkColList(j) THEN
          ukpkFlag     := TRUE;
        END IF;
      END LOOP; -- j
    END LOOP;   -- i
    IF ukpkFlag THEN
      delete_command := 'DELETE from md_constraints where id = :constraint_id and table_id_fk = :table_id and constraint_type = ' ||single_quote||uniquekey||single_quote ;
      EXECUTE IMMEDIATE delete_command USING v_record_uk_constraint.constraint_id_fk,
      v_record.table_id_fk;
      delete_command := 'DELETE FROM md_constraint_details WHERE constraint_id_fk = :constraint_id AND ref_flag = ' ||single_quote||n_char||single_quote ;
      EXECUTE IMMEDIATE delete_command USING v_record_uk_constraint.constraint_id_fk;
      delete_command := 'DELETE FROM md_derivatives WHERE derived_id = :constraint_id' ;
      EXECUTE IMMEDIATE delete_command USING v_record_uk_constraint.constraint_id_fk;
    END IF;
    FETCH v_tableidfk_cur INTO v_record;
  END LOOP; -- v_tableidfk_cur LOOP
  CLOSE v_tableidfk_cur;
  COMMIT;
END remove_unwanted_uniquekeys;

-- create Uniquekeys where Foreign keys has referened table column does not have UniqueKey
PROCEDURE uniquekey_constraint_columns(p_connectionid MD_CONNECTIONS.ID%TYPE) 
IS  
  CURSOR v_reftableidfk_cur
  IS
    SELECT DISTINCT (fk_con.reftable_id_fk)
    FROM md_constraints fk_con
    WHERE fk_con.name NOT IN
      (SELECT fk_con.name
      FROM md_constraints pk_con
      WHERE fk_con.reftable_id_fk = pk_con.table_id_fk
      AND fk_con.constraint_type  = 'FOREIGN KEY'
      AND pk_con.constraint_type  = 'UNIQUE'
      )
  AND fk_con.name NOT IN
    (SELECT fk_con.name
    FROM md_constraints pk_con
    WHERE fk_con.reftable_id_fk = pk_con.table_id_fk
    AND fk_con.constraint_type  = 'FOREIGN KEY'
    AND pk_con.constraint_type  = 'PK'
    )
  AND fk_con.reftable_id_fk != 0
  AND fk_con.TABLE_ID_FK    IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid
    );

  CURSOR v_uk_columns_cur(reftable_id_fk_id md_constraints.reftable_id_fk%TYPE)
  IS
    SELECT DISTINCT(con_det.column_id_fk)
    FROM md_constraints fk_con,
      md_constraint_details con_det,
      md_columns col
    WHERE fk_con.reftable_id_fk  = reftable_id_fk_id
    AND con_det.constraint_id_fk = fk_con.id
    AND con_det.ref_flag         ='Y'
    AND con_det.column_id_fk     = col.id
    AND fk_con.TABLE_ID_FK    IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid
    );

  CURSOR v_md_constraint_cur(reftable_id_fk_id md_constraints.reftable_id_fk%TYPE)
  IS
    SELECT *
    FROM md_constraints
    WHERE MD_CONSTRAINTS.reftable_id_fk = reftable_id_fk_id and rownum = 1;

   CURSOR v_table_name_cur(reftable_id_fk_id md_constraints.reftable_id_fk%TYPE)
  IS
    SELECT TABLE_NAME FROM MGV_ALL_TABLES WHERE MGV_ALL_TABLES.CONNECTION_ID = p_connectionid and table_id = reftable_id_fk_id ;

  v_newid MD_CONSTRAINTS.ID%TYPE;
  v_newrow MD_CONSTRAINTS%ROWTYPE;
  v_uk_column_id md_constraint_details.column_id_fk%TYPE;
  v_reftable_id_fk_id md_constraints.reftable_id_fk%TYPE;
  v_temprow MD_CONSTRAINTS%ROWTYPE;
  v_tableName VARCHAR(4000);
BEGIN
  --  DBMS_OUTPUT.PUT_LINE(' p_connectionid : ' ||p_connectionid);
  OPEN v_reftableidfk_cur;
  FETCH v_reftableidfk_cur INTO v_reftable_id_fk_id;
  LOOP    
    EXIT WHEN v_reftableidfk_cur%NOTFOUND;
--    DBMS_OUTPUT.PUT_LINE(' LOOP1 refTable_id_fk Starts  : REFTABLE_ID_FK = ' || v_reftable_id_fk_id);  
    OPEN v_table_name_cur(v_reftable_id_fk_id);
    FETCH v_table_name_cur INTO v_tableName;
    LOOP
      EXIT WHEN v_table_name_cur%NOTFOUND;
--    DBMS_OUTPUT.PUT_LINE('Table Name = ' || v_tableName);
     FETCH v_table_name_cur INTO v_tableName;
    END LOOP; -- v_reftableidfk_cur LOOP
    CLOSE v_table_name_cur;

    -- create existing temp row of MD_CONSTRAINTS
    OPEN v_md_constraint_cur(v_reftable_id_fk_id);
    FETCH v_md_constraint_cur INTO v_temprow;
    LOOP  
      EXIT WHEN v_md_constraint_cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(' LOOP2 : MD_Constraints Starts');
      v_newrow.ID              := NULL;
      v_newrow.LANGUAGE        := v_temprow.LANGUAGE;
      v_newrow.TABLE_ID_FK     := v_reftable_id_fk_id;
      v_newrow.REFTABLE_ID_FK  := NULL;
      v_newrow.CONSTRAINT_TYPE := 'UNIQUE';
      v_newrow.NAME            := 'UK_' || SUBSTR(v_tableName, 1, 27) ;
      --   INSERT INTO MD_CONSTRAINT values v_newrow RETURNING ID INTO v_newid;
      INSERT INTO MD_CONSTRAINTS ( id,NAME,CONSTRAINT_TYPE,TABLE_ID_FK,REFTABLE_ID_FK, LANGUAGE)
             VALUES (v_newrow.ID,v_newrow.NAME,v_newrow.CONSTRAINT_TYPE,v_newrow.TABLE_ID_FK,v_newrow.REFTABLE_ID_FK, v_newrow.LANGUAGE)
             RETURNING ID INTO v_newid;

--      DBMS_OUTPUT.PUT_LINE('New Constraints Name ' || v_newrow.NAME|| ' v_newid = ' || v_newid);   
      OPEN v_uk_columns_cur(v_reftable_id_fk_id);
      FETCH v_uk_columns_cur INTO v_uk_column_id;
      LOOP
        EXIT WHEN v_uk_columns_cur%NOTFOUND;
--       DBMS_OUTPUT.PUT_LINE(' LOOP3 : MD_Constraints_Details Starts');
--       DBMS_OUTPUT.PUT_LINE('v_uk_column_id = ' || v_uk_column_id);

        INSERT INTO MD_CONSTRAINT_DETAILS (CONSTRAINT_ID_FK,REF_FLAG,COLUMN_ID_FK,DETAIL_ORDER)
               VALUES (v_newid,'N',v_uk_column_id,1);
    FETCH v_uk_columns_cur INTO v_uk_column_id;
--    DBMS_OUTPUT.PUT_LINE(' LOOP3 : MD_Constraints_Details Ends');
      END LOOP;
      CLOSE v_uk_columns_cur;

      INSERT INTO MD_DERIVATIVES (SRC_ID,SRC_TYPE,DERIVED_ID,DERIVED_TYPE,DERIVED_CONNECTION_ID_FK,ORIGINAL_IDENTIFIER,NEW_IDENTIFIER,DERIVED_OBJECT_NAMESPACE,DERIVATIVE_REASON,ENABLED)
             VALUES (v_newid,'MD_CONSTRAINTS',v_newid,'MD_CONSTRAINTS',p_connectionid,v_newrow.NAME, v_newrow.NAME,C_NS_CONSTRAINTS || TO_CHAR(p_connectionid),C_CONNECTIONTYPE_SCRATCH,'Y');

      FETCH v_md_constraint_cur INTO v_temprow;
--      DBMS_OUTPUT.PUT_LINE(' LOOP2 : MD_Constraints Ends');
    END LOOP;
    CLOSE v_md_constraint_cur;
    FETCH v_reftableidfk_cur INTO v_reftable_id_fk_id;
--      DBMS_OUTPUT.PUT_LINE(' LOOP1 refTable_id_fk Ends');
  COMMIT;
  END LOOP; -- v_reftableidfk_cur LOOP
  CLOSE v_reftableidfk_cur;
  COMMIT;
END uniquekey_constraint_columns;


PROCEDURE RefreshLineCountViews(p_connectionId MD_CONNECTIONS.ID%TYPE DEFAULT NULL)
IS
BEGIN
	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_stored_programs s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1
	 	WHERE linecount IS NULL;

	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_views s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1
	 	WHERE linecount IS NULL;

	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_triggers s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1 
	 	WHERE linecount IS NULL;
END;

FUNCTION gatherConnectionStats(p_connectionId MD_CONNECTIONS.ID%TYPE,p_comments MD_CONNECTIONS.COMMENTS%TYPE) RETURN NUMBER
IS
	v_numCatalogs INTEGER := 0;
	v_numColumns INTEGER := 0;
	v_numConstraints INTEGER := 0;
	v_numGroups INTEGER := 0;
	v_numRoles INTEGER := 0;
	v_numIndexes INTEGER := 0;
	v_numOtherObjects INTEGER := 0;
	v_numPackages INTEGER := 0;
	v_numPrivileges INTEGER := 0;
	v_numSchemas INTEGER := 0;
	v_numSequences INTEGER := 0;
	v_numStoredPrograms INTEGER := 0;
	v_numSynonyms INTEGER := 0;
	v_numTables INTEGER := 0;
	v_numTableSpaces INTEGER := 0;
	v_numTriggers INTEGER := 0;
	v_numUserDefinedDataTypes INTEGER := 0;
	v_numUsers INTEGER := 0;
	v_numViews INTEGER := 0;
BEGIN
	SELECT /* APEX684f1a */  COUNT(*) INTO v_numCatalogs FROM MD_CATALOGS  WHERE CONNECTION_ID_FK = p_connectionId;
	SELECT /* APEXbcefbc */  COUNT(*) INTO v_numColumns FROM MD_COLUMNS WHERE TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX904862 */  COUNT(*) INTO v_numConstraints FROM MD_CONSTRAINTS WHERE  TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX4f89b0 */  COUNT(*) INTO v_numGroups FROM MD_GROUPS WHERE GROUP_FLAG = 'G' AND SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId); 
	SELECT /* APEXbfdab1 */  COUNT(*) INTO v_numRoles FROM MD_GROUPS WHERE GROUP_FLAG = 'R' AND SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXba0b46 */  COUNT(*) INTO v_numIndexes FROM MD_INDEXES  WHERE TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXca8c7c */  COUNT(*) INTO v_numOtherObjects FROM MD_OTHER_OBJECTS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX7b197e */  COUNT(*) INTO v_numPackages FROM MD_PACKAGES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);  
	SELECT /* APEX3f3821 */  COUNT(*) INTO v_numPrivileges FROM MD_PRIVILEGES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXa9bb8b */  COUNT(*) INTO v_numSchemas FROM MD_SCHEMAS WHERE CATALOG_ID_FK IN (SELECT CATALOG_ID FROM MGV_ALL_CATALOGS WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXa0cce3 */  COUNT(*) INTO v_numSequences FROM MD_SEQUENCES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXa3dbd9 */  COUNT(*) INTO v_numStoredPrograms FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXf14b61 */  COUNT(*) INTO v_numSynonyms FROM MD_SYNONYMS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX552ab8 */  COUNT(*) INTO v_numTables FROM MD_TABLES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX133fb1 */  COUNT(*) INTO v_numTableSpaces FROM MD_TABLESPACES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX659902 */  COUNT(*) INTO v_numTriggers FROM MD_TRIGGERS WHERE TABLE_OR_VIEW_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId
                                                                                          UNION SELECT VIEW_ID FROM MGV_ALL_VIEWS WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX0c1a9d */  COUNT(*) INTO v_numUserDefinedDataTypes FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEX1c2846 */  COUNT(*) INTO v_numUsers FROM MD_USERS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT /* APEXcaa4e7 */  COUNT(*) INTO v_numViews FROM MD_VIEWS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
  	UPDATE /* APEX26ec73 */  MD_CONNECTIONS SET  
		NUM_CATALOGS = v_numCatalogs,
		NUM_COLUMNS = v_numColumns,
		NUM_CONSTRAINTS = v_numConstraints,
		NUM_GROUPS = v_numGroups,
		NUM_ROLES = v_numRoles,
		NUM_INDEXES = v_numIndexes,
		NUM_OTHER_OBJECTS = v_numOtherObjects,
		NUM_PACKAGES = v_numPackages,
		NUM_PRIVILEGES = v_numPrivileges,
		NUM_SCHEMAS = v_numSchemas,
		NUM_SEQUENCES = v_numSequences,
		NUM_STORED_PROGRAMS = v_numStoredPrograms,
		NUM_SYNONYMS = v_numSynonyms,
		NUM_TABLES = v_numTables,
		NUM_TABLESPACES = v_numTableSpaces,
		NUM_TRIGGERS = v_numTriggers,
		NUM_USER_DEFINED_DATA_TYPES = v_numUserDefinedDataTypes,
		num_users = v_numusers,
        num_views = v_numviews,
        COMMENTS = COMMENTS || p_comments    
	WHERE ID = p_connectionId;
	COMMIT;
    RefreshLineCountViews(p_connectionId);
	COMMIT;
	RETURN 0;
END gatherConnectionStats;

--
-- Procedures that start with "insert_*" insert a copy of MD_* values into MD_DERIVATIVES table.
-- MD_* are MD_COLUMNS, MD_CONSTRAINTS, MD_TABLES, MD_TRIGGERS, MD_INDEXES, MD_SEQUENCES, MD_STORED_PROGRAMS 
-- AND MD_VIEWS
--
PROCEDURE insert_all_columns(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_COLUMNS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_COLUMNS WHERE TABLE_ID_FK = ' || p_tableid;
  v_newName MD_COLUMNS.COLUMN_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.COLUMN_NAME);
    if v_row.COLUMN_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEXabeb00 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_COLUMNS, v_row.id, C_OBJECTTYPE_COLUMNS, p_connectionid, v_transformed,
                  v_row.COLUMN_NAME, v_newName, C_OBJECTTYPE_COLUMNS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;
END insert_all_columns;

PROCEDURE insert_all_indexes(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_INDEXES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_INDEXES WHERE MD_INDEXES.TABLE_ID_FK = ' || p_tableid;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.INDEX_NAME);
    if v_row.INDEX_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEXb29adb */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_INDEXES, v_row.id, C_OBJECTTYPE_INDEXES, p_connectionid, v_transformed,
                  v_row.INDEX_NAME, v_newName, C_OBJECTTYPE_INDEXES || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;
END insert_all_indexes;

PROCEDURE insert_all_table_triggers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_TRIGGERS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = ' || p_tableid;
  v_newName MD_TRIGGERS.TRIGGER_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.TRIGGER_NAME);
    if v_row.TRIGGER_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEXc6009e */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_TRIGGERS, v_row.id, C_OBJECTTYPE_TRIGGERS, p_connectionid, v_transformed,
                  v_row.TRIGGER_NAME, v_newName, C_NS_DB_TRIGGERS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;
END insert_all_table_triggers;

PROCEDURE insert_all_constraints(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                 p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_CONSTRAINTS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_CONSTRAINTS WHERE MD_CONSTRAINTS.TABLE_ID_FK = ' || p_tableid;
  v_newName MD_CONSTRAINTS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEXc6056b */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_CONSTRAINTS, v_row.id, C_OBJECTTYPE_CONSTRAINTS, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_CONSTRAINTS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;
END insert_all_constraints;


PROCEDURE insert_all_tables_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_TABLES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLES where SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_TABLES.TABLE_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.TABLE_NAME);
    if v_row.TABLE_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEXa42d18 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_TABLES, v_row.id, C_OBJECTTYPE_TABLES, p_connectionid, v_transformed,
                  v_row.TABLE_NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);

     insert_all_columns(p_connectionid, v_row.id);
     insert_all_indexes(p_connectionid, v_row.id);
     insert_all_table_triggers(p_connectionid, v_row.id);
     insert_all_constraints(p_connectionid, v_row.id);

  END LOOP;
  close cv_curs;	
END insert_all_tables_cascade;

PROCEDURE insert_all_views(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_VIEWS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_VIEWS.VIEW_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.VIEW_NAME);
    if v_row.VIEW_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEX367c5b */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_VIEWS, v_row.id, C_OBJECTTYPE_VIEWS, p_connectionid, v_transformed,
                  v_row.VIEW_NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;	
END insert_all_views;

PROCEDURE insert_all_sequences(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_SEQUENCES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_SEQUENCES.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEX898986 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_SEQUENCES, v_row.id, C_OBJECTTYPE_SEQUENCES, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;	
END insert_all_sequences;

PROCEDURE insert_all_unpackaged_sps(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = ' || p_schemaid || ' AND PACKAGE_ID_FK IS NULL';
  v_newName MD_STORED_PROGRAMS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;

    INSERT /* APEX5765e9 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_STORED_PROGRAMS, v_row.id, C_OBJECTTYPE_STORED_PROGRAMS, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);

  END LOOP;
  close cv_curs;	
END insert_all_unpackaged_sps;


PROCEDURE insert_all_schobjs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                            p_schemaid MD_SCHEMAS.ID%TYPE)
IS 
BEGIN
  insert_all_tables_cascade(p_connectionid, p_schemaid);
  insert_all_views(p_connectionid, p_schemaid);
  insert_all_sequences(p_connectionid, p_schemaid);
  insert_all_unpackaged_sps(p_connectionid, p_schemaid);
END insert_all_schobjs_cascade;	  


PROCEDURE insert_catalogs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                  p_catalogid MD_CATALOGS.ID%TYPE)
IS
  cv_curs REF_CURSOR; 
  v_selectStmt VARCHAR2(4000) := 'SELECT a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
      FROM MD_SCHEMAS A, MD_CATALOGS B
      WHERE 
      	A.CATALOG_ID_FK = B.ID 
        AND B.ID =' || p_catalogid  || 
        ' AND CONNECTION_ID_FK = ' || p_connectionid ;
  v_derivedRec  DERIVATIVE_REC;
  v_newName MD_SCHEMAS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
   OPEN cv_curs FOR v_selectStmt;
   LOOP
     FETCH cv_curs INTO v_derivedRec;
     EXIT WHEN cv_curs%NOTFOUND;

     if v_derivedRec.dummy_flag  <> C_DUMMYFLAG_TRUE then
        v_newName := CREATE_SCHEMANAME(v_derivedRec.schema_name , v_derivedRec.catalog_name);
        v_transformed := C_TRANSFORMED_TRUE;
     else
	    v_newName := v_derivedRec.schema_name;
     end if;

     if v_newName <> MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName) then
        v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName);
        v_transformed := C_TRANSFORMED_TRUE;
     end if;

     INSERT /* APEXd903b8 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES (v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_transformed,
                  v_derivedRec.schema_name, v_newName, C_NS_DATABASE, C_CONNECTIONTYPE_SCRATCH);

     INSERT /* APEXaf596d */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_derivedRec.catalog_id, C_OBJECTTYPE_CATALOGS, v_derivedRec.catalog_id, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_transformed, 
                  v_derivedRec.catalog_name, v_newName, NULL, C_CONNECTIONTYPE_SCRATCH);

     insert_all_schobjs_cascade(p_connectionid, v_derivedRec.schema_id);

   END LOOP;
   close cv_curs;
END insert_catalogs_cascade;


PROCEDURE insert_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
  v_connectionsRow MD_CONNECTIONS%ROWTYPE;
  v_origName MD_CONNECTIONS.NAME%TYPE;
  v_newName MD_CONNECTIONS.NAME%TYPE;
  v_id MD_CONNECTIONS.ID%TYPE;
  v_catid MD_CATALOGS.ID%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
  cv_curs REF_CURSOR;

BEGIN
  SELECT /* APEX953cea */  * INTO v_connectionsRow from MD_CONNECTIONS WHERE "ID" = p_connectionid;
      v_origName := v_connectionsRow.NAME;
      v_newName := v_origName;
      v_id := v_connectionsRow.ID;

      if v_newName <> MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName) then
        v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName);
        v_transformed := C_TRANSFORMED_TRUE;
      end if;

      INSERT /* APEXda2f55 */  INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                      ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_id , C_OBJECTTYPE_CONNECTIONS, v_id, C_OBJECTTYPE_CONNECTIONS, v_id, v_transformed, 
                      v_origName, v_newName, '', C_CONNECTIONTYPE_SCRATCH);

  OPEN cv_curs FOR 'SELECT id from MD_CATALOGS where connection_id_fk ='|| v_connectionsRow.id;
  LOOP
    FETCH cv_curs INTO v_catid;
    EXIT WHEN cv_curs%NOTFOUND;

      insert_catalogs_cascade(v_id, v_catid);
   END LOOP;   
END insert_connection_cascade;

PROCEDURE populate_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
BEGIN
  insert_connection_cascade(p_connectionid);
END populate_derivatives_table;

--
-- reverts NEW_IDENTIFIER values back to their default(derived) values in MD_DERIVATIVES table.
--
PROCEDURE revert_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
  cv_curs REF_CURSOR;  
  v_row MD_DERIVATIVES%ROWTYPE;
  v_origName MD_DERIVATIVES.ORIGINAL_IDENTIFIER%TYPE;
  v_derivedName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_DERIVATIVES 
         WHERE DERIVED_CONNECTION_ID_FK = ' || p_connectionid ;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;

    v_transformed := NULL;
    v_derivedName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.ORIGINAL_IDENTIFIER);
    if v_row.NEW_IDENTIFIER <> v_derivedName then
      if v_row.ORIGINAL_IDENTIFIER <> v_derivedName then
         v_transformed := C_TRANSFORMED_TRUE;
      end if;

      UPDATE /* APEX5a1f31 */  MD_DERIVATIVES SET TRANSFORMED = v_transformed, NEW_IDENTIFIER = v_derivedName WHERE 
         SRC_ID = v_row.SRC_ID and DERIVED_CONNECTION_ID_FK = p_connectionid ;
    end if;
  END LOOP;
  CLOSE cv_curs;
END revert_derivatives_table;


-- One time initialisation
begin
NULL;
end;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION_REPORT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."MIGRATION_REPORT" AS
--Function getCaptureStatus
FUNCTION getCaptureStatus(srcid IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';
BEGIN
  select decode((select count(*) from migrlog where ref_object_id=srcid and severity>800),0,'Passed','Failed') into status from dual;
  return status;
END getCaptureStatus;
--Function getConvertStatus
FUNCTION getConvertStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';
ifconvert NUMBER default 0;
BEGIN
  SELECT count(*) into ifconvert FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk=convert_conn_id;
  IF ifconvert=0 THEN
      RETURN 'NotConverted';
  ELSIF getCaptureStatus(srcid)='Failed' THEN
     RETURN 'Failed';
  ELSE
   BEGIN
    SELECT 
   decode((SELECT DISTINCT severity from migrlog 
                  WHERE  ref_object_id IN (SELECT derived_id FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk= convert_conn_id) 
                         and severity=1000
           UNION
           SELECT DISTINCT severity from migrlog 
                  WHERE ref_object_id IN (SELECT derived_id FROM md_derivatives where src_id=srcid and derived_connection_id_fk=convert_conn_id)
                  AND severity=900 
                  AND logtext like '%limitation%'),
                  null,'Passed',1000,'Failed',900,'Limitation',' ') 
  into status from dual;
  return status;
  END;
  END IF;
END getConvertStatus;
--Function getGenerateStatus
FUNCTION getGenerateStatus(srcid IN number,convert_conn_id IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';

BEGIN
   status:=getConvertStatus(srcid,convert_conn_id);   
   IF status='NotConverted' THEN
      RETURN 'NotGenerated';
   ELSIF  status='Failed'  THEN
      RETURN 'Failed';      
   ELSE
     BEGIN
        SELECT 
           decode((SELECT count(*) FROM migrlog 
                   WHERE ref_object_id IN (SELECT derived_id FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk=convert_conn_id) 
                         AND phase='Generate'
                         AND severity>800),
                    0,'Passed','Failed')
             INTO status FROM dual;
        RETURN status;
    END;
   END IF;
END getGenerateStatus;
--migration details for each objects
FUNCTION getDetails(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN migr_report_detail_table PIPELINED IS
BEGIN
FOR cur IN (
    select allobjs.ObjID captured_id,
           allobjs.ObjName captured_name,
           md.new_identifier converted_name,
           allobjs.ObjType captured_type,
           decode(md.derived_type,'MD_INDEXES', substr(md.derived_type,4, length(md.derived_type)-5),substr(md.derived_type,4, length(md.derived_type)-4)) converted_type,
           allobjs.CaptureStatus capture_status,
           allobjs.ConvertStatus convert_status,
           allobjs.GenerateStatus generate_status,
           decode(mlog.logtext,null,' ',mlog.logtext) logtext from (
 --schema
     SELECT md_schemas.id ObjID,md_schemas.name ObjName,'SCHEMA' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_schemas.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_schemas.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_schemas.id,convert_conn_id) GenerateStatus
       FROM md_schemas,md_catalogs
       WHERE md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--table
UNION ALL
      SELECT md_tables.id ObjID,md_tables.table_name ObjName,'TABLE' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_tables.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_tables.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_tables.id,convert_conn_id) GenerateStatus
       FROM md_tables,md_schemas,md_catalogs
       WHERE md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--view
UNION ALL
      SELECT md_views.id ObjID,md_views.view_name ObjName,'View' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_views.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_views.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_views.id,convert_conn_id) GenerateStatus
       FROM md_views,md_schemas,md_catalogs
       WHERE md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--storedprogram
UNION ALL
      SELECT md_stored_programs.id ObjID,md_stored_programs.name ObjName,'STORED_PROGRAM' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_stored_programs.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_stored_programs.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_stored_programs.id,convert_conn_id) GenerateStatus
       FROM md_stored_programs,md_schemas,md_catalogs
       WHERE md_stored_programs.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--index
UNION ALL
      SELECT md_indexes.id ObjID,md_indexes.index_name ObjName,'INDEX' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_indexes.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_indexes.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_indexes.id,convert_conn_id) GenerateStatus
       FROM md_indexes, md_tables,md_schemas,md_catalogs
       WHERE md_indexes.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
UNION ALL
      SELECT md_constraints.id ObjID,md_constraints.name ObjName,'CONSTRAINT' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_constraints.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_constraints.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_constraints.id,convert_conn_id) GenerateStatus
       FROM md_constraints, md_tables,md_schemas,md_catalogs
       WHERE md_constraints.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id  
UNION ALL
      SELECT md_triggers.id ObjID,md_triggers.trigger_name ObjName,'TRIGGER' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,convert_conn_id) GenerateStatus
       FROM md_triggers, md_tables,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id 
UNION ALL
       SELECT md_triggers.id ObjID,md_triggers.trigger_name ObjName,'TRIGGER' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,convert_conn_id) GenerateStatus
       FROM md_triggers, md_views,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_views.id
            AND md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
  ) allobjs left join (select md_derivatives.src_id,migrlog.logtext 
                        from migrlog,md_derivatives 
                        where migrlog.ref_object_id = md_derivatives.derived_id or migrlog.ref_object_id=md_derivatives.src_id) mlog 
                                on allobjs.objid=mlog.src_id  left join md_derivatives md on allobjs.objid=md.src_id
    ) 
  LOOP
     PIPE ROW(MIGR_REPORT_DETAIL_ROW(cur.captured_id,
                              cur.captured_name,
                              cur.converted_name,
                              cur.captured_type,
                              cur.converted_type,
                              cur.capture_status,
                              cur.convert_status,
                              cur.generate_status,
                              cur.logtext
                              ));       

  END LOOP;  
  RETURN;
 END getDetails; 

--migration summary
FUNCTION getSum(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN migr_report_sum_table PIPELINED IS
--
capture_passed_schema number default 0;
capture_passed_table number default 0;
capture_passed_view number default 0;
capture_passed_sp number default 0;
capture_passed_index number default 0;
capture_passed_constraint number default 0;
capture_passed_trigger number default 0;
--
capture_failed_schema number default 0;
capture_failed_table number default 0;
capture_failed_view number default 0;
capture_failed_sp number default 0;
capture_failed_index number default 0;
capture_failed_constraint number default 0;
capture_failed_trigger number default 0;
--
convert_passed_schema number default 0;
convert_passed_table number default 0;
convert_passed_view number default 0;
convert_passed_sp number default 0;
convert_passed_index number default 0;
convert_passed_constraint number default 0;
convert_passed_trigger number default 0;
--
convert_limit_schema number default 0;
convert_limit_table number default 0;
convert_limit_view number default 0;
convert_limit_sp number default 0;
convert_limit_index number default 0;
convert_limit_constraint number default 0;
convert_limit_trigger number default 0;
--
convert_failed_schema number default 0;
convert_failed_table number default 0;
convert_failed_view number default 0;
convert_failed_sp number default 0;
convert_failed_index number default 0;
convert_failed_constraint number default 0;
convert_failed_trigger number default 0;
--
convert_not_schema number default 0;
convert_not_table number default 0;
convert_not_view number default 0;
convert_not_sp number default 0;
convert_not_index number default 0;
convert_not_constraint number default 0;
convert_not_trigger number default 0;
--
generate_passed_schema number default 0;
generate_passed_table number default 0;
generate_passed_view number default 0;
generate_passed_sp number default 0;
generate_passed_index number default 0;
generate_passed_constraint number default 0;
generate_passed_trigger number default 0;
--
generate_failed_schema number default 0;
generate_failed_table number default 0;
generate_failed_view number default 0;
generate_failed_sp number default 0;
generate_failed_index number default 0;
generate_failed_constraint number default 0;
generate_failed_trigger number default 0;
--
generate_not_schema number default 0;
generate_not_table number default 0;
generate_not_view number default 0;
generate_not_sp number default 0;
generate_not_index number default 0;
generate_not_constraint number default 0;
generate_not_trigger number default 0;
--CURSORS
--SCHEMAS CURSOR
CURSOR schema_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_schemas.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_schemas.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_schemas.id,did) GenerateStatus
       FROM md_schemas,md_catalogs
       WHERE md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--TABLES CURSOR
CURSOR table_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_tables.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_tables.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_tables.id,did) GenerateStatus
       FROM md_tables,md_schemas,md_catalogs
       WHERE md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--VIEWS CURSOR
CURSOR view_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_views.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_views.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_views.id,did) GenerateStatus
       FROM md_views,md_schemas,md_catalogs
       WHERE md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--STORED_PROGRAMS CURSOR
CURSOR sp_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_stored_programs.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_stored_programs.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_stored_programs.id,did) GenerateStatus
       FROM md_stored_programs,md_schemas,md_catalogs
       WHERE md_stored_programs.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--INDEXES CURSOR
CURSOR index_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_indexes.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_indexes.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_indexes.id,did) GenerateStatus
       FROM md_indexes, md_tables,md_schemas,md_catalogs
       WHERE md_indexes.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--CONSTRAINTS CURSOR
CURSOR constraint_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_constraints.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_constraints.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_constraints.id,did) GenerateStatus
       FROM md_constraints, md_tables,md_schemas,md_catalogs
       WHERE md_constraints.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;  
--TRIGGERS CURSOR
CURSOR trigger_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,did) GenerateStatus
       FROM md_triggers, md_tables,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid 
       UNION ALL
       SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,did) GenerateStatus
       FROM md_triggers, md_views,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_views.id
            AND md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
BEGIN
 --count
 --schemas
 FOR cur IN schema_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_schema:=capture_failed_schema+1;
                ELSE capture_passed_schema:=capture_passed_schema+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_schema:=convert_failed_schema+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_schema:=convert_limit_schema+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_schema:=convert_passed_schema+1;
                 ELSE   convert_not_schema:=convert_not_schema+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_schema:=generate_failed_schema+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_schema:=generate_passed_schema+1;
                ELSE  generate_not_schema:=generate_not_schema+1;
                END IF;            
 END LOOP;
 --tables
 FOR cur IN table_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_table:=capture_failed_table+1;
                ELSE capture_passed_table:=capture_passed_table+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_table:=convert_failed_table+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_table:=convert_limit_table+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_table:=convert_passed_table+1;
                 ELSE   convert_not_table:=convert_not_table+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_table:=generate_failed_table+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_table:=generate_passed_table+1;
                ELSE  generate_not_table:=generate_not_table+1;
                END IF;            
 END LOOP;
 --views
 FOR cur IN view_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_view:=capture_failed_view+1;
                ELSE capture_passed_view:=capture_passed_view+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_view:=convert_failed_view+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_view:=convert_limit_view+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_view:=convert_passed_view+1;
                 ELSE   convert_not_view:=convert_not_view+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_view:=generate_failed_view+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_view:=generate_passed_view+1;
                ELSE  generate_not_view:=generate_not_view+1;
                END IF;            
 END LOOP;
 --stored programs
 FOR cur IN sp_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_sp:=capture_failed_sp+1;
                ELSE capture_passed_sp:=capture_passed_sp+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_sp:=convert_failed_sp+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_sp:=convert_limit_sp+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_sp:=convert_passed_sp+1;
                 ELSE   convert_not_sp:=convert_not_sp+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_sp:=generate_failed_sp+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_sp:=generate_passed_sp+1;
                ELSE  generate_not_sp:=generate_not_sp+1;
                END IF;            
 END LOOP;
 --index
 FOR cur IN index_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_index:=capture_failed_index+1;
                ELSE capture_passed_index:=capture_passed_index+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_index:=convert_failed_index+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_index:=convert_limit_index+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_index:=convert_passed_index+1;
                 ELSE   convert_not_index:=convert_not_index+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_index:=generate_failed_index+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_index:=generate_passed_index+1;
                ELSE  generate_not_index:=generate_not_index+1;
                END IF;            
 END LOOP;
 --constraints
 FOR cur IN constraint_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_constraint:=capture_failed_constraint+1;
                ELSE capture_passed_constraint:=capture_passed_constraint+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_constraint:=convert_failed_constraint+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_constraint:=convert_limit_constraint+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_constraint:=convert_passed_constraint+1;
                 ELSE   convert_not_constraint:=convert_not_constraint+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_constraint:=generate_failed_constraint+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_constraint:=generate_passed_constraint+1;
                ELSE  generate_not_constraint:=generate_not_constraint+1;
                END IF;            
 END LOOP;
 --triggers
 FOR cur IN trigger_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_trigger:=capture_failed_trigger+1;
                ELSE capture_passed_trigger:=capture_passed_trigger+1;
                END IF;

                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_trigger:=convert_failed_trigger+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_trigger:=convert_limit_trigger+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_trigger:=convert_passed_trigger+1;
                 ELSE   convert_not_trigger:=convert_not_trigger+1;
                 END IF;

                IF cur.generatestatus='Failed' 
                 THEN generate_failed_trigger:=generate_failed_trigger+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_trigger:=generate_passed_trigger+1;
                ELSE  generate_not_trigger:=generate_not_trigger+1;
                END IF;            
 END LOOP; 
 --source exists row
  FOR cur IN (  
      SELECT 
        'Source Exists' Label,
         num_schemas,
         num_tables,
         num_indexes,
         num_constraints,
         num_views,
         num_stored_programs,        
         num_triggers
         FROM  md_connections
         WHERE type IS NULL and id=capture_conn_id
 )
 LOOP
   PIPE ROW(MIGR_REPORT_SUM_ROW(
           cur.Label, 
           cur.num_schemas,
           cur.num_tables,
           cur.num_indexes,
           cur.num_constraints,
           cur.num_views,
           cur.num_triggers,
           cur.num_stored_programs
             ));
 END LOOP; 
   PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Capture Passed', 
           capture_passed_schema,
           capture_passed_table,
           capture_passed_index,
           capture_passed_constraint,
           capture_passed_view,
           capture_passed_trigger,
           capture_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Capture Failed', 
           capture_failed_schema,
           capture_failed_table,
           capture_failed_index,
           capture_failed_constraint,
           capture_failed_view,
           capture_failed_trigger,
           capture_failed_sp
             ));

  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Passed', 
           convert_passed_schema,
           convert_passed_table,
           convert_passed_index,
           convert_passed_constraint,
           convert_passed_view,
           convert_passed_trigger,
           convert_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Limitation', 
           convert_limit_schema,
           convert_limit_table,
           convert_limit_index,
           convert_limit_constraint,
           convert_limit_view,
           convert_limit_trigger,
           convert_limit_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Failed', 
           convert_failed_schema,
           convert_failed_table,
           convert_failed_index,
           convert_failed_constraint,
           convert_failed_view,
           convert_failed_trigger,
           convert_failed_sp
             ));

  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Generate Passed', 
           generate_passed_schema,
           generate_passed_table,
           generate_passed_index,
           generate_passed_constraint,
           generate_passed_view,
           generate_passed_trigger,
           generate_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Generate Failed', 
           generate_failed_schema,
           generate_failed_table,
           generate_failed_index,
           generate_failed_constraint,
           generate_failed_view,
           generate_failed_trigger,
           generate_failed_sp
             )); 
  RETURN;
END getSum;
END MIGRATION_REPORT;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION_TRANSFORMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."MIGRATION_TRANSFORMER" AS
  -- Maximum length of an identifier
  MAX_IDENTIFIER_LEN NUMBER:=30;
C_DISALLOWED_CHARS   CONSTANT NVARCHAR2(100) := ' .@`!\\"%^&*()-+=[]{};:,.<>?/~'''||UNISTR('\00A3');

--PRIVATE FUNCTION
FUNCTION truncateStringByteSize(p_work VARCHAR2, p_bsize NUMBER) RETURN VARCHAR2
IS
v_work VARCHAR2(4000);
v_bsize NUMBER(10);
BEGIN
 IF LENGTHB(p_work) <= p_bsize THEN
    return p_work;
  END IF;
  v_work := p_work;
  v_work := SUBSTRB(v_work, 1, p_bsize);
  WHILE INSTRC(p_work, v_work , 1, 1) <> 1 LOOP -- a character has been cut in half or in 2/3 or 3/4 by substrb (multibyte can have up to 4 bytes) 
  --note each left over corrupt byte can be a single character
   BEGIN
     v_bsize := LENGTHB(v_work);
  	 v_work := SUBSTRB(v_work, 1, v_bsize-1);
   END;
  END LOOP; 
  return v_work;
END;

FUNCTION add_suffix(p_work VARCHAR2, p_suffix VARCHAR2, p_maxlen NUMBER) RETURN VARCHAR2
IS
  v_suflen NUMBER := LENGTHB(p_suffix);
  v_truncamount NUMBER;
BEGIN
  IF LENGTHB(p_work) < p_maxlen - v_suflen THEN
    RETURN p_work || p_suffix;
  END IF;
  v_truncamount := LENGTHB(p_work) + v_suflen - p_maxlen;
  RETURN truncateStringByteSize(p_work, LENGTHB(p_work)-v_truncamount) || p_suffix;
END add_suffix;


FUNCTION check_identifier_length(p_ident VARCHAR2) RETURN VARCHAR2
IS
  v_work VARCHAR2(4000);
BEGIN
  return truncateStringByteSize(p_ident,  MAX_IDENTIFIER_LEN);
END;

FUNCTION check_reserved_word(p_work VARCHAR2) RETURN VARCHAR2
IS
  v_count NUMBER := 0;
BEGIN
  SELECT COUNT(*) INTO v_count FROM MIGRATION_RESERVED_WORDS WHERE KEYWORD = UPPER(p_work);
  IF v_count > 0 THEN
    -- It is a reserved word
    RETURN add_suffix(p_work, '_', MAX_IDENTIFIER_LEN);
  END IF;
  RETURN p_work;
END check_reserved_word;

FUNCTION sys_check(p_work VARCHAR2) RETURN VARCHAR2
IS
BEGIN
  IF LENGTH(p_work) < 4 THEN
    return p_work;
  END IF;
  IF SUBSTR(p_work, 1, 4) <> 'SYS_' THEN
    return p_work;
  END IF;
  RETURN 'SIS_' || SUBSTR(p_work, 5);
END sys_check;

FUNCTION first_char_check(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 * Never want to start with anything but AlphaNumeri
 */
IS
  v_firstChar NCHAR(1);
  v_allowed NCHAR(200);
BEGIN
  v_allowed := C_DISALLOWED_CHARS || '0123456789_$#';
  v_firstChar := SUBSTR(p_work,1,1);
  if INSTR(v_allowed, v_firstChar) > 0 THEN
    return 'A' ||p_work;
  END IF;
  return p_work;
END first_char_check;



FUNCTION lTrimNonAlphaNumeric(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 *Remove all non alphanumeric characters from the start 
 */
IS
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
  v_work NVARCHAR2(4000):=p_work;
  v_forbiddenChars VARCHAR2(100);
  v_firstgoodchar NUMBER;
BEGIN
  v_forbiddenChars := C_DISALLOWED_CHARS ||'_$#';
  IF v_work IS NULL THEN
    RETURN 'UNKNOWN';
  END IF;
   FOR v_index in 1..LENGTH(v_work) LOOP
    v_testChar := SUBSTR(p_work, v_index, 1);
    IF INSTR(v_forbiddenChars, v_testChar) <= 0 THEN
      v_firstgoodchar := v_index;
      EXIT;--make sure to leave loop now as first real char reached
    END IF;
  END LOOP;
  return substr(p_work,v_firstgoodchar);
END lTrimNonAlphaNumeric;

FUNCTION removeQuotes(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 * Removed Quotes around a identifier name
 */
IS
  v_firstChar NCHAR(1);
  v_lastChar NCHAR(1);
  v_quote NCHAR(200):= '"[]'; -- strip these from start and end;
  v_work NVARCHAR2(4000) := p_work;
BEGIN
  v_firstChar := SUBSTR(v_work,1,1);
  v_lastChar  := SUBSTR(v_work,LENGTH(v_work),1);
  if INSTR(v_quote, v_firstChar) > 0 THEN
  	v_work := SUBSTR(v_work, 2);
  	if INSTR(v_quote, v_lastChar) > 0 THEN
  	  v_work := SUBSTR(v_work,0,LENGTH(v_work)-1);
      return v_work;
    END IF;
      return v_work;
  END IF;
  return v_work;
END removeQuotes;


FUNCTION check_allowed_chars(p_work NVARCHAR2) RETURN NVARCHAR2
/* The documentation states 
 * "Nonquoted identifiers can contain only alphanumeric characters from your database character set and the
 *  underscore (_), dollar sign ($), and pound sign (#). Database links can also contain periods (.) and "at" signs (@).
 *  Oracle strongly discourages you from using $ and # in nonquoted identifiers."
 *  Heres a couple of gotchas
 *  1) We don't know where we will be generated to, so dunno what that database character set will be
 *  2) We've now way of knowing if a character is alphanumeric on the character set.
 * So... Here's what we'll do
 *  1) given that its come from a database, we'll assume with was alphanumeric
 *  2) We'll remove any "regular" symbol characters (i.e. one's on my keyboard!)
 *  3) We'll be storing in NVARCHAR2 in the hope that this will preserve everything.
 * 
 */
IS
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
  -- Folowing syntax is a workaround for a problem with wrap.  Do not change it.
  v_forbiddenChars NVARCHAR2(100) := C_DISALLOWED_CHARS;
  v_work VARCHAR2(4000) := p_work;
  v_endswithunderscore boolean := FALSE;
BEGIN
  IF INSTR('_',SUBSTR(p_work, LENGTH(p_work))) >0 THEN
    v_endswithunderscore := TRUE;
  END IF;


  FOR v_index in 1..LENGTH(v_work) LOOP
    v_testChar := SUBSTR(p_work, v_index, 1);

    --check for existing underscores.these existed in the original and should be preserved as later we remove multiple underscores
    --bug:10405027
    IF v_testChar = '_' THEN
    	v_work :=SUBSTR(v_work,1,v_index-1)||'!' || SUBSTR(v_work,v_index+1);
    ELSIF INSTR(v_forbiddenChars, v_testChar) > 0 THEN
      v_work := SUBSTR(v_work, 1, v_index-1) || '_' || SUBSTR(v_work, v_index+1);
    END IF;
  END LOOP;

  --NOW REMOVE DOUBLE UNDERSCORES see bug 6647397
  v_work := replace(replace (replace (v_work,'__','_'),'__','_'),'__','_');--replace 2 underscores with 1 underscore

  --bug:10405027 , original underscore and a new one
  v_work := replace(v_work,'!_','_');
  v_work := replace(v_work,'_!','_'); 

  --NOW ADD BACK IN EXISTING ORGINAL UNDERSCORES bug:10405027
  v_work := replace(v_work,'!','_');

  --REMOVE THE LT CHAR IF IT IS AN UNDERSCORE
  IF v_endswithunderscore=false AND INSTR('_',SUBSTR(v_Work,LENGTH(v_work))) > 0 THEN
    v_work := SUBSTR(v_work,0,LENGTH(v_work)-1);
  END IF;
  return v_work;
END check_allowed_chars;

FUNCTION transform_identifier(p_identifier NVARCHAR2)  RETURN NVARCHAR2
IS
  v_work VARCHAR2(4000);
BEGIN
  v_work := p_identifier;
  BEGIN
	  -- There are 10 rules defined for identifier naming:
	  -- See http://st-doc.us.oracle.com/10/102/server.102/b14200/sql_elements008.htm#i27570

	  v_work := removeQuotes(v_work);
	  v_work := lTrimNonAlphaNumeric(v_work);
	  IF v_work is null THEN
	    v_work := getNameForNullCase(p_identifier);	 ---bug no. 8904200 
	  END IF;

	  --moving this to first as we can shrink the size of the name if they have more than 1 invalid char in a row.
	  --see bug 6647397
	   -- 5. Must begin withan alpha character from your character set
	  v_work := first_char_check(v_work);
	   -- 6. Alphanumeric characters from your database charset plus '_', '$', '#' only
	  v_work := check_allowed_chars(v_work);
	  -- 1. Length
	  v_work := check_identifier_length(v_work);
	  -- 2. Reserved words
	  v_work := check_reserved_word(v_work);
	  -- 3. "Special words" -I've handled these in reserved words, but still have to check if it starts with SYS
	  v_work := sys_check(v_work);
	  -- 4. "You should use ASCII characters in database names, global database names, and database link names,
	  --    because ASCII characters provide optimal compatibility across different platforms and operating systems."
	  -- This doesn't apply as we are not doing anything with DB names
	  -- 7. Name collisions; we'll handle this at a higher level.
	  -- 8. Nonquoted identifiers are case insensitive.  This is a doubl edged sword: If we use quoted, we can possible
	  --    Keep it similar to the source platform.  However this is not how it is typically done in Oracle.
	  -- 9. Columns in the same table.  See point 7. above.
	  -- 10. All about overloading for functions and parameters.  We don't have to handle this here either, at this
	  --     Should all be done by parsing technology.
  EXCEPTION WHEN OTHERS THEN
   v_work := p_identifier;
  END;  
  return v_work;
END transform_identifier;
FUNCTION fix_all_schema_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := 0;
  -- First, we transform all identifiers to meet our rules
  -- Then, we need to see if we've caused any collisions in the process
  -- And if so, fix them
  -- Right now, this is a dummy stub.
  return v_ret;
END fix_all_schema_identifiers;

FUNCTION fix_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := fix_all_schema_identifiers(p_connectionid);
  return v_ret;
END fix_all_identifiers;  

FUNCTION getNameForNullCase(p_work NVARCHAR2) RETURN NVARCHAR2
IS
  v_work VARCHAR2(4000);
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
BEGIN
  FOR v_index in 1..LENGTH(p_work) LOOP
    v_testchar := SUBSTR(p_work,v_index,1);
    v_work := v_work || getDisallowedCharsNames(v_testchar);
  END LOOP;
  return v_work;
END;

FUNCTION getDisallowedCharsNames(p_work NVARCHAR2) RETURN VARCHAR2
IS
  v_work VARCHAR2(4000) := p_work;
BEGIN
  ----' .@`!"%^&*()-+=[]{};:,.<>?/~''' 
    v_work := ( CASE p_work
    WHEN '.' THEN 'DOT'
    WHEN '@' THEN 'AT'
    WHEN '`' THEN 'APOSTROPHE'
    WHEN '!' THEN 'EXCLAMATION'
    WHEN '"' THEN 'D_QUOTE'
    WHEN '%' THEN 'PERCENT'
    WHEN '^' THEN 'CARET'
    WHEN '&' THEN 'AMPERSAND'
    WHEN '*' THEN 'STAR'
    WHEN '(' THEN 'LEFTPARENTHESIS'
    WHEN ')' THEN 'RIGHTPARANTHESIS'
    WHEN '-' THEN 'MINUS'
    WHEN '+' THEN 'PLUS'
    WHEN '=' THEN 'EQUAL'
    WHEN '[' THEN 'LEFTSQUARE_B'
    WHEN ']' THEN 'RIGHTSQUARE_B'
    WHEN '{' THEN 'LEFTCURLY_B'
    WHEN '}' THEN 'RIGHTCURLY_B'
    WHEN ';' THEN 'COLON'
    WHEN ':' THEN 'SEMICOLON'
    WHEN ',' THEN 'COMMA'
    WHEN '<' THEN 'LESSTHAN'
    WHEN '>' THEN 'GREATERTHAN'
    WHEN '?' THEN 'QUESTIONMARK'
    WHEN '~' THEN 'TILDE'
    WHEN '/' THEN 'BACKSLASH'
    WHEN '''' THEN 'S_QUOTE'
    WHEN '$' THEN 'DOLLAR'
    ELSE 'UNKNOWN'
    END);
    return v_work;
END;

PROCEDURE set_oracle_long_identifier(b_flag INT)
/**
 * Setting for usage of 12.2 Database 128 bytes Long identifier
 */
IS
BEGIN
  if (b_flag = 1) then
    MAX_IDENTIFIER_LEN := 128;
  elsif (b_flag = 0) then
    MAX_IDENTIFIER_LEN := 30;
  END IF;
END set_oracle_long_identifier;

FUNCTION get_oracle_long_identifier RETURN NUMBER
/**
 * Get the setting for usage of 12.2 Database 128 byte Long identifier
 */
IS
BEGIN
  IF MAX_IDENTIFIER_LEN = 0 THEN
     MAX_IDENTIFIER_LEN := 30;
    return 30;
  END IF;

  IF MAX_IDENTIFIER_LEN = 30 THEN
    return 30;
  END IF;

  IF (MAX_IDENTIFIER_LEN = 128) THEN
    return 128;
  END IF;
  return 0;
END get_oracle_long_identifier;

END;

/
--------------------------------------------------------
--  DDL for Package Body SQLSERVER_TSQL_TRANSLATOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."SQLSERVER_TSQL_TRANSLATOR" as

  procedure translate_sql(sql_text              in  clob,
                          translated_text       out clob) as
  language java
  name 'oracle.dbtools.babelfish.sqlserver.SQLServerTSQLTranslator.translateSQL(oracle.sql.CLOB,oracle.sql.CLOB[])';

  procedure translate_error(error_code          in  binary_integer,
                            translated_code     out binary_integer,
                            translated_sqlstate out varchar2) as
  language java
  name 'oracle.dbtools.babelfish.sqlserver.SQLServerTSQLTranslator.translateError(int,int[],java.lang.String[])';

end;

/
--------------------------------------------------------
--  DDL for Package Body SS2K5ALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."SS2K5ALLPLATFORM" 
AS
TYPE split_varray_type IS VARRAY(255) OF VARCHAR2(32767);
TYPE ref_cur_type
IS
  REF

  CURSOR;
  TYPE key_array IS VARRAY(20) OF NUMBER(38,0);
TYPE str_array_type
IS
  TABLE OF       VARCHAR2(32767) INDEX BY BINARY_INTEGER;
  nProjectId     NUMBER(38,0);
  sev_err CONSTANT NUMBER :=2;
  sev_warn CONSTANT NUMBER :=4;
  sev_others CONSTANT NUMBER :=8;
  bProjectExists BOOLEAN;
  exceptionOccurred BOOLEAN :=FALSE;
  nSvrId         NUMBER(38,0) := NULL;
  RawToNumberFMT constant CHAR(12)     := 'XXXXXXXXXXXX';
  NumberToRawFMT constant CHAR(14)     := 'FM' || RawToNumberFMT;
  NewID          constant CHAR(9 CHAR) := '(newid())';
  NewIDClob CLOB                       :=NewID;--does this string to clob shortcut work in 9ir2?
  NewIDClobLength NUMBER(38,0)         := 9;
  MAX_LEN         NUMBER(38,0)         :=-999;
  pluginClass     VARCHAR2(500)        := NULL;
  CaptureNotClean EXCEPTION;
FUNCTION LOCALSUBSTRB(
    vin        VARCHAR2)
  RETURN VARCHAR2
AS
  v VARCHAR2(4000 CHAR):=SUBSTR(vin, 1, 4000);
  l NUMBER;
BEGIN
  l               := LENGTH(v);
  WHILE (lengthb(v)>4000)
  LOOP
    l := l-1;
    v := SUBSTR(v,1,l);
  END LOOP;
  RETURN v;
END;
FUNCTION GetStatus(iid INTEGER) RETURN varchar2
IS
   status VARCHAR2(4000);
   errMsg VARCHAR2(2000);
BEGIN
   SELECT logtext INTO status FROM migrlog WHERE severity = 666 AND phase = 'CAPTURE' AND connection_id_fk = iid;    
   RETURN status; 
EXCEPTION 
  WHEN OTHERS THEN
     errMsg := SQLERRM;  
     dbms_output.put_line('Status Message : ' || errMsg);
  RETURN ' ';
END GetStatus;

PROCEDURE SetStatus(msg VARCHAR2)
IS
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
   --dbms_output.put_line(msg);
   --commit;
   --progressStatus := msg;
   --dbms_lock.sleep(2);
   UPDATE migrlog SET logtext = msg,
                  log_date = systimestamp
                  WHERE severity = 666 
                      AND phase = 'CAPTURE'
                      AND connection_id_fk = nProjectId;                   
   COMMIT;
END SetStatus; 

PROCEDURE LogInfo( parent_log_id NUMBER,
                   severity NUMBER,
                   logtextin VARCHAR2,
                   ref_obj_id NUMBER,
                   ref_obj_typein VARCHAR2,
                   connection_id NUMBER)
 IS
 PRAGMA AUTONOMOUS_TRANSACTION;
   errMsg  VARCHAR2(4000) := NULL;
   logtext varchar2(4000) := null;
   ref_obj_type varchar2(4000) := null;
 BEGIN
   IF (severity = sev_err)
   THEN
       exceptionOccurred :=TRUE;
   END IF;
   logtext := LOCALSUBSTRB (logtextin);
   ref_obj_type := LOCALSUBSTRB (ref_obj_typein);
   IF (connection_id is NULL) THEN
          BEGIN
              INSERT INTO STAGE_MIGRLOG ( "SVRID_FK", "DBID_GEN_FK",
                  ID, REF_OBJECT_ID,
                  REF_OBJECT_TYPE, LOG_DATE,
                  SEVERITY, LOGTEXT, PHASE)
              VALUES(null,null,null,ref_obj_id,ref_obj_type,null/* trigger will put in SYSTIMESTAMP */, 1000, logtext,'Capture');
              COMMIT;
          EXCEPTION
             WHEN OTHERS THEN
                 DBMS_OUTPUT.PUT_LINE('Capture:LogInfo Failed: ['  || logtext ||  
                 '] insert exception: ' || LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || 
                 LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE)));
          END;
    ELSE
        INSERT INTO MIGRLOG(parent_log_id, 
                       log_date, 
                       severity, 
                       logtext, 
                       phase, 
                       ref_object_id, 
                       ref_object_type, 
                       connection_id_fk) 
         VALUES(parent_log_id, 
                sysdate, 
                severity, 
                logtext, 
                'Capture', 
                ref_obj_id, 
                ref_obj_type, 
                connection_id) ;
    END IF;
    COMMIT;
 EXCEPTION
 WHEN OTHERS THEN
   errMsg := SQLERRM;
   DBMS_OUTPUT.put_line('Log Err: ['  || errMsg       || ']'
                                    || parent_log_id   || ':' 
                                    || severity     || ':'
                                    || logtext      || ':Capture:'
                                    || ref_obj_id   || ':'
                                    || ref_obj_type || ':'
                                    || connection_id);
 END LogInfo;
FUNCTION amINewid
  (
    myc CLOB
  )

  RETURN NUMBER
IS
BEGIN

  IF
    (
      myc IS NULL
    )
    THEN

    RETURN 0;

  END IF;

  IF
    (
      dbms_lob.getlength(myc) != NewIDClobLength
    )
    THEN

    RETURN 0;

  END IF;

  IF
    (
      instr (myc,NewIDClob)!=0
    )--starting at char 1 would be a match
    THEN

    RETURN 1;

  END IF;

  RETURN 0;

END amINewid;

FUNCTION getPrecision
  (
    typein      VARCHAR2 ,
    precisionin NUMBER,
    scalein     NUMBER
  )

  RETURN NUMBER
IS
  lowerType VARCHAR2
  (
    1000
  )
  :=lower
  (
    typein
  )
  ;
BEGIN

  IF
    (
      lowerType='bigint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='int'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smallint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='money'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='tinyint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smallmoney'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='bit'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType ='float'
    )
    THEN

    IF
      (
        (precisionin IS NOT NULL) AND ( precisionin = 0 )
      )
      THEN

      RETURN NULL;

    END IF;

  END IF;

  IF
    (
      lowerType='real'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetime'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smalldatetime'
    )
    THEN

    RETURN NULL;

  END IF;
  IF
    (
      lowerType='date'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='time'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetime2'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetimeoffset'
    )
    THEN

    RETURN NULL;

  END IF;

  --if (lowerType='char')
  --then
  --  scale = null;
  --end if

  IF
    (
      lowerType='text'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType ='varbinary'
    )
    THEN

    IF
      (
        precisionin=-1
      )
      THEN

      RETURN MAX_LEN;

    END IF;

  END IF;

  IF
    (
      lowerType ='nvarchar'
    )
    THEN

    IF
      (
        precisionin=-1
      )
      THEN

      RETURN MAX_LEN;

    END IF;

    RETURN precisionin/2;

  END IF;

  IF
    (
      lowerType ='varchar'
    )
    THEN

    IF
      (
        precisionin=-1
      )
      THEN

      RETURN MAX_LEN;

    END IF;

  END IF;

  IF
    (
      lowerType='nchar'
    )
    THEN

    RETURN precisionin/2;

  END IF;

  IF
    (
      lowerType='sysname'
    )
    THEN

    RETURN NULL;

  END IF;
  --if (lowerType='nchar')
  --then
  --  scale = null;
  --end if;

  IF
    (
      lowerType='ntext'
    )
    THEN

    RETURN NULL;

  END IF;
  --if (lowerType='nvarchar')
  --then
  --  scale = null;
  --end if;
  --if (lowerType='binary')
  -- then
  --  scale = null;
  --end if;

  IF
    (
      lowerType='image'
    )
    THEN

    RETURN NULL;

  END IF;
  --if (lowerType='varbinary')
  --then
  --  scale = null;
  --end if;

  IF
    (
      lowerType='cursor'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='timestamp'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='sql_variant'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='uniqueidentifier'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='table'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='xml'
    )
    THEN

    RETURN NULL;

  END IF;

  RETURN precisionin;

END getPrecision;

FUNCTION getnewscale
  (
    typein      VARCHAR2 ,
    precisionin NUMBER,
    scalein     NUMBER
  )

  RETURN NUMBER
IS
  lowerType VARCHAR2
  (
    1000
  )
  :=lower
  (
    typein
  )
  ;
BEGIN

  IF
    (
      lowerType='bigint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='int'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smallint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='money'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='tinyint'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smallmoney'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='bit'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='float'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='real'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetime'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='smalldatetime'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='date'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='time'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetime2'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='datetimeoffset'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='char'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='text'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='varchar'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='sysname'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='nchar'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='ntext'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='nvarchar'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='binary'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='image'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='varbinary'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='cursor'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='timestamp'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='sql_variant'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='uniqueidentifier'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='table'
    )
    THEN

    RETURN NULL;

  END IF;

  IF
    (
      lowerType='xml'
    )
    THEN

    RETURN NULL;

  END IF;

  RETURN scalein;

END getnewscale;


PROCEDURE CaptureConnections
IS
errMsg VARCHAR2(4000) := NULL;
BEGIN

  IF bProjectExists = FALSE
  THEN
  INSERT
  INTO md_projects
    (
      "ID",
      project_name,
      comments
    )
    (SELECT project_id,
        project_name,
        comments
      FROM STAGE_SERVERDETAIL
      WHERE project_id = nProjectId
      AND NOT EXISTS
        ( SELECT 1 FROM md_projects WHERE "ID" = nProjectId
        )
    ) ;
  END IF;

  INSERT
  INTO md_connections
    (
      "ID",
      project_id_fk,
      username,
      dburl,
      "NAME"
    )
    (SELECT SVRID,
        nProjectId,
        username,
        dburl,
        db_name
      FROM STAGE_SERVERDETAIL
      WHERE project_id = nProjectId
    ) ;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'Capture Connections: ['  || errMsg ||  '] ' || 'nSvrId:Project Id : ' || nSvrId || ' : '|| nProjectId, NULL, NULL, nSvrId);  
END CaptureConnections;

PROCEDURE CaptureDatabases
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN

  INSERT
  INTO md_catalogs
    (
      "ID",
      connection_id_fk,
      catalog_name,
      dummy_flag,
      comments
    )
    (SELECT d.dbid_gen,
        d.svrid_fk,
        d."NAME",
        'N',
        p.VALUE
      FROM STAGE_SS2K5_DATABASES d,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE d.svrid_fk  = nSvrId
      AND p.class(+)    = 0
      AND p.svrid_fk(+) = nSvrId
      AND p.MAJOR_ID(+) = 0
      AND p.MINOR_ID(+) = 0
      AND d.dbid_gen    =p.dbid_gen_fk(+)
    );
EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 
                'CaptureDatabases Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);        
END CaptureDatabases;

PROCEDURE CaptureSchemas
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN

  INSERT
  INTO md_schemas
    (
      "ID",
      catalog_id_fk,
      "NAME",
      comments
    )
    (SELECT A.suid_gen,
        A.dbid_gen_fk,
        A."NAME",
        p.VALUE
      FROM STAGE_SS2K5_SCHEMAS A,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE A.svrid_fk = nSvrId
      AND a.schema_id  <16384
      AND a.NAME       !='INFORMATION_SCHEMA'
      AND a.name       !='sys'
      AND EXISTS
        (SELECT 1
        FROM STAGE_SS2K5_OBJECTS o
        WHERE o.schema_id = a.schema_id
        AND o.svrid_fk    = nSvrId
        AND o.dbid_gen_fk = a.dbid_gen_fk
        )
      AND p.class(+) = 3
        /* schema */
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.schema_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    );
EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 
                'CaptureSchemas Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);           
END;

PROCEDURE CaptureTables
IS
  errMsg VARCHAR2(4000) := null;
BEGIN
 -- SetStatus('Capturing Tables');
  INSERT
  INTO md_tables
    (
      "ID",
      schema_id_fk,
      table_name,
      qualified_native_name,
      comments
    )
    (SELECT objid_gen,
        a.schema_id_fk,
        A."NAME",
        C."NAME"
        || '.'
        || B."NAME"
        || '.'
        || A."NAME",
        p.value comments
      FROM stage_ss2k5_tables A,
        stage_ss2k5_schemas B,
        stage_ss2k5_databases C,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE A.SCHEMA_ID_FK = B.SUID_GEN
        --probably better to use concrete nSvrid where possible.
      AND A.NAME NOT IN ('sysdiagrams')
      AND A.svrid_fk    = nSvrId
      AND B.svrid_fk    = nSvrId
      AND C.svrid_fk    = nSvrId
      AND A.dbid_gen_fk = B.dbid_gen_fk
      AND B.dbid_gen_fk = C.dbid_gen
      AND p.class(+)    = 1
        /* object or column */
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.object_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    );
EXCEPTION 
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 
                'CaptureTables Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);
END CaptureTables;
/**
* look up to see if base type is valid.
* @param baseTypeIn the text of a type got from sql server
* @return true if base type is not handled.
*/

FUNCTION baseTypeIsNotHandled
  (
    baseTypeIn VARCHAR2
  )

  RETURN BOOLEAN
IS
  baseTypeUpper VARCHAR2
  (
    1000 CHAR
  )
  ;
  returnValue BOOLEAN := true;
  errMsg VARCHAR2(4000) := NULL;
BEGIN

  IF
    (
      baseTypeIn IS NULL
    )
    THEN

    RETURN true;

  END IF;
  baseTypeUpper := Upper
  (
    baseTypeIn
  )
  ;

  IF
    (
      baseTypeUpper='VARCHAR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='BIGINT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='DECIMAL'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='INT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='NUMERIC'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='SMALLINT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='MONEY'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='TINYINT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='SMALLMONEY'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='BIT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='FLOAT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='REAL'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='DATETIME'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='SMALLDATETIME'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='DATETIME2'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='DATETIMEOFFSET'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='DATE'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='TIME'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='CHAR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='TEXT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='SYSNAME'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='NCHAR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='NTEXT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='NVARCHAR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='NVARCHAR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='BINARY'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='IMAGE'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='VARBINARY'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='VARBINARY'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='CURSOR'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='TIMESTAMP'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='SQL_VARIANT'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='UNIQUEIDENTIFIER'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='TABLE'
    )
    THEN

    RETURN false;

  END IF;

  IF
    (
      baseTypeUpper='XML'
    )
    THEN

    RETURN false;

  END IF;

  RETURN returnValue;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'baseTypeIsNotHandled: ['  || errMsg ||  '] nSvrId:baseTypeIn = ' || nSvrId || ': ' || baseTypeIn, NULL, NULL, nSvrId);
END baseTypeIsNotHandled;

FUNCTION ProcessForUserDefinedDatatype
(
   default_defn VARCHAR2
)
 RETURN VARCHAR2 
IS
   hasAs NUMBER;
   default_txt VARCHAR2(1000);
   errMsg VARCHAR2(4000) := NULL;
BEGIN   
   IF default_defn IS NULL THEN
      RETURN default_defn;
   ELSE
      default_txt := default_defn;
      hasAs := INSTR(LOWER(default_defn), ' as ');
      IF hasAs > 0 THEN
         default_txt := SUBSTR(default_defn, hasAS + 4);
      END IF;
   END IF;
   RETURN default_txt;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'ProcessForUserDefinedDatatype: ['  || errMsg ||  '] nSvrId:default_defn = ' || nSvrId || ': '|| default_defn, NULL, NULL, nSvrId);
END ProcessForUserDefinedDatatype;

PROCEDURE CaptureColumns
IS
  functionreturn BOOLEAN := false;
  curcolint      NUMBER
  (
    38,0
  )
  ;

  CURSOR curTab
  IS

    SELECT objid_gen,
      object_id,
      DBID_GEN_FK
    FROM stage_ss2k5_tables
    WHERE svrid_fk = nSvrId
    AND NAME NOT IN ('sysdiagrams');

  CURSOR curCol (thisTab NUMBER)
  IS

    SELECT r_c1.colid_gen mycolid,
      r_c1.id_gen_fk myid,
      r_c1."NAME" myname,
      base_type.base_name mybasename,
      CASE
        WHEN ( ( r_c1."PRECISION" = 0 )
        OR ( r_c1."PRECISION"    IS NULL ) )
        THEN SS2K5AllPlatform.getPrecision(base_type.base_name,r_c1. "MAX_LENGTH",r_c1."SCALE")
        ELSE SS2K5AllPlatform.getPrecision(base_type.base_name,r_c1. "PRECISION",r_c1."SCALE")
      END myprecision,
      SS2K5AllPlatform.getnewscale(base_type.base_name,
      CASE
        WHEN ( ( r_c1."PRECISION" = 0 )
        OR ( r_c1."PRECISION"    IS NULL ) )
        THEN r_c1."MAX_LENGTH"
        ELSE r_c1."PRECISION"
      END,r_c1."SCALE")
      --r_c1."SCALE"
      myscale ,
      CASE
        WHEN r_c1.is_Nullable=1
        THEN 'Y'
        ELSE 'N'
      END mynullable,
      dc.definition mydefinition,
      p.value comments
    FROM stage_ss2k5_columns r_c1 ,
      stage_ss2k5_tables tabst,
      (SELECT
        (SELECT tt.name
        FROM stage_ss2k5_types tt
        WHERE tt.user_type_id = t.system_type_id
        AND tt.svrid_fk       = nSvrId
        AND tt.dbid_gen_fk    =t.dbid_gen_fk
        ) base_name,
      t.user_type_id t_user_type_id,
      t.dbid_gen_fk t_dbid_gen_fk
    FROM stage_ss2k5_types t
    WHERE t.svrid_fk = nSvrId
      ) base_type,
      (SELECT *
      FROM stage_ss2k5_dt_constraints x
      WHERE x.object_id != 0
      AND x.object_id   IS NOT NULL
      AND x.svrid_fk     =nSvrId
      ) dc,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE tabst.objid_gen        = r_c1.id_gen_fk
    AND base_type.t_user_type_id = r_c1.user_type_id
      -- i.e. just table clolumns
      -- r_c1.id_gen_fk is not null --I think there must be some system tables
      -- column in here which are not loaded - so they are null and void. I may
      -- be wrong actually they may be views for example.!!!
    AND dc.object_id (+)        = r_c1.DEFAULT_OBJECT_ID
    AND ( ( dc.dbid_gen_fk      =r_c1.dbid_gen_fk )
    OR ( dc.dbid_gen_fk        IS NULL ) )
    AND tabst.svrid_fk          = nSvrId
    AND tabst.dbid_gen_fk       =r_c1.dbid_gen_fk
    AND base_type.t_dbid_gen_fk =r_c1.dbid_gen_fk
    AND r_c1.svrid_fk           = nSvrId -- want to do it for all database but
      -- join back to this database for secondary tables do not want  cross
      -- database ids.
    AND r_c1.id_gen_fk = thistab
    AND p.class(+)     = 1
      /* object or column */
    AND p.svrid_fk(+)    = nSvrId
    AND p.MAJOR_ID(+)    = r_c1.object_id
    AND p.MINOR_ID(+)    = r_c1.column_id
    AND p.dbid_gen_fk(+) = r_c1.dbid_gen_fk
    ORDER BY r_c1.column_id;
    default_defn VARCHAR2(2000);
    errMsg VARCHAR2(4000) := NULL;
  BEGIN
    --SetStatus('Capturing Columns');
    FOR r_c1 IN curTab
    LOOP
      curcolint := 0;   
      FOR r_c2 IN curcol(r_c1.objid_gen)
      LOOP
        curcolint := curcolint + 1;
        -- assuming 1 to 1 correspondance between suid and uid within a
        -- database
        default_defn := ProcessForUserDefinedDatatype(r_c2.mydefinition);
        functionreturn:=baseTypeIsNotHandled(r_c2.mybasename);

        IF (functionreturn = true) THEN
          BEGIN
          --TODO write to log that basename is not valid - might be a CLR so punting to varbinary(8000)
          INSERT
          INTO MD_COLUMNS
            (
              "ID",
              table_id_fk,
              column_name,
              column_order,
              column_type,
              "PRECISION",
              "SCALE",
              nullable,
              default_value,
              comments
            )
            VALUES
            (
              r_c2.mycolid,
              r_c2.myid,
              r_c2.myname,
              curcolint,
              'varbinary',
              8000,
              NULL,
              'Y',
              default_defn,
              r_c2.comments
            );
        EXCEPTION
          WHEN OTHERS THEN
             errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
             LogInfo(NULL, sev_err, 'CaptureColumns:punting type to varbinary ['  || errMsg ||  
             ']   nSvrId:table_id_fk,column_name:column_order =' || nSvrId||': '||r_c2.myid || ': ' || r_c2.myname || ': ' ||curcolint, NULL, NULL, nSvrId);          
        END;
        ELSE
          BEGIN
          INSERT
          INTO MD_COLUMNS
            (
              "ID",
              table_id_fk,
              column_name,
              column_order,
              column_type,
              "PRECISION",
              "SCALE",
              nullable,
              default_value,
              comments
            )
            VALUES
            (
              r_c2.mycolid,
              r_c2.myid,
              r_c2.myname,
              curcolint,
              r_c2.mybasename,
              r_c2.myprecision,
              r_c2.myscale,
              r_c2.mynullable,
              default_defn,
              r_c2.comments
            );
                EXCEPTION
          WHEN OTHERS THEN
             errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
             LogInfo(NULL, sev_err, 'CaptureColumns:inserting column ['  || errMsg ||  
             ']   nSvrId:table_id_fk:column_name:column_order =' || nSvrId||': '||r_c2.myid || ': ' || r_c2.myname || ': ' ||curcolint, NULL, NULL, nSvrId);          
           END;
        END IF;

      END LOOP; -- column loop

    END LOOP; -- tables loop
    BEGIN
    INSERT
    INTO MD_ADDITIONAL_PROPERTIES
      (
        connection_id_fk,
        ref_id_fk,
        ref_type,
        property_order,
        prop_key,
        "VALUE"
      )
      (SELECT c.svrid_fk,
          c.colid_gen,
          'MD_COLUMNS' ,
          NULL,
          NewID,
          'Y'
        FROM stage_ss2k5_columns c,
          stage_ss2k5_dt_constraints dc
        WHERE c.svrid_fk                             = nSvrId
        AND dc.svrid_fk                              = nSvrId
        AND dc.dbid_gen_fk                           = c.dbid_gen_fk
        AND c.DEFAULT_OBJECT_ID                      = dc.object_id
        AND ss2k5allplatform.amINewid(dc.definition) = 1
        AND EXISTS
          ( SELECT 1 FROM md_tables WHERE id=c.id_gen_fk
          )
      );

    -- handle identity columns
    -- not sure if I should have an is not null on these properties.
    INSERT
    INTO MD_ADDITIONAL_PROPERTIES
      (
        connection_id_fk,
        ref_id_fk,
        ref_type,
        property_order,
        prop_key,
        "VALUE"
      )
      (--note this is broken in 2000 to 2005 upgrades that have not been
        -- rebuilt in some was -> becomes ordinary int column may need
        -- is_identity flag
        SELECT c.svrid_fk,
          c.colid_gen,
          'MD_COLUMNS' ,
          NULL,
          'SEEDVALUE',
          seed_value
        FROM stage_ss2k5_columns c,
          stage_ss2k5_identity_columns i ,
          stage_ss2k5_tables tabst
        WHERE tabst.svrid_fk = nSvrId
        AND tabst.objid_gen  = c.id_gen_fk
        AND c.id_gen_fk     IS NOT NULL
        AND c.id_gen_fk     != 0
        AND c.svrid_fk       = nSvrId
        AND i.svrid_fk       = nSvrId
        AND c.dbid_gen_fk    = i.dbid_gen_fk
        AND i.column_id      = c.column_id
        AND i.object_id      = c.object_id
        AND seed_value      IS NOT NULL
        AND EXISTS
          ( SELECT 1 FROM md_tables t WHERE t.id=c.id_gen_fk
          )
      );

    INSERT
    INTO MD_ADDITIONAL_PROPERTIES
      (
        connection_id_fk,
        ref_id_fk,
        ref_type,
        property_order,
        prop_key,
        "VALUE"
      )
      (--note this is broken in 2000 to 2005 upgrades that have not been
        -- rebuilt in some was -> becomes ordinary int column may need
        -- is_identity flag
        SELECT c.svrid_fk,
          c.colid_gen,
          'MD_COLUMNS' ,
          NULL,
          'INCREMENT',
          increment_value
        FROM stage_ss2k5_columns c,
          stage_ss2k5_identity_columns i ,
          stage_ss2k5_tables tabst
        WHERE tabst.svrid_fk = nSvrId
        AND tabst.objid_gen  = c.id_gen_fk
        AND c.id_gen_fk     IS NOT NULL
        AND c.id_gen_fk     != 0
        AND c.svrid_fk       = nSvrId
        AND i.svrid_fk       = nSvrId
        AND c.dbid_gen_fk    = i.dbid_gen_fk
        AND i.column_id      = c.column_id
        AND i.object_id      = c.object_id
        AND seed_value      IS NOT NULL
        AND increment_value IS NOT NULL
        AND EXISTS
          ( SELECT 1 FROM md_tables t WHERE t.id=c.id_gen_fk
          )
      );

    INSERT
    INTO MD_ADDITIONAL_PROPERTIES
      (
        connection_id_fk,
        ref_id_fk,
        ref_type,
        property_order,
        prop_key,
        "VALUE"
      )
      (--note this is broken in 2000 to 2005 upgrades that have not been
        -- rebuilt in some was -> becomes ordinary int column may need
        -- is_identity flag
        SELECT c.svrid_fk,
          c.colid_gen,
          'MD_COLUMNS' ,
          NULL,
          'LASTVALUE',
          last_value
        FROM stage_ss2k5_columns c,
          stage_ss2k5_identity_columns i ,
          stage_ss2k5_tables tabst
        WHERE tabst.svrid_fk = nSvrId
        AND tabst.objid_gen  = c.id_gen_fk
        AND c.id_gen_fk     IS NOT NULL
        AND c.id_gen_fk     != 0
        AND c.svrid_fk       = nSvrId
        AND i.svrid_fk       = nSvrId
        AND c.dbid_gen_fk    = i.dbid_gen_fk
        AND i.column_id      = c.column_id
        AND i.object_id      = c.object_id
        AND seed_value      IS NOT NULL
        AND last_value      IS NOT NULL
        AND EXISTS
          ( SELECT 1 FROM md_tables t WHERE t.id=c.id_gen_fk
          )
      );
        EXCEPTION
        WHEN OTHERS THEN
             errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
             LogInfo(NULL, sev_err, 'CaptureColumns:Group insert of additional properties for identity ['  || errMsg ||  
             ']   nSvrId: ' || nSvrId, NULL, NULL, nSvrId);          
        END;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureColumns: Unable to Open master cursor:['  || errMsg ||  '] nSvrId: ' || nSvrId,  NULL, NULL, nSvrId);          
END CaptureColumns;

PROCEDURE CapturePrimaryAndUniqueKeys
IS
  curorder NUMBER
  (
    38,0
  )
  ;

  CURSOR curConst
  IS

    SELECT a.objid_gen myid,
      TRIM(a.name) myname,
      CASE
        WHEN a.type = 'UQ'
        THEN 'UNIQUE'
        ELSE 'PK'
      END mytype,
      t.objid_gen mytable,
      'MSTSQL' mylanguage,
      p.VALUE comments
    FROM STAGE_SS2K5_objects a,
      stage_ss2k5_objects a2,
      stage_ss2k5_tables t,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE ( a.type    ='PK'
    OR a.type         ='UQ' )
    AND a2.type      IN ('U', 'U ')
    AND a2.object_id  = a.parent_object_id
    AND t.object_id   = a2.object_id
    AND a.svrid_fk    = nSvrId
    AND a2.svrid_fk   = nSvrId
    AND t.svrid_fk    = nSvrId
    AND t.dbid_gen_fk = a2.dbid_gen_fk
    AND a.dbid_gen_fk = a2.dbid_gen_fk
    AND t.NAME NOT IN ('sysdiagrams')
    AND EXISTS
      ( SELECT 1 FROM md_tables WHERE id = t.objid_gen
      ) --might be a sys table for example
  AND p.class(+) = 1
    /* object or column */
  AND p.svrid_fk(+)    = nSvrId
  AND p.MAJOR_ID(+)    = a.object_id
  AND p.MINOR_ID(+)    = 0
  AND p.dbid_gen_fk(+) = a.dbid_gen_fk ;

  CURSOR curConstDetails(thisConst NUMBER)
  IS

    SELECT d.colid_gen myid
    FROM STAGE_SS2K5_OBJECTS a2,
      STAGE_SS2K5_OBJECTS a,
      STAGE_SS2K5_INDEXES b,
      STAGE_SS2K5_INDEX_COLUMNS c,
      STAGE_SS2K5_COLUMNS d,
      STAGE_SS2K5_OBJECTS e
    WHERE ( a.objid_gen = thisConst )
    AND ( a.type        ='PK'
    OR a.type           ='UQ' )
    AND a2.object_id    = a.parent_object_id
    AND a.name          =b.name
    AND c.object_id     = b.object_id
    AND c.index_id      = b.index_id
    AND b.object_id     =a.parent_object_id
    AND d.object_id     = c.object_id
    AND d.column_id     = c.column_id
    AND e.object_id     = a.object_id
    AND a2.type        IN ('U', 'U ')
    AND a.svrid_fk      = nSvrId
    AND b.svrid_fk      = nSvrId
    AND c.svrid_fk      = nSvrId
    AND d.svrid_fk      = nSvrId
    AND e.svrid_fk      = nSvrId
    AND a.dbid_gen_fk   = a2.dbid_gen_fk
    AND b.dbid_gen_fk   = a2.dbid_gen_fk
    AND c.dbid_gen_fk   = a2.dbid_gen_fk
    AND d.dbid_gen_fk   = a2.dbid_gen_fk
    AND e.dbid_gen_fk   = a2.dbid_gen_fk
    AND EXISTS
      ( SELECT 1 FROM md_tables WHERE id = d.id_gen_fk
      ) --might be a sys table for example
  ORDER BY c.column_id;
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  --create the constraints
  --SetStatus('Capturing Primary and Unique keys');
  FOR r_c1 IN curConst
  LOOP
    BEGIN
    INSERT
    INTO MD_CONSTRAINTS
      (
        ID,
        "NAME",
        constraint_type,
        table_id_fk,
        "LANGUAGE",
        comments
      )
      VALUES
      (
        r_c1.myid,
        r_c1.myname,
        r_c1.mytype,
        r_c1.mytable,
        r_c1.mylanguage,
        r_c1.comments
      );

    curorder :=0;

    FOR r_c2 IN curConstDetails
    (
      r_c1.myid
    )
    LOOP
      curorder := curorder + 1;

      --fill in the columns

      INSERT
      INTO MD_CONSTRAINT_DETAILS
        (
          constraint_id_fk,
          column_id_fk,
          detail_order
        )
        VALUES
        (
          r_c1.myid,
          r_c2.myid,
          curorder
        );

    END LOOP;--details
    EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CapturePrimaryAndUniqueKeys: single constraint faied ['  || errMsg ||  
        ']         nSvrId:NAME:constraint_type:table_id_fk  =' || nSvrId || ': '|| r_c1.myname ||': '|| r_c1.mytype||': '|| r_c1.mytable, NULL, NULL, nSvrId);          
    END;
  END LOOP; --constraints
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CapturePrimaryAndUniqueKeys: main outer loop failure ['  || errMsg ||  
        '] nSvrId = '|| nSvrId|| ': ', NULL, NULL, nSvrId);          
END CapturePrimaryAndUniqueKeys;

PROCEDURE CaptureForeignKeys
IS
  curorder NUMBER
  (
    38,0
  )
  ;

  CURSOR curConst
  IS

    SELECT fk.object_id myid,
      o.objid_gen mdid,
      p.value comments,
      fk.dbid_gen_fk theDatabaseGen
    FROM STAGE_SS2K5_FN_KEYS fk,
      STAGE_SS2K5_TABLES lt,
      STAGE_SS2K5_OBJECTS o,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE o.parent_object_id!=0
    AND o.parent_object_id   =lt.object_id
    AND fk.svrid_fk          = nSvrId
    AND lt.svrid_fk          = nSvrId
    AND o.svrid_fk           = nSvrId
    AND lt.dbid_gen_fk       = fk.dbid_gen_fk
    AND o.dbid_gen_fk        = fk.dbid_gen_fk
    AND o.object_id          = fk.object_id
    AND lt.NAME NOT IN ('sysdiagrams')
    AND EXISTS
      (SELECT 1 FROM md_tables mdt WHERE mdt.id=lt.objid_gen
      )
    --need to put in the server and database checks so there are no false positives
  AND p.class(+) = 1
    /* object or column */
  AND p.svrid_fk(+)       = nSvrId
  AND p.MAJOR_ID(+)    = fk.object_id
  AND p.MINOR_ID(+)    = 0
  AND p.dbid_gen_fk(+) = fk.dbid_gen_fk ;

  CURSOR curConstDetails(constId NUMBER, thedb NUMBER)
  IS

    SELECT
      (SELECT COUNT(1) FROM md_tables mdt2 WHERE mdt2.id=rt.objid_gen
      ) oneIfRtCaptured,
    fk.name fk_name,
    fkc.constraint_object_id fkc_constraint_object_id,
    lc.name lc_name,
    (SELECT s.name
    FROM STAGE_SS2K5_SCHEMAS s
    WHERE s.schema_id = rt.schema_id
    AND s.svrid_fk    = nSvrId
    AND s.dbid_gen_fk = fk.dbid_gen_fk
    AND s.dbid_gen_fk = thedb
    ) schemaname,
    rt.name reftablename,
    rc.name refcolumnname,
    fkc.constraint_column_id fkc_constraint_column_id ,
    lc.colid_gen lc_colid_gen,
    rc.colid_gen rc_colid_gen,
    lt.objid_gen lt_objid_gen,
    rt.objid_gen rt_objid_gen
  FROM STAGE_SS2K5_FN_KEYS fk,
    STAGE_SS2K5_FN_KEY_COLUMNS fkc,
    STAGE_SS2K5_COLUMNS lc,
    STAGE_SS2K5_COLUMNS rc,
    STAGE_SS2K5_TABLES rt,
    STAGE_SS2K5_TABLES lt
  WHERE fk.object_id           = constId
  AND fk.object_id             = fkc.constraint_object_id
  AND lc.object_id             = fkc.parent_object_id
  AND lc.column_id             = fkc.parent_column_id
  AND rc.object_id             = fkc.referenced_object_id
  AND rc.column_id             = fkc.referenced_column_id
  AND fkc.referenced_object_id = rt.object_id
  AND fkc.parent_object_id     = lt.object_id
  AND fk.svrid_fk              = nSvrId
  AND fkc.svrid_fk             = nSvrId
  AND lc.svrid_fk              = nSvrId
  AND rc.svrid_fk              = nSvrId
  AND rt.svrid_fk              = nSvrId
  AND lt.svrid_fk              = nSvrId
  AND fkc.dbid_gen_fk          = fk.dbid_gen_fk
  AND lc.dbid_gen_fk           = fk.dbid_gen_fk
  AND rc.dbid_gen_fk           = fk.dbid_gen_fk
  AND rt.dbid_gen_fk           = fk.dbid_gen_fk
  AND lt.dbid_gen_fk           = fk.dbid_gen_fk
  AND fk.dbid_gen_fk           = thedb
  AND EXISTS
    (SELECT 1 FROM md_tables mdt WHERE mdt.id=lt.objid_gen
    )
  ORDER BY fkc.constraint_column_id ;
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  --('Capturing Foreign Keys');
  --use commit/rollback to commit or back out of a dodgy foreign key constraint
  --create the constraints

  FOR r_c1 IN curConst
  LOOP
    BEGIN
    COMMIT;
    curorder :=0;
    FOR r_c2 IN curConstDetails ( r_c1.myid , r_c1.theDatabaseGen)
    LOOP
      --rc2 contains: oneIfRtCaptured, fk_name, fkc_constraint_object_id, lc_name,
      --schemaname, reftablename,refcolumnname, fkc_constraint_column_id,
      --lc_colid_gen, rc_colid_gen, lt_objid_gen, rt_objid_gen
      --looks like I have selected too many columns
      curorder := curorder + 1;
      --fill in the columns

      --can loop back on itself for a non self referencial example on a different column.
      IF ((r_c2.oneIfRtCaptured!=1)) THEN
        DBMS_OUTPUT.put_line('Skipping foreign key that references table not in repository');
        ROLLBACK;
        EXIT;

      END IF;

      IF (curorder=1) THEN
        INSERT
        INTO MD_CONSTRAINTS
          (
            ID,
            "NAME",
            constraint_type,
            table_id_fk,
            reftable_id_fk,
            "LANGUAGE",
            comments
          )
          VALUES
          (
            r_c1.mdid,
            r_c2.fk_name,
            'FOREIGN KEY',
            r_c2.lt_objid_gen,
            r_c2.rt_objid_gen,
            'MSTSQL',
            r_c1.comments
          );

      END IF;

      INSERT
      INTO MD_CONSTRAINT_DETAILS
        (
          constraint_id_fk,
          column_id_fk,
          detail_order
        )
        VALUES
        (
          r_c1.mdid,
          r_c2.lc_colid_gen,
          curorder
        );

      INSERT
      INTO MD_CONSTRAINT_DETAILS
        (
          ref_flag,
          constraint_id_fk,
          column_id_fk,
          detail_order
        )
        VALUES
        (
          'Y',
          r_c1.mdid,
          r_c2.rc_colid_gen,
          curorder
        );
      --rollback on error
      COMMIT;
      --need to commit correct foreign keys before loopback reference wipes the insert.
    END LOOP;--details
    COMMIT;
    EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureForeignKeys:Single constraint failure ['  || errMsg ||  
        ']  nSvrId:type:sourceObjectId =' || nSvrId || ': FOREIGN KEY: ' || r_c1.myid, NULL, NULL, nSvrId);          
    END;
  END LOOP; --constraints
EXCEPTION
  WHEN OTHERS THEN
     errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
     LogInfo(NULL, sev_err, 'CaptureForeignKeys:Outer loop failure ['  || errMsg ||  
     ']  nSvrId = '||nSvrId, NULL, NULL, nSvrId);
END CaptureForeignKeys;

PROCEDURE CaptureTableLevelCkConstraints
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  --SetStatus('Capturing Table Level Check Constraints');
  INSERT
  INTO md_constraints
    (
      name,
      constraint_type,
      table_id_fk,
      constraint_text,
      LANGUAGE,
      comments
    )
    (SELECT c."NAME",
        'CHECK',
        lt.objid_gen,
        d."DEFINITION" ,
        'MSTSQL',
        p.value comments
      FROM STAGE_SS2K5_OBJECTS a,
        STAGE_SS2K5_OBJECTS a2,
        STAGE_SS2K5_OBJECTS c,
        STAGE_SS2K5_CHECK_CONSTRAINTS d,
        STAGE_SS2K5_TABLES lt,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE a."TYPE"           ='C'
      AND a.object_id          = c.object_id
      AND d."OBJECT_ID"        = a."OBJECT_ID"
      AND d."PARENT_COLUMN_ID" = 0
      AND a.parent_object_id   = a2.object_id
      AND lt.object_id         = a2.object_id
      AND a.svrid_fk           = nSvrId
      AND a2.svrid_fk          = nSvrId
      AND c.svrid_fk           = nSvrId
      AND d.svrid_fk           = nSvrId
      AND lt.svrid_fk          = nSvrId
      AND a2.dbid_gen_fk       = a.dbid_gen_fk
      AND c.dbid_gen_fk        = a.dbid_gen_fk
      AND d.dbid_gen_fk        = a.dbid_gen_fk
      AND lt.dbid_gen_fk       = a.dbid_gen_fk
      AND lt.NAME NOT IN ('sysdiagrams')
      AND EXISTS
        (SELECT 1 FROM md_tables mdt WHERE mdt.id=lt.objid_gen
        )
      AND p.class(+) = 1
        /* object or column */
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.object_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    );
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureTableLevelCkConstraints Failed: ['  || errMsg ||  '] nSvrId =' || nSvrId ,NULL, NULL, nSvrId);
END CaptureTableLevelCkConstraints;

PROCEDURE CaptureColLevelCkConstraints
IS
  errMsg VARCHAR2(4000) := NULL;
  curconstid NUMBER
  (
    38,0
  )
  ;

  CURSOR curConst
  IS

    SELECT c."NAME" myname,
      'CHECK' mycheck,
      lt.objid_gen mytable,
      d."DEFINITION" mydefinition,
      'MSTSQL' mylanguage,
      col.colid_gen mycolid,
      p.value comments
    FROM STAGE_SS2K5_OBJECTS a,
      STAGE_SS2K5_OBJECTS a2,
      STAGE_SS2K5_OBJECTS c,
      STAGE_SS2K5_CHECK_CONSTRAINTS d,
      STAGE_SS2K5_TABLES lt,
      STAGE_SS2K5_COLUMNS col,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE a."TYPE"            ='C'
    AND a.object_id           = c.object_id
    AND d."OBJECT_ID"         = a."OBJECT_ID"
    AND d."PARENT_COLUMN_ID" <> 0
    AND a.parent_object_id    = a2.object_id
    AND lt.object_id          = a2.object_id
    AND a.svrid_fk            = nSvrId
    AND col.object_id         = lt.object_id
    AND d."PARENT_COLUMN_ID"  = col.column_id
    AND col.svrid_fk          = nSvrId
    AND a2.svrid_fk           = nSvrId
    AND c.svrid_fk            = nSvrId
    AND d.svrid_fk            = nSvrId
    AND lt.svrid_fk           = nSvrId
    AND col.dbid_gen_fk       = a.dbid_gen_fk
    AND a2.dbid_gen_fk        = a.dbid_gen_fk
    AND c.dbid_gen_fk         = a.dbid_gen_fk
    AND d.dbid_gen_fk         = a.dbid_gen_fk
    AND lt.dbid_gen_fk        = a.dbid_gen_fk
    AND lt.NAME NOT IN ('sysdiagrams')
    AND EXISTS
      (SELECT 1 FROM md_tables mdt WHERE mdt.id=lt.objid_gen
      )
  AND p.class(+) = 1
    /* object or column */
  AND p.svrid_fk(+)    = nSvrId
  AND p.MAJOR_ID(+)    = a.object_id
  AND p.MINOR_ID(+)    = 0
  AND p.dbid_gen_fk(+) = a.dbid_gen_fk ;
BEGIN
  --SetStatus('Capturing Column Level Check Constraints');
  FOR r_c1 IN curConst
  LOOP
    BEGIN
    INSERT
    INTO md_constraints
      (
        name,
        constraint_type,
        table_id_fk,
        LANGUAGE,
        comments
      )
      VALUES
      (
        r_c1.myname,
        r_c1.mycheck,
        r_c1.mytable,
        r_c1.mylanguage,
        r_c1.comments
      )
    RETURNING id
    INTO curConstid;

    INSERT
    INTO md_constraint_details
      (
        constraint_id_fk,
        column_id_fk,
        detail_order,
        constraint_text
      )
      VALUES
      (
        curConstid,
        r_c1.mycolid,
        1,
        r_c1.mydefinition
      );
      EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureColLevelCkConstraints Failed: single constraint failure['  || errMsg ||  
        ']   nSvrId:name:constraint_type:table_id_fk = '
        ||nSvrId|| ': ' ||r_c1.myname|| ': ' ||
        r_c1.mycheck|| ': ' ||
        r_c1.mytable, NULL, NULL, nSvrId);          
      END;
  END LOOP;
EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureColLevelCkConstraints Failed: outer loop failure['  || errMsg ||  
        ']  nSvrId = '|| nSvrId, NULL, NULL, nSvrId);          
END CaptureColLevelCkConstraints;

PROCEDURE CaptureRules
IS
  errMsg VARCHAR2(4000) := NULL;
  curconstid NUMBER
  (
    38,0
  )
  ;

  CURSOR curConst
  IS

    SELECT a.svrid_fk mysvrid,
      t.objid_gen mytableid,
      a."NAME" mytablename,
      b."NAME" mycolumnname,
      b.colid_gen mycolid,
      b."RULE_OBJECT_ID" myruleid,
      m.definition mymoduledefinition,
      p.value comments
    FROM STAGE_SS2K5_OBJECTS a,
      STAGE_SS2K5_COLUMNS b,
      STAGE_SS2K5_OBJECTS c ,
      STAGE_SS2K5_TABLES t,
      STAGE_ss2k5_sql_modules m,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE a."TYPE"         = 'U'
    AND b."OBJECT_ID"      = a."OBJECT_ID"
    AND c.object_id        = a."OBJECT_ID"
    AND b."RULE_OBJECT_ID" > 0
    AND m.object_id        =b.rule_object_id
    AND t.object_id        = a.object_id
    AND a.svrid_fk         = nSvrId
    AND t.svrid_fk         = nSvrId
    AND b.svrid_fk         = nSvrId
    AND c.svrid_fk         = nSvrId
    AND m.svrid_fk         = nSvrId
    AND a.dbid_gen_fk      = b.dbid_gen_fk
    AND c.dbid_gen_fk      = a.dbid_gen_fk
    AND t.dbid_gen_fk      = a.dbid_gen_fk
    AND m.dbid_gen_fk      = a.dbid_gen_fk
    AND t.NAME NOT IN ('sysdiagrams')
    AND EXISTS
      (SELECT 1 FROM md_tables mdt WHERE mdt.id=t.objid_gen
      )
  AND p.class(+)       = 1
  AND p.svrid_fk(+)    = nSvrId
  AND p.MAJOR_ID(+)    = a.object_id
  AND p.MINOR_ID(+)    = 0
  AND p.dbid_gen_fk(+) = a.dbid_gen_fk ;
BEGIN
  --SetStatus('Capturing Roles');
  FOR r_c1 IN curConst
  LOOP
    BEGIN
    INSERT
    INTO md_constraints
      (
        name,
        constraint_type,
        table_id_fk,
        LANGUAGE,
        comments
      )
      VALUES
      (
        'rul_'
        || r_c1.mytablename
        || '_'
        || r_c1.mycolumnname,
        'CHECK',
        r_c1.mytableid,
        'MSTSQL',
        r_c1.comments
      )
    RETURNING id
    INTO curConstid;

    INSERT
    INTO MD_ADDITIONAL_PROPERTIES
      (
        connection_id_fk,
        ref_id_fk,
        ref_type,
        property_order,
        prop_key,
        "VALUE"
      )
      VALUES
      (
        r_c1.mysvrid,
        curConstid,
        'MD_CONSTRAINTS',
        1,
        'TYPE',
        'RULE'
      );

    /*TODO check additional properties againt a proper capture */

    INSERT
    INTO md_constraint_details
      (
        constraint_id_fk,
        column_id_fk,
        detail_order,
        constraint_text
      )
      VALUES
      (
        curConstid,
        r_c1.mycolid,
        1,
        r_c1.mymoduledefinition
      );
   EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureRules Failed: single rule failure ['  || errMsg ||  ']         nSvrid:name:constraint_type:table_id_fk = '
        || nSvrId ||': '||
        'rul_'
        || r_c1.mytablename
        || '_'
        || r_c1.mycolumnname||': '||
        'CHECK'||': '||
        r_c1.mytableid, NULL, NULL, nSvrId);          
   END;
  END LOOP;
EXCEPTION
  WHEN OTHERS THEN
     errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
     LogInfo(NULL, sev_err, 'CaptureRules Failed: outer loop failure ['  || errMsg ||  ']         nSvrid = '
     || nSvrId, NULL, NULL, nSvrId);          
END CaptureRules;

PROCEDURE CaptureConstraints
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  --SetStatus('Capturing Constraints');
  CapturePrimaryAndUniqueKeys;
  CaptureForeignKeys;
  CaptureTableLevelCkConstraints;
  CaptureColLevelCkConstraints;
  CaptureRules;
EXCEPTION
  WHEN OTHERS THEN
     errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
     LogInfo(NULL, sev_err, 'CaptureConstraints Failed: ['  || errMsg ||  ']         nSvrid = '
     || nSvrId, NULL, NULL, nSvrId); 
END CaptureConstraints;

PROCEDURE CaptureIndexes
IS
  errMsg VARCHAR2(4000) := NULL;
  curtableid NUMBER
  (
    38,0
  )
  ;
  curindexid NUMBER
  (
    38,0
  )
  ;
  detailCounter NUMBER
  (
    38,0
  )
  ;
  nIdxDetailId NUMBER
  (
    38,0
  )
  ;
  vIdxtype VARCHAR2
  (
    100
  )
  ;
  vc_Unique CONSTANT VARCHAR2
  (
    100
  )
  := 'unique';
  vc_IndexUnique CONSTANT VARCHAR2
  (
    100
  )
  := 'UNIQUE';
  vc_IndexNonUnique CONSTANT VARCHAR2
  (
    100
  )
  := 'NON_UNIQUE';

  CURSOR getIndex
  IS

    SELECT i.object_id_gen
      /* should really be named different - as object_id is the table id */
      ,
      i."OBJECT_ID" mytableid,
      i."INDEX_ID" myindexid,
      i."NAME" myindexname,
      i."IS_UNIQUE" myisunique,
      o."NAME" mytablename,
      lt.objid_gen mygentableid,
      P.Value Comments,
      i.dbid_gen_fk dbidgenfk
    FROM STAGE_SS2K5_INDEXES i,
      STAGE_SS2K5_OBJECTS o,
      STAGE_SS2K5_TABLES lt,
      STAGE_SS2K5_SYSPROPERTIES p
    WHERE o.type     IN ('U', 'V', 'U ', 'V ')
    AND o."OBJECT_ID" = i."OBJECT_ID"
    AND i.name NOT LIKE '_WA_Sys%'
    AND i.is_primary_key = 0
    AND EXISTS
      (SELECT 1 FROM md_tables mdt WHERE mdt.id=lt.objid_gen
      )
  AND lt.object_id     = o.object_id
  AND i.svrid_fk       = nSvrId
  AND o.svrid_fk       = nSvrId
  AND lt.svrid_fk      = nSvrId
  AND i.dbid_gen_fk    = o.dbid_gen_fk
  AND o.dbid_gen_fk    = lt.dbid_gen_fk
  AND p.class(+)       = 7
  AND p.svrid_fk(+)    = nSvrId
  AND p.MAJOR_ID(+)    = i.object_id
  AND p.MINOR_ID(+)    = i.index_id
  AND p.dbid_gen_fk(+) = i.dbid_gen_fk 
  AND lt.NAME NOT IN ('sysdiagrams');

  CURSOR getDetails(thedatabaseid NUMBER,thetableid NUMBER, theindexid NUMBER)
  IS

    SELECT a.index_column_id,
      b.name,
      a.is_descending_key is_descending_key,
      B.COLID_GEN
    FROM STAGE_SS2K5_INDEX_COLUMNS a ,
      STAGE_SS2K5_COLUMNS b
    WHERE a.index_id = theindexid
    AND b.column_id  = a.column_id
    AND b.object_id  = a.object_id
    AND a.object_id  = thetableid
    AND
      -- tableid exists in md_tables checked in initial query
      a.svrid_fk      = nSvrId
    AND b.svrid_fk    = nSvrId
    And A.Dbid_Gen_Fk = B.Dbid_Gen_Fk
    and a.dbid_gen_fk=thedatabaseid;
BEGIN
  --SetStatus('Capturing Indexes');
  FOR r_c1 IN getIndex
  LOOP
    BEGIN
    --create index

    IF (r_c1.myisunique = 1) THEN
      vIdxType         :=vc_IndexUnique;

    ELSE
      vIdxType:=vc_IndexNonUnique;

    END IF;

    INSERT
    INTO MD_INDEXES
      (
        "ID",
        index_type,
        table_id_fk,
        index_name,
        comments
      )
      VALUES
      (
        r_c1.object_id_gen ,
        vIdxType,
        r_c1.mygentableid,
        r_c1.myindexname,
        r_c1.comments
      );

    detailCounter := 0;

    FOR r_c2 IN getDetails
    (
      r_c1.dbidgenfk,r_c1.mytableid, r_c1.myindexid
    )
    LOOP
      detailcounter := detailcounter + 1;
      --create index details

      INSERT
      INTO MD_INDEX_DETAILS
        (
          index_id_fk,
          column_id_fk,
          detail_order
        )
        VALUES
        (
          r_c1.object_id_gen,
          r_c2.colid_gen,
          detailCounter
        )
      RETURNING "ID"
      INTO nIdxDetailId;

      IF
        (
          r_c2.is_descending_key = 1
        )
        THEN

        INSERT
        INTO MD_ADDITIONAL_PROPERTIES
          (
            connection_id_fk,
            ref_id_fk,
            ref_type,
            property_order,
            prop_key,
            "VALUE"
          )
          VALUES
          (
            nSvrId,
            nIdxDetailId,
            'MD_INDEX_DETAIL',
            detailCounter,
            'IS_INDEXDETAIL_DESCENDING',
            'Y'
          );

      END IF;

    END LOOP;
    EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureIndexes Failed: Single index failure ['  || errMsg ||  '] nSvrId:myindexname = ' || nSvrId ||': '||r_c1.myindexname, NULL, NULL, nSvrId);          
    END;
  END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureIndexes Failed: Outer loop failure ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);          
END CaptureIndexes;

PROCEDURE CaptureViews
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  SetStatus('Capturing Views');
  INSERT
  INTO MD_VIEWS
    (
      id,
      schema_id_fk,
      view_name,
      native_sql,
      "LANGUAGE",
      comments
    )
    (SELECT a.objid_gen,
        s.suid_gen,
        a."NAME",
        b.DEFINITION,
        'MSTSQL',
        p.value comments
      FROM STAGE_SS2K5_OBJECTS a,
        STAGE_SS2K5_SQL_MODULES b,
        stage_SS2K5_schemas s,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE a."TYPE"     ='V'
      AND a."OBJECT_ID"  = b."OBJECT_ID"
      AND a.is_ms_shipped=0
      AND s.schema_id    = a.schema_id
      AND EXISTS
        (SELECT 1 FROM md_schemas mds WHERE mds.id=s.suid_gen
        )
      AND a.svrid_fk       = nSvrId
      AND b.svrid_fk       = nSvrId
      AND s.svrid_fk       = nSvrId
      AND a.dbid_gen_fk    = b.dbid_gen_fk
      AND s.dbid_gen_fk    = b.dbid_gen_fk
      AND p.class(+)       = 1
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.object_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    ) ;
EXCEPTION
    WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureViews Failed: ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);
END CaptureViews;

PROCEDURE CaptureStoredPrograms
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  SetStatus('Capturing Stored Programs');
  INSERT
  INTO MD_STORED_PROGRAMS
    (
      id,
      schema_id_fk,
      programtype,
      name,
      native_sql,
      "LANGUAGE",
      comments
    )
    (SELECT a.objid_gen,
        s.suid_gen,
        CASE
          WHEN a.type = 'P'
          THEN 'PROCEDURE'
          ELSE 'FUNCTION'
        END,
        a."NAME",
        b.DEFINITION,
        'MSTSQL',
        p.value comments
      FROM STAGE_SS2K5_OBJECTS a,
        STAGE_SS2K5_SQL_MODULES b,
        stage_SS2K5_schemas s,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE ( a.type     = 'P'
      OR a.type          = 'FN'
      OR a.type          = 'TF'
      OR a.type          = 'IF')
      AND a."OBJECT_ID"  = b."OBJECT_ID"
      AND a.is_ms_shipped=0
      AND s.schema_id    = a.schema_id
      AND EXISTS
        (SELECT 1 FROM md_schemas mds WHERE mds.id=s.suid_gen
        )
      AND a.svrid_fk       = nSvrId
      AND b.svrid_fk       = nSvrId
      AND s.svrid_fk       = nSvrId
      AND a.dbid_gen_fk    = b.dbid_gen_fk
      AND s.dbid_gen_fk    = b.dbid_gen_fk
      AND p.class(+)       = 1
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.object_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    ) ;

  INSERT
  INTO MD_ADDITIONAL_PROPERTIES
    (
      connection_id_fk,
      ref_id_fk,
      ref_type,
      property_order,
      prop_key,
      "VALUE"
    )
    (SELECT a.svrid_fk,
        a.objid_gen,
        'MD_STORED_PROGRAMS',
        1,
        'TYPE',
        CASE
          WHEN (a.type = 'FN')
          THEN 'SCALAR FUNCTION'
          WHEN (a.type = 'TF')
          THEN 'TABLE FUNCTION'
          ELSE
            /* IF */
            'INLINED T. FUNCTION'
        END
      FROM STAGE_SS2K5_OBJECTS a,
        stage_SS2K5_schemas s
      WHERE ( a.type     = 'FN'
      OR a.type          = 'TF'
      OR a.type          = 'IF')
      AND a.is_ms_shipped=0
      AND s.schema_id    = a.schema_id
      AND EXISTS
        (SELECT 1 FROM md_schemas mds WHERE mds.id=s.suid_gen
        )
      AND a.svrid_fk    = nSvrId
      AND s.svrid_fk    = nSvrId
      AND s.dbid_gen_fk = a.dbid_gen_fk
    ) ;
EXCEPTION
    WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureStoredPrograms Failed: ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);
END CaptureStoredPrograms;

PROCEDURE CaptureTriggers
IS
      errMsg VARCHAR2(4000) := NULL;
BEGIN
  SetStatus('Capturing Triggers');
  INSERT
  INTO MD_TRIGGERS
    (
      "ID",
      table_or_view_id_fk,
      trigger_on_flag,
      trigger_name,
      native_sql,
      "LANGUAGE",
      comments
    )
    (SELECT a.objid_gen,
        (
        CASE
          WHEN (v.type = 'V')
          THEN v.objid_gen
          ELSE
            (SELECT t.objid_gen
            FROM stage_ss2k5_tables t
            WHERE t.object_id = a.parent_object_id
            AND t.svrid_fk    = nSvrId
            AND t.dbid_gen_fk = a.dbid_gen_fk
            )
        END),
        CASE
          WHEN (v.type = 'V')
          THEN 'V'
          ELSE 'T'
        END,
        a."NAME",
        b.DEFINITION,
        'MSTSQL',
        p.value comments
      FROM STAGE_SS2K5_OBJECTS a,
        STAGE_SS2K5_SQL_MODULES b,
        STAGE_SS2K5_objects v,
        STAGE_SS2K5_SYSPROPERTIES p
      WHERE a."TYPE"     ='TR'
      AND v.object_id    = a.parent_object_id
      AND a."OBJECT_ID"  = b."OBJECT_ID"
      AND a.is_ms_shipped=0
      AND ((EXISTS
        (SELECT 1 FROM md_views v WHERE v.id = v.objid_gen
        ))
      OR (EXISTS
        (SELECT 1
        FROM md_tables tt,
          stage_ss2k5_tables ts
        WHERE tt.id       = ts.objid_gen
        AND ts.object_id  = v.object_id
        AND a.dbid_gen_fk = ts.dbid_gen_fk
        AND ts.svrid_fk   = nSvrId
        AND ts.NAME NOT IN ('sysdiagrams')
        ) ) )
      AND a.svrid_fk       = nSvrId
      AND b.svrid_fk       = nSvrId
      AND v.svrid_fk       = nSvrId
      AND a.dbid_gen_fk    = b.dbid_gen_fk
      AND v.dbid_gen_fk    = b.dbid_gen_fk
      AND p.class(+)       = 1
      AND p.svrid_fk(+)    = nSvrId
      AND p.MAJOR_ID(+)    = a.object_id
      AND p.MINOR_ID(+)    = 0
      AND p.dbid_gen_fk(+) = a.dbid_gen_fk
    ) ;
EXCEPTION
    WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureTriggers Failed: ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);
END CaptureTriggers;
--actually drill down to the base type in column creation
--need to get UDT name mapping for procedure translation.

FUNCTION printUDTDef
  (
    basename VARCHAR2,
    p        NUMBER,
    s        NUMBER,
    m        NUMBER
  )

  RETURN VARCHAR2
IS
  StringOut VARCHAR2
  (
    200 CHAR
  )
  ;
  myPRECISION NUMBER
  (
    38,0
  )
  ;
  myscale NUMBER
  (
    38,0
  )
  ;
BEGIN
  StringOut:=basename;
  myPRECISION:=

  CASE

  WHEN ( ( p = 0 ) OR ( p IS NULL ) ) THEN
    SS2K5AllPlatform.getPrecision
    (
      basename,m,s
    )

  ELSE
    SS2K5AllPlatform.getPrecision
    (
      basename,p,s
    )

  END;
  myscale:=SS2K5AllPlatform.getnewscale
  (
    basename,

    CASE

    WHEN ( (p = 0 ) OR ( p IS NULL ) ) THEN
      m

    ELSE
      p

    END,s
  )
  ;

  IF
    (
      myscale IS NOT NULL
    )
    THEN
    StringOut:=StringOut||'('||myprecision||','||myscale||')';

  ELSE

    IF
      (
        (myPRECISION IS NOT NULL) AND (myPRECISION != -1 )
      )
      THEN --decision display max_len as a known value
      StringOut:=StringOut||'('||myprecision||')';

    END IF;

  END IF;

  RETURN StringOut;

END;

PROCEDURE CaptureUDT
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  SetStatus(' UDT');
  INSERT
  INTO MD_USER_DEFINED_DATA_TYPES
    (
      SCHEMA_ID_FK,
      DATA_TYPE_NAME,
      DEFINITION,
      NATIVE_SQL,
      NATIVE_KEY,
      COMMENTS,
      SECURITY_GROUP_ID,
      CREATED_ON,
      CREATED_BY,
      LAST_UPDATED_ON,
      LAST_UPDATED_BY
    )
    (SELECT ss.id,
        b.name,
        SS2K5ALLPLATFORM.printUDTDef(a.name, b.precision, b.scale, b."MAX_LENGTH"),
        SS2K5ALLPLATFORM.printUDTDef(a.name, b.precision, b.scale, b."MAX_LENGTH"),
        '0',
        pp.value,
        0,
        SYSDATE,
        NULL,
        NULL,
        NULL
      FROM STAGE_SS2K5_types a,
        STAGE_SS2K5_types b,
        STAGE_SS2K5_SCHEMAS s,
        md_schemas ss,
        STAGE_SS2K5_SYSPROPERTIES pp
      WHERE a.user_type_id = b.system_type_id
      AND b.user_type_id  != b.system_type_id
      AND b.schema_id      = s.schema_id
      AND s.suid_gen       = ss.id
      AND a.svrid_fk       = nSvrId
      AND b.svrid_fk       = nSvrId
      AND s.svrid_fk       = nSvrId
      AND a.dbid_gen_fk    = b.dbid_gen_fk
      AND s.dbid_gen_fk    = b.dbid_gen_fk
      AND pp.class(+)       = 6
      AND pp.svrid_fk(+)    = nSvrId
      AND pp.MAJOR_ID(+)    = b.user_type_id
      AND pp.MINOR_ID(+)    = 0
      AND pp.dbid_gen_fk(+) = b.dbid_gen_fk
    );
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureUDT Failed: ['  || errMsg ||  '] nSvrId: ' || nSvrId, NULL, NULL, nSvrId); 
END CaptureUDT;

PROCEDURE CaptureEntireStage
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  CaptureConnections;
  COMMIT;
  CaptureDatabases;
  COMMIT;
  CaptureSchemas;
  COMMIT;
  CaptureTables;
  COMMIT;
  CaptureColumns;
  COMMIT;
  CaptureConstraints;
  COMMIT;
  CaptureIndexes;
  COMMIT;
  CaptureViews;
  COMMIT;
  CaptureStoredPrograms;
  COMMIT;
  CaptureTriggers;
  COMMIT;
  CaptureUDT;
  COMMIT;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'CaptureEntireStage Failed: ['  || errMsg ||  '] nSvrId: ' || nSvrId, NULL, NULL, nSvrId); 
END CaptureEntireStage;

PROCEDURE FixSysDatabases
IS
BEGIN
  NULL;

END FixSysDatabases;

PROCEDURE FixSysUsers
IS
BEGIN
  NULL;

END FixSysUsers;

PROCEDURE FixTables
IS
  errMsg VARCHAR2(4000) := NULL; 
  CURSOR curDb
  IS

    SELECT schema_id,
      DBID_GEN_FK,
      suid_gen
    FROM stage_ss2k5_schemas
    WHERE svrid_fk = nSvrId ;
BEGIN

  FOR r_c1 IN curDb
  LOOP
    BEGIN
    -- assuming 1 to 1 correspondance between suid and uid within a database

    UPDATE stage_ss2k5_tables
    SET schema_id_fk  = r_c1.suid_gen
    WHERE dbid_gen_fk = r_c1.dbid_gen_fk
    AND svrid_fk      = nSvrId
    AND schema_id     = r_c1.schema_id;
    EXCEPTION
       WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'FixTables Failed: individual schema fail ['  || errMsg ||  '] nSvrId:schema_id_fk = ' || nSvrId || ': ' || r_c1.suid_gen, NULL, NULL, nSvrId);
    END;
  END LOOP; -- schemas loop

EXCEPTION
WHEN OTHERS THEN
  DBMS_OUTPUT.put_line('Exception in FixTables');
  errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
  LogInfo(NULL, sev_err, 'FixTables Failed: Outer Loop Fail ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);
END FixTables;

PROCEDURE FixColumns
IS
  errMsg VARCHAR2(4000) := NULL;
  CURSOR curDb
  IS

    SELECT objid_gen,
      object_id,
      DBID_GEN_FK
    FROM stage_ss2k5_tables
    WHERE svrid_fk = nSvrId ;
BEGIN

  FOR r_c1 IN curDb
  LOOP
    BEGIN
    -- assuming 1 to 1 correspondance between suid and uid within a database

    UPDATE stage_ss2k5_columns
    SET id_gen_fk   = r_c1.objid_gen
    WHERE object_id = r_c1.object_id --object_id is parent object, column_id is
      -- this ibject
    AND dbid_gen_fk = r_c1.dbid_gen_fk
    AND svrid_fk    = nSvrId;
    EXCEPTION
       WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'FixColumns Failed: individual column fail ['  || errMsg ||  '] nSvrId:id_gen_fk = ' || nSvrId || ': ' || r_c1.objid_gen , NULL, NULL, nSvrId);
    END;
  END LOOP; -- tables loop

EXCEPTION

WHEN OTHERS THEN
  DBMS_OUTPUT.put_line('Exception in FixColumns');
  errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
  LogInfo(NULL, sev_err, 'FixColumns Failed: outside loop fail ['  || errMsg ||  '] nSvrId = ' || nSvrId, NULL, NULL, nSvrId);
END FixColumns;

PROCEDURE FixIndexes
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
NULL;
EXCEPTION

WHEN OTHERS THEN
  DBMS_OUTPUT.put_line('Exception in FixIndexes');
  errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
  LogInfo(NULL, sev_err, 'FixIndexes Failed: outside loop fail ['  || errMsg ||  '] nSvrId = ' || nSvrId, NULL, NULL, nSvrId);
END FixIndexes;

PROCEDURE UpdateScratchModel
IS

  CURSOR curDerived
  IS

    SELECT *
    FROM MD_DERIVATIVES
    WHERE DERIVED_TYPE      IN ('MD_VIEWS', 'MD_STORED_PROGRAMS', 'MD_TRIGGERS')
    AND ( derivative_reason IS NULL
    OR derivative_reason    <> 'SCRATCH' );

  v_TransSQL CLOB;
  v_SourceSQL CLOB;
BEGIN
  NULL;

END;

PROCEDURE FixStageKeyReferences
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  FixSysDatabases;
  FixSysUsers;
  FixTables;
  FixColumns;
  FixIndexes;
EXCEPTION
  WHEN OTHERS THEN
     errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
     LogInfo(NULL, sev_err, 'FixStageKeyReferences Failed: ['  || errMsg ||  '] nSvrId = ' || nSvrId , NULL, NULL, nSvrId);
END;

Procedure DoAndWriteError(execvarchar varchar2)
is
  errMsg VARCHAR2(4000) := NULL;
BEGIN
execute immediate execvarchar;
EXCEPTION

WHEN OTHERS THEN
  DBMS_OUTPUT.put_line('Exception in DoAndWriteError:'||execvarchar);
  errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
  LogInfo(NULL, sev_warn, 'DoAndWriteError Failed: ['  || errMsg ||  '] nSvrId:execvarchar = ' || nSvrId || ': '|| execvarchar , NULL, NULL, nSvrId);
END DoAndWriteError;

PROCEDURE RegisterSQLServerPlugin
IS
  errMsg VARCHAR2(4000) := NULL;
BEGIN

  INSERT
  INTO md_additional_properties
    (
      connection_id_fk,
      ref_id_fk,
      ref_type,
      property_order,
      prop_key,
      "VALUE"
    )
    VALUES
    (
      nSvrId,
      nSvrId,
      'MD_CONNECTIONS',
      0,
      'PLUGIN_ID',
      pluginClass -- could be 2005 or 2008 
    );
  COMMIT;
EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
        LogInfo(NULL, sev_err, 'RegisterSQLServerPlugin Failed: ['  || errMsg ||  '] nSvrId: ' || nSvrId, NULL, NULL, nSvrId); 
END;

FUNCTION StageCapture
  (
    projectId      NUMBER,
    pluginClassIn   varchar2,
    projExists BOOLEAN:=FALSE,
    p_scratchModel BOOLEAN := FALSE
  )

  RETURN VARCHAR2
IS
  ret_val NAME_AND_COUNT_ARRAY;
  scratchConnId         NUMBER :=0;
  connectionStatsResult NUMBER;
  errMsg VARCHAR2(4000) := NULL;
BEGIN
  nSvrId := NULL;
  pluginClass := pluginClassIn;--could be 2005 or 2008
  nProjectId := projectId;
  bProjectExists:=projExists;
  SELECT svrid INTO nSvrId FROM STAGE_SERVERDETAIL WHERE project_id = projectId;
  -- Initialize the log status table
  INSERT INTO migrlog(parent_log_id, log_date, severity, logtext, phase, ref_object_id, ref_object_type, connection_id_fk) 
  VALUES(NULL, systimestamp, 666, 'Capture Started', 'CAPTURE', NULL, NULL, projectId);
  COMMIT; 
  FixStageKeyReferences;
  CaptureEntireStage;
  RegisterSQLServerPlugin;
  connectionStatsResult:=MIGRATION.gatherConnectionStats(nSvrId, 'This is a capture model created using the enterprise estimation cmd tool');
  COMMIT;
  MIGRATION.POPULATE_DERIVATIVES_TABLE(nSvrId);
  COMMIT;

  IF p_scratchModel = TRUE THEN
    scratchConnId  := MIGRATION.copy_connection_cascade(p_connectionid => nSvrId, p_scratchModel => TRUE);
    ret_val        := migration.transform_all_identifiers(scratchConnId, '', TRUE);
    UpdateScratchModel;
    connectionStatsResult:=MIGRATION.gatherConnectionStats(scratchConnId, 'This is a scratch model used for analysis and estimation');
    COMMIT;

  END IF;
  DELETE migrlog WHERE phase='CAPTURE' AND severity = 666 AND connection_id_fk = projectId;
  COMMIT; 
  --IF exceptionOccurred = TRUE THEN
  --  RAISE CaptureNotClean;
  --END IF;
  RETURN ''|| nSvrId||'/'||scratchConnId;
EXCEPTION
  WHEN CaptureNotClean THEN
      RAISE CaptureNotClean;
  WHEN OTHERS THEN
      errMsg := LOCALSUBSTRB(LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_STACK) || ' ' || LOCALSUBSTRB(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE));
      LogInfo(NULL, sev_err, 'StageCapture Failed: ['  || errMsg ||  '] nSvrId: ' ||nSvrId, NULL, NULL, nSvrId);
      RAISE CaptureNotClean;
END StageCapture;

END SS2K5ALLPLATFORM;

/
--------------------------------------------------------
--  DDL for Package Body SYB12ALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."SYB12ALLPLATFORM" AS   
  -- TYPE split_tbl_type IS TABLE OF VARCHAR2(32767);
   TYPE split_varray_type IS VARRAY(255) OF VARCHAR2(32767);
   TYPE ref_cur_type IS REF CURSOR;
   TYPE key_array is VARRAY(20) OF NUMBER;
   TYPE str_array_type IS TABLE OF VARCHAR2(32767) INDEX BY BINARY_INTEGER;
   nProjectId  NUMBER;
   sev_err CONSTANT NUMBER :=2;
   sev_warn CONSTANT NUMBER :=4;
   sev_others CONSTANT NUMBER :=8;
   projectExist BOOLEAN;
   exceptionOccurred BOOLEAN :=FALSE;
   nSvrId NUMBER; -- This is the captured connection id
   pluginClass varchar2(500) := null;
   progressStatus varchar2(1000) := null;
   CaptureNotClean EXCEPTION;

----------------------- bitwise operation util begin ---------

   BaseFmt constant char(12) := 'XXXXXXXXXXXX';
   RawToNumberFMT constant char(14) := 'XX' || BaseFmt;
   NumberToRawFMT constant char(14) := '0X' || BaseFmt;

FUNCTION LOCALSUBSTRB(
    vin  VARCHAR2)  RETURN VARCHAR2
AS
  v VARCHAR2(4000 CHAR):=SUBSTR(vin,1,4000);
  l NUMBER;
BEGIN
  l               := LENGTH(v);
  WHILE (lengthb(v)>4000)
  LOOP
    l := l-1;
    v := SUBSTR(v,1,l);
  END LOOP;
  RETURN v;
END;


PROCEDURE LogInfo( parent_log_id NUMBER,
                   severity NUMBER,
                   logtext VARCHAR2,
                   ref_obj_id NUMBER,
                   ref_obj_type VARCHAR2,
                   connection_id NUMBER)
 IS
   PRAGMA AUTONOMOUS_TRANSACTION;
   errmsg  varchar2(4000) := null;
   fit_logtext varchar2(4000) := LOCALSUBSTRB(logtext);
 BEGIN
   exceptionOccurred :=TRUE;
   INSERT INTO MIGRLOG(parent_log_id, 
                       log_date, 
                       severity, 
                       logtext, 
                       phase, 
                       ref_object_id, 
                       ref_object_type, 
                       connection_id_fk) 
         VALUES(parent_log_id, 
                sysdate, 
                severity, 
                fit_logtext, 
                'Capture', 
                ref_obj_id, 
                ref_obj_type, 
                connection_id) ;
   COMMIT;
 EXCEPTION
 when others then
   errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
   DBMS_OUTPUT.put_line('Log Err: ['  || errMsg       || ']'
                                    || parent_log_id   || ':' 
                                    || severity     || ':'
                                    || logtext      || ':Capture:'
                                    || ref_obj_id   || ':'
                                    || ref_obj_type || ':'
                                    || connection_id);
 END LogInfo;


   FUNCTION ToRaw(p_Value NUMBER) RETURN RAW 
   IS
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
   IF(P_VALUE < 0) THEN
    RETURN HexToRaw(LTRIM(To_Char(0, NumberToRawFMT)));
   END IF;
     RETURN HexToRaw(LTRIM(To_Char(p_Value, NumberToRawFMT)));
   EXCEPTION
     when others then
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 'ToRaw Failed: ['  || errMsg || '] ' || p_Value, NULL, NULL, nSvrId);
   END;

   FUNCTION BitOr(p_Value1 NUMBER, p_Value2 NUMBER) RETURN NUMBER
   IS
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
     RETURN To_Number(UTL_RAW.bit_or(ToRaw(p_Value1), ToRaw(p_Value2)), RawToNumberFMT);
   EXCEPTION
     when others then
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 'BitOr Failed: ['  || errMsg || '] ' || p_Value1 || ': ' || p_Value2, NULL, NULL, nSvrId);     
   END;

   FUNCTION BitAnd(p_Value1 number, p_Value2 number) RETURN NUMBER
   IS
      errMsg VARCHAR2(4000) := NULL;
   BEGIN
     return To_Number(UTL_RAW.bit_and(ToRaw(p_Value1), ToRaw(p_Value2)), RawToNumberFMT);
   EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 'BitAnd Failed: ['  || errMsg ||  '] ' || p_Value1 || ': ' || p_Value2, NULL, NULL, nSvrId);          
   END;

----------------------- bitwise operation util end ---------
----------------------- n type convert util begin ----------------

   FUNCTION ConvertFromNType(nType VARCHAR2) RETURN VARCHAR2
   IS
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
      IF 'INTN' = UPPER(nType) THEN
         RETURN 'int';
      ELSIF 'FLOATN' = UPPER(nType) THEN
         RETURN 'float';
      ELSIF 'DATETIMN' = UPPER(nType) THEN
         RETURN 'date'; 
      ELSIF 'MONEYN' = UPPER(nType) THEN         
         RETURN 'money';
      ELSIF 'DECIMALN' = UPPER(nType) THEN   
         RETURN 'decimal';
      ELSIF 'NUMERICN' = UPPER(nType) THEN   
         RETURN 'numeric';
      ELSIF 'DATEN' = UPPER(nType) THEN
         RETURN 'date';
      ELSIF 'TIMEEN' = UPPER(nType) THEN
         RETURN 'time';
      ELSIF 'UINTN' = UPPER(nType) THEN
         RETURN 'unit';
      END IF ;      
         RETURN nType;
   EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 'ConvertFromNType Failed: [' || errMsg || '] ' || nType, NULL, NULL, nSvrId);              
   END ConvertFromNType;

----------------------------- n type convert util end ---------------     

   FUNCTION GetDescription(basename VARCHAR2, precisionin NUMBER, scalein NUMBER, lengthin NUMBER) RETURN VARCHAR2 
   is
     basenameNoN VARCHAR2(200);
     errMsg VARCHAR2(4000) := NULL;
     precision NUMBER := null;
     scale NUMBER := null;
     retDef VARCHAR2(400);
   BEGIN
     basenameNoN := ConvertFromNType(LOWER(basename));
     --need to handle the 
     --precision scale types:numeric (p, s) decimal (p, s)
     --precision types:float (precision)
     --length types: char(n)varchar(n)binary(n)varbinary(n)
     --length /1 types (best estimate): nchar(n) nvarchar(n) might oversize nchar & nvarche - checked @@NCHARSIZE on our iso machines = 1
     IF ((basenameNoN = 'numeric') OR (basenameNoN = 'decimal')) THEN
       precision := precisionin;
       scale := scalein;
     ELSIF (basenameNoN = 'float') THEN
       precision := precisionin;
     ELSIF ((basenameNoN = 'char') OR (basenameNoN = 'varchar') OR (basenameNoN = 'binary') OR (basenameNoN = 'varbinary')) THEN
       precision := lengthin;
     ELSIF ((basenameNoN = 'nchar') OR (basenameNoN = 'nvarchar')) THEN
       IF (lengthin IS NOT NULL) THEN
         precision := lengthin;-- /2;
       END IF;
     END IF;
     retDef:=basename;
     IF (precision is not null) THEN 
       IF (scale is not null) THEN
         retDef := retDef || '(' || precision || ',' || scale || ')';
       ELSE
         retDef := retDef || '(' || precision || ')';
       END IF;
     END IF;
     RETURN retDef;
   EXCEPTION
     WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'GetDescription Failed: [' || errMsg || '] ' || basename || ':' || 
                precisionin || ':' || scalein || ':' || lengthin, 
                NULL, NULL, nSvrId);                   
   END GetDescription;

 PROCEDURE SetStatus(msg VARCHAR2)
 IS
 BEGIN
    --dbms_output.put_line(msg);
    --commit;
    --progressStatus := msg;
    --dbms_lock.sleep(2);
    UPDATE migrlog SET logtext = msg,
                   log_date = systimestamp
                   WHERE severity = 666 
                       AND phase = 'CAPTURE'
                       AND connection_id_fk = nProjectId;                   
    COMMIT;
 END SetStatus; 

/*
FUNCTION GetLogIdForObject(obj_id NUMBER) RETURN NUMBER
IS
  log_id NUMBER;
  errMsg VARCHAR2(4000);
BEGIN
   SELECT id INTO log_id FROM migrlog WHERE ref_object_id = obj_id;
   RETURN log_id;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      NULL;
   WHEN OTHERS THEN
         errMsg := SQLERRM;
         DBMS_OUTPUT.put_line('Unable to GetLogIdForObject: ['  || errMsg       || ']'
                               || 'Object Id = ' || obj_id);         
END GetLogIdForObject;
*/

 FUNCTION GetStatus(iid INTEGER) RETURN varchar2
 IS
    status VARCHAR2(4000);
    errMsg VARCHAR2(2000);
 BEGIN
    SELECT logtext INTO status FROM migrlog WHERE severity = 666 AND phase = 'CAPTURE' AND connection_id_fk = iid;    
    RETURN status; 
EXCEPTION 
  when others then
     errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
     dbms_output.put_line('Status Message : ' || errMsg);
 END GetStatus;

   FUNCTION split_str2(srcStr VARCHAR2, delim CHAR := ',') RETURN split_varray_type
   IS
     nIdx    pls_integer;
     errMsg VARCHAR2(4000) := NULL;
     vlist    varchar2(32767) := srcStr;
     myvarray split_varray_type;
     cnt pls_integer := 1;
   BEGIN
      myvarray := split_varray_type();
      LOOP
      BEGIN
         IF  cnt < myvarray.limit 
         THEN
             myvarray.EXTEND;
         END IF;

         nIdx := INSTR(vlist,delim);
         IF nIdx > 0 THEN
            myvarray(myvarray.last) := SUBSTR(vlist,1,nIdx-1);
            vlist := SUBSTR(vlist,nIdx + LENGTH(delim));
         ELSE
            myvarray(myvarray.last) := vlist;
            EXIT;
         END IF;         
         cnt := cnt+1;
      EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'split_str2 Failed: [' || errMsg || '] '|| srcStr || ':' || 
                delim, 
                NULL, NULL, nSvrId); 
         cnt :=cnt + 1;         
      END;
      END LOOP;
      RETURN myvarray;
   END split_str2;

----------------------- split util begin -------------------
/*
   FUNCTION split_str(srcStr VARCHAR2, delim CHAR := ',') RETURN split_tbl_type PIPELINED
   IS
     nIdx    pls_integer;
     vlist    varchar2(32767) := srcStr;
   BEGIN
      LOOP      
         nIdx := INSTR(vlist,delim);
         IF nIdx > 0 THEN
            PIPE ROW (SUBSTR(vlist,1,nIdx-1));
            vlist := SUBSTR(vlist,nIdx + LENGTH(delim));
         ELSE
            PIPE ROW (vlist);
            EXIT;
         END IF;
      END LOOP;
   END split_str;
*/
----------------------- split util end ---------------------


----------------------------- EndsWith string util begin -------------

   FUNCTION EndsWithStr(srcStr CHAR, tgtStr CHAR) RETURN INTEGER
   IS
     errMsg VARCHAR2(4000);
     nPatPos INTEGER :=0; --Doesn't end with the str
     nSrcStrLen INTEGER := LENGTH(srcStr);
     nTgtStrLen INTEGER := LENGTH(tgtStr);
   BEGIN
      IF nSrcStrLen != 0 
         AND nTgtStrLen != 0 
         AND nSrcStrLen IS NOT NULL 
         AND nTgtStrLen IS NOT NULL THEN         
           nPatPos := InStr(srcStr, tgtStr, (nSrcStrLen - nTgtStrLen));
      END IF;
      RETURN nPatPos;
  EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'EndsWithStr Failed: [' || errMsg || '] ' || srcStr || ':' || 
                tgtStr, 
                NULL, NULL, nSvrId);          

   END;
----------------------------- EndsWith string util end ---------------


   FUNCTION GetColIdFromName(svrId NUMBER, dbId NUMBER, tblId NUMBER, colName VARCHAR2) RETURN INTEGER
   IS
      curColId ref_cur_type;
      nColId INTEGER;
      errMsg VARCHAR2(4000) := NULL;
      --upperName VARCHAR2(300);
   BEGIN
      --upperName := UPPER(colName);
      OPEN curColId FOR 'SELECT COLID_GEN FROM stage_syb12_syscolumns
             WHERE SVRID_FK = :1 
                AND DBID_GEN_FK = :2 
                AND ID_GEN_FK = :3
                AND LOWER(NAME) = LOWER(:4)' USING svrId, dbId, tblId, colName;
      FETCH curColId INTO nColId;
      CLOSE curColId;
      RETURN nColId;
  EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'GetColIdFromName Failed: [' || errMsg || '] ' || svrId || ':' || 
                dbId || ':' || tblId || ':' || colName, 
                NULL, NULL, nSvrId);          
   END GetColIdFromName;

   PROCEDURE CaptureConnections
   IS
      errMsg VARCHAR2(4000) := NULL;
   BEGIN
      -- create project

      if (projectExist = FALSE)
      THEN            
      INSERT INTO md_projects("ID", project_name, comments)
           (
              SELECT project_id, project_name, comments FROM
                 stage_serverdetail WHERE project_id = nProjectId
                 AND NOT EXISTS (SELECT 1 FROM md_projects WHERE "ID" = nProjectId)
           ) ; 
      END IF;
      --capture connections
      INSERT INTO md_connections("ID", project_id_fk, username, dburl, "NAME")
      (
         SELECT SVRID, nProjectId, username, dburl, db_name 
         FROM stage_serverdetail WHERE project_id = nProjectId
      ) ;
  EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'CaptureConnections Failed: [' || errMsg || '] ' || 'Project Id : ' || nProjectId, 
                NULL, NULL, nSvrId);                
   END CaptureConnections;

   PROCEDURE CaptureDatabases
   IS 
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
      INSERT INTO md_catalogs("ID", connection_id_fk, catalog_name,
        dummy_flag)
      (
         SELECT dbid_gen, svrid_fk, "NAME", 'N' 
           FROM stage_syb12_sysdatabases
             WHERE svrid_fk = nSvrId
      );
  EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'CaptureDatabases Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);        
   END CaptureDatabases;

   PROCEDURE CaptureSchemas
   IS
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
      INSERT INTO md_schemas("ID", catalog_id_fk, "NAME")
          (
            -- Capture only those users who own atleast 1 object in the database
            -- Consciously ignoring users with on owned objects during schema capture
             SELECT A.suid_gen, A.dbid_gen_fk, A."NAME"
             FROM stage_syb12_sysusers A
             WHERE A.svrid_fk = nSvrId 
               AND A.suid>0 
               AND A.db_uid IN (SELECT DISTINCT db_uid FROM stage_syb12_sysobjects)             
          );
  EXCEPTION
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'CaptureSchemas Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);           
   END;

   PROCEDURE CaptureTables
   IS 
         errMsg VARCHAR2(4000) := null;
   BEGIN
      --SetStatus('Capturing Tables');
      INSERT INTO md_tables("ID", schema_id_fk, table_name, qualified_native_name)
          (
             SELECT objid_gen, suid_gen_fk, A."NAME", C."NAME" || '.' || B."NAME" || '.' || A."NAME"
             FROM stage_syb12_sysobjects A, stage_syb12_sysusers B, stage_syb12_sysdatabases C
             WHERE A.db_type = 'U '
                 AND A.db_uid = B.db_uid
                 AND A.svrid_fk = B.svrid_fk
                 AND A.dbid_gen_fk = B.dbid_gen_fk
                 AND B.svrid_fk = C.svrid_fk
                 AND B.dbid_gen_fk = C.dbid_gen
                 AND B.suid>0 
                 AND A.svrid_fk = nSvrId
          );           	
    EXCEPTION 
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 
                'CaptureTables Failed: [' || errMsg || '] ' || 'Server Id : ' || nSvrId, 
                NULL, NULL, nSvrId);
   END CaptureTables;

   PROCEDURE CaptureColumns
   IS
     --curObjCols ref_cur_type;
     --objColSql VARCHAR2(4000) := '';
     CURSOR curObjCols IS SELECT B.svrid_fk, B.dbid_gen_fk, B.id_gen_fk, B.colid_gen,B."LENGTH",
           C."NAME" coltypename, B."NAME", B."PREC", B."SCALE",  B.status nullable, B.cdefault, B.status, B.db_type, B.usertype, B.colid
        FROM stage_syb12_sysobjects A, stage_syb12_syscolumns B, stage_syb12_systypes C, stage_syb12_sysusers D  
        WHERE A.objid_gen = B.id_gen_fk 
        AND A.dbid_gen_fk = B.dbid_gen_fk
        AND A.svrid_fk = B.svrid_fk
        AND A.dbid_gen_fk = C.dbid_gen_fk
        AND A.svrid_fk = C.svrid_fk
        AND B.usertype = C.usertype
        AND A.db_uid = D.db_uid
        AND A.svrid_fk = D.svrid_fk
        AND A.dbid_gen_fk = D.dbid_gen_fk
        AND D.suid>0         
        AND A.svrid_fk = nSvrId
        AND A.DB_TYPE = 'U '
        ORDER BY B.colid;

     --nColOrder INTEGER :=1; -- column index is 1 based.
     cNullable CHAR(1) := 'Y';
     vDefaultValue VARCHAR2(4000);
     vDefaultValPiece VARCHAR2(300);
     vColType VARCHAR2(4000);

     curDefaultVal ref_cur_type;
     defaultStart  pls_integer;
     defaultEnd pls_integer;

     errMsg VARCHAR2(4000);
   BEGIN
     -- Need to work the loop as there is procedural logic involved in using the length vs precision
     -- and generating the column order
         --SetStatus('Capturing Table columns');
      FOR r_c1 IN curObjCols 
      LOOP

          IF BitAnd(r_c1.nullable, 8) = 8 THEN
             cNullable := 'Y';
          ELSE
             cNullable := 'N';
          END IF;

          IF r_c1.usertype > 100 THEN  -- Handle user defined types
          BEGIN
                SELECT MAX("NAME") INTO vColType FROM STAGE_SYB12_SYSTYPES 
                 WHERE usertype < 100 -- SUSPECIOUS: condition reversed from above.  Check java code 
                     AND db_type = r_c1.db_type
                     AND "NAME" NOT IN ('longsysname', 'sysname', 'nchar', 'nvarchar', 'timestamp')
                     AND dbid_gen_fk = r_c1.dbid_gen_fk;      

         EXCEPTION
              WHEN OTHERS THEN
                 errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                 LogInfo(NULL, sev_err, 'CaptureColumns: Unable to Handle UDT: ['  || errMsg ||  '] db_type:dbid_gen_fk ' 
                                                               || r_c1.db_type || ': ' || r_c1.dbid_gen_fk , NULL, NULL, nSvrId);          
          END;               
          ELSE
             vColType := ConvertFromNType(r_c1.coltypename);
             -- TODO: Need to log conversion of type as a warning in the log table
          END IF;

          IF r_c1.cdefault != 0 THEN
           BEGIN --USE THE STAGE_TRANSLATED_SQL as it rollsup the text
              OPEN curDefaultVal FOR  SELECT text  
                  FROM stage_syb12_syscomments 
                     WHERE "ID" = r_c1.cdefault
                  AND dbid_gen_fk = r_c1.dbid_gen_fk   ORDER BY colid; -- delebrately using IS in the WHERE caluse as it is easy to work with syb generated id here
                  FETCH curDefaultVal INTO vDefaultValPiece;
              LOOP
                 EXIT WHEN curDefaultVal%NOTFOUND;
                 vDefaultValue := CONCAT(vDefaultValue, ' ');
                 vDefaultValue := CONCAT(vDefaultValue, vDefaultValPiece);
                 FETCH curDefaultVal INTO vDefaultValPiece;
              END LOOP;
              CLOSE curDefaultVal;
              defaultStart := INSTR(vDefaultValue,'"',1,1);
              defaultEnd := INSTR(vDefaultValue,'"',-1,1);
              IF defaultStart <= 0 THEN
              defaultStart := INSTR(vDefaultValue,'''',1,1);
              defaultEnd := INSTR(vDefaultValue,'''',-1,1);
              END IF;
              IF defaultStart <= 0 THEN
                vDefaultValue := TRIM(vDefaultValue);
                defaultStart := INSTR(vDefaultValue,' ',-1,1);  
                IF defaultStart > 0 THEN
                  vDefaultValue:= SUBSTR(vDefaultValue,defaultStart+1,LENGTH(vDefaultValue)-defaultStart);
                END IF;
              ELSE
                vDefaultValue := SUBSTR(vDefaultValue,defaultStart+1,defaultEnd -defaultStart -1);
              END IF;

              -- LENGTH('') Result: NULL :  defaultvalue is ''
              -- Bug 20353103 - EMPTY STRING NOT CONVERTED TO SINGLE SPACE DURING MIGRATION 
              IF length(vDefaultValue) is NULL THEN
                        vDefaultValue := CONCAT(vDefaultValue, ' ');
              END IF;

           EXCEPTION  
              WHEN NO_DATA_FOUND THEN
               NULL;  -- dont do anything
              when others then
                 errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                 LogInfo(NULL, sev_err, 'CaptureColumns: stage_syb12_syscomments cursor issue: ['  || errMsg ||  ']  r_c1.cdefault:r_c1.dbid_gen_fk:vDefaultValue: ' 
                                                         || r_c1.cdefault || ':' || r_c1.dbid_gen_fk || ':' || vDefaultValue, NULL, NULL, nSvrId);          
           END;
          END IF;

          BEGIN
            IF BitAnd(r_c1.status, 128) = 128 THEN -- Handle identity column capture
               INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                     ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                     VALUES(r_c1.svrid_fk, r_c1.colid_gen, 'MD_COLUMNS', r_c1.colid, 'SEEDVALUE', 1);
            END IF;
          EXCEPTION
             when others then
                 errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                 LogInfo(NULL, sev_err, 'CaptureColumns: Identity column issue: ['  || errMsg ||  ']  r_c1.svrid_fk:r_c1.colid_gen:r_c1.colid ' 
                                                                   || r_c1.svrid_fk || ':' || r_c1.colid_gen || ':' || r_c1.colid, NULL, NULL, nSvrId);          
          END;

          BEGIN
            IF r_c1."PREC" = 0 OR r_c1."PREC" IS NULL THEN -- use length
                INSERT INTO MD_COLUMNS("ID", table_id_fk, column_name, 
                       column_order, column_type, "PRECISION", "SCALE", nullable, default_value)
                       VALUES
                       ( r_c1.colid_gen, r_c1.id_gen_fk, r_c1."NAME", r_c1.colid, 
                           vColType, r_c1."LENGTH", r_c1."SCALE", cNullable, vDefaultValue
                       );
            ELSE -- use precision
                INSERT INTO MD_COLUMNS("ID", table_id_fk, column_name, 
                       column_order, column_type, "PRECISION", "SCALE", nullable, default_value)
                       VALUES
                       ( r_c1.colid_gen, r_c1.id_gen_fk, r_c1."NAME", r_c1.colid, 
                           vColType, r_c1."PREC", r_c1."SCALE", cNullable, vDefaultValue
                       );          
            END IF;
          EXCEPTION
             WHEN OTHERS THEN
                 errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                 LogInfo(NULL, sev_err, 'CaptureColumns: md_columns insert issue: ['  || errMsg ||  ']  r_c1."PREC":r_c1.colid_gen:r_c1.id_gen_fk:r_c1."NAME":r_c1.colid:vColType:r_c1."SCALE":cNullable:vDefaultValue:r_c1."LENGTH" ' 
                                                                   || r_c1."PREC" || ':' || r_c1.colid_gen || ':' || r_c1.id_gen_fk || ':' || r_c1."NAME" || ':' || r_c1.colid
                                                                   || ':' || vColType || ':' || r_c1."SCALE" || ':' || cNullable || ':' || vDefaultValue || ':' || r_c1."LENGTH", NULL, NULL, nSvrId);          
          END;
          vDefaultValue :=''; -- reset it for the next iteration.
          --nColOrder := nColOrder + 1;
      END LOOP;
    EXCEPTION 
              WHEN OTHERS THEN
                 errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                 LogInfo(NULL, sev_err, 'CaptureColumns Failed: Unable to Open master cursor: ['  || errMsg ||  ']  nSvrId: ' ||  nSvrId, NULL, NULL, nSvrId);          
   END CaptureColumns;

   /*
   PROCEDURE ProcessCheckConstraint(svrId NUMBER, 
               dbId NUMBER, tblId NUMBER, 
               constraint_name VARCHAR2, db_definition VARCHAR2)
   IS
      vConstText VARCHAR2(4000);
   BEGIN
            SetStatus('Capturing check constraints');
      vConstText := SUBSTR(db_definition, INSTR(db_definition, '(')+1,LENGTH(db_definition)-1);
      INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, "LANGUAGE", constraint_text)
      VALUES(constraint_name, 'CHECK', tblId, 'STSQL', vConstText);
   END ProcessCheckConstraint;

   PROCEDURE ProcessPkConstraint(svrId NUMBER, 
               dbId NUMBER, tblId NUMBER, 
               constraint_name VARCHAR2, db_definition VARCHAR2)
   IS
      curConsCols ref_cur_type;
      vConsId NUMBER;
      vConsCol VARCHAR2(300);
      nColId NUMBER;
      nColPos NUMBER :=1;
      consCols split_varray_type; 
   BEGIN
            SetStatus('Capturing Primary key constraint');
        INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, "LANGUAGE")
             VALUES(TRIM(constraint_name), 'PK' , tblId, 'STSQL') RETURNING "ID" INTO vConsId;
        --For each of the column shread the detail into the MD_CONSTRAINT_DETAILS
        --OPEN curConsCols FOR 'SELECT * FROM table(split_str(:1))' USING db_definition;
        --FETCH curConsCols INTO vConsCol;  
        consCols := split_str2(db_definition);
        LOOP
           EXIT WHEN nColPos > consCols.count;
           nColId := GetColIdFromName(svrId, dbId, tblId, TRIM(consCols(nColPos)));

           INSERT INTO MD_CONSTRAINT_DETAILS(constraint_id_fk, column_id_fk, detail_order) 
                 VALUES(vConsId, nColId, nColPos);
           nColPos := nColPos + 1;
        END LOOP;
        -- CLOSE curConsCols;
   END ProcessPkConstraint;

   PROCEDURE ProcessFkConstraint(svrId NUMBER, 
               dbId NUMBER, tblId NUMBER, 
               constraint_name VARCHAR2, db_definition VARCHAR2)
   IS
      nRefTblId NUMBER;
      nSchemaId NUMBER;
      nColId NUMBER;
      curConsCols ref_cur_type;
      vConsCol VARCHAR2(300);
      vRefTblName VARCHAR2(300);
      vTblName VARCHAR2(300);
      vConsDef_1 VARCHAR2(4000);
      vConsDef_2 VARCHAR2(4000);
      vRefColList VARCHAR2(4000);
      vColList VARCHAR2(4000);
      nPos NUMBER;
      nPos2 NUMBER;
      nConsId NUMBER;
      nColCnt NUMBER:=1;
      consCols split_varray_type;       
   BEGIN
            SetStatus('Capturing fk constraints');
      nPos := INSTR(db_definition, 'REFERENCES');

      IF nPos > 0 THEN
        vConsDef_1 := SUBSTR(db_definition, 1, nPos);       
        vConsDef_2 := SUBSTR(db_definition, nPos + LENGTH('REFERENCES'));

        nPos := INSTR(vConsDef_1, '(');
        nPos2 := INSTR(vConsDef_1, ')');
        vColList := SUBSTR(vConsDef_1, nPos +1, nPos2 - (nPos + 1)); 

        nPos := INSTR(vConsDef_2, '(');
        nPos2 := INSTR(vConsDef_2, ')');
        vRefTblName := TRIM(SUBSTR(vConsDef_2, 1, nPos));
        vRefColList := SUBSTR(vConsDef_2, nPos + 1, nPos2-(nPos + 1));

      ELSE
        RETURN; -- This should never happen
      END IF;

      SELECT suid_gen_fk INTO nSchemaId FROM stage_syb12_sysobjects A, 
                                             stage_syb12_sysconstraints B 
                            WHERE A.svrid_fk = B.svrid_fk 
                               AND B.svrid_fk = nSvrId 
                               AND A.dbid_gen_fk = B.dbid_gen_fk 
                               AND A."ID" = tblId;

      SELECT "NAME" INTO vTblName FROM stage_syb12_sysobjects A
                            WHERE A.svrid_fk = nSvrId
                               AND A.dbid_gen_fk = dbId
                               AND A."ID" = tblId;

      SELECT "ID" INTO nRefTblId FROM stage_syb12_sysobjects A
                            WHERE A.svrid_fk = nSvrid
                               AND A.dbid_gen_fk = dbId
                               AND A.SUID_GEN_FK = nSchemaId;

      -- Weed out self referencing foreign keys

      IF tblId = nRefTblId THEN
         RETURN;
      END IF;

      INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, reftable_id_fk,
                                   "LANGUAGE")                         
               VALUES (constraint_name, 'FOREIGN KEY', tblId, nRefTblId, 'STSQL')
                 RETURNING "ID" INTO nConsId;

      -- open the cursor for source columns          
      --OPEN curConsCols FOR 'SELECT * FROM table(split_str(:1))' USING vColList;               
      --FETCH curConsCols INTO vConsCol;
      consCols := split_str2(vColList); 
      -- source columns loop
      LOOP
        --EXIT WHEN curConsCols%NOTFOUND;
        EXIT WHEN nColCnt > consCols.count;
        nColId := GetColIdFromName(svrId, dbId, tblId, TRIM(consCols(nColCnt)));

        INSERT INTO MD_CONSTRAINT_DETAILS(constraint_id_fk, column_id_fk, detail_order) 
                VALUES ( nConsId, nColId, nColCnt);

        --FETCH curConsCols INTO vConsCol;
        nColCnt := nColCnt + 1;
      END LOOP;  
      -- CLOSE curConsCols;

      -- open the cursor for referenced columns
      --OPEN curConsCols FOR 'SELECT * FROM table(split_str(:1))' USING vRefColList;               
      --FETCH curConsCols INTO vConsCol;
      consCols := split_str2(vRefColList);
      nColCnt := 1; --re-initialize the counter for the ref columns loop
      LOOP
        --EXIT WHEN curConsCols%NOTFOUND;
       EXIT WHEN nColCnt > consCols.count;
        nColId := GetColIdFromName(svrId, dbId, tblId, TRIM(consCols(nColCnt)));

        INSERT INTO MD_CONSTRAINT_DETAILS(ref_flag, constraint_id_fk, column_id_fk, detail_order) 
                VALUES ('Y',  nConsId, nColId, nColCnt);

        --FETCH curConsCols INTO vConsCol;
        nColCnt := nColCnt + 1;
      END LOOP;  
      CLOSE curConsCols;                                    
   END ProcessFkConstraint;   

   PROCEDURE ProcessUkConstraint(svrId NUMBER, 
               dbId NUMBER, tblId NUMBER, 
               constraint_name VARCHAR2, db_definition VARCHAR2)
   IS
      curConsCols ref_cur_type;
      vConsId NUMBER;
      vConsCol VARCHAR2(300);
      nColId NUMBER;
      nColPos NUMBER :=1; 
      consCols split_varray_type;       
   BEGIN
            SetStatus('Capturing unique key constraint');
        INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, "LANGUAGE")
             VALUES(TRIM(constraint_name), 'UNIQUE' , tblId, 'STSQL') RETURNING "ID" INTO vConsId;
        --For each of the column shread the detail into the MD_CONSTRAINT_DETAILS
        --OPEN curConsCols FOR 'SELECT * FROM table(split_str(:1))' USING db_definition;
        --FETCH curConsCols INTO vConsCol;  
        consCols := split_str2(db_definition);
        LOOP
           EXIT WHEN nColPos > consCols.count;
           nColId := GetColIdFromName(svrId, dbId, tblId, TRIM(consCols(nColPos)));

           INSERT INTO MD_CONSTRAINT_DETAILS(constraint_id_fk, column_id_fk, detail_order) 
                 VALUES(vConsId, nColId, nColPos);
           nColPos := nColPos + 1;
        END LOOP;
        CLOSE curConsCols;
   END ProcessUkConstraint;   
   */

   PROCEDURE ProcessCheckConstraints(svrid NUMBER, db_id NUMBER, objid NUMBER)
   IS
      vConstText VARCHAR2(4000) := '';
      vIndex NUMBER(10) := 0;
      TYPE ConstraintRec IS RECORD
                        (
                            constraint_id NUMBER,
                            constraint_name varchar2(300)
                        );
      v_constRow ConstraintRec;
      v_commentRow stage_syb12_syscomments%ROWTYPE;
      CURSOR curConst(svrid NUMBER, db_id NUMBER, o_id NUMBER) IS SELECT a.constraint_gen constriant_id, b.name constraint_name 
                                    FROM stage_syb12_sysconstraints a, stage_syb12_sysobjects b
                                             WHERE a.table_id_gen_fk = o_id
                                                   AND a.svrid_fk = svrid
                                                   AND a.dbid_gen_fk = db_id
                                                   AND a.constraint_gen = b.objid_gen
                                                   AND BitAnd(b.sysstat, 15) = 7; -- last condition is some internal stuff copied from offline capture

      CURSOR curComment(svrid NUMBER, db_id NUMBER, constr_id NUMBER) IS SELECT * FROM stage_syb12_syscomments 
                                             WHERE id_gen_fk = constr_id
                                                   AND svrid_fk = svrid
                                                   AND dbid_gen_fk = db_id;

      errMsg VARCHAR2(4000);                                                   
   BEGIN
            --SetStatus('Capturing check constraint');
      OPEN curConst(svrid, db_id, objid);

      LOOP  -- Provision for multiple check constraints on a given table
        BEGIN
         FETCH curConst INTO v_constRow;
         EXIT WHEN curConst%NOTFOUND;

         --fetch all the constraint text and build the constraint
         OPEN curComment(svrid, db_id, v_constRow.constraint_id);

         LOOP
         BEGIN
            FETCH curComment INTO v_commentRow;
            EXIT WHEN curComment%NOTFOUND;
            vConstText := vConstText || v_commentRow.text || ' ';
         EXCEPTION
            WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'ProcessCheckConstraints: constraint text processing issue: ['  || errMsg ||  ']  svrid:db_id:objid:vConstText: ' ||  svrid || ':' || db_id || ':' || objid || ':' || vConstText, NULL, NULL, nSvrId);          
         END;
         END LOOP; --comment loop
         CLOSE curComment;
         vConstText := TRIM(vConstText);
         vIndex :=INSTR(vConstText, '(');
         IF vIndex >0 THEN
         	vConstText := SUBSTR(vConstText,vIndex+1,LENGTH(vConstText)-vIndex -1);
         END IF;
         INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, "LANGUAGE", constraint_text)
              VALUES(v_constRow.constraint_name, 'CHECK', objid, 'STSQL', vConstText);         

         vConstText := ''; -- reset the const text for next iteration.
        EXCEPTION
          WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'ProcessCheckConstraints: Individual constraint processing issue: ['  || errMsg ||  ']  svrid:db_id:objid:v_constRow.constraint_id: ' ||  svrid || ':' || db_id || ':' || objid || ':' || vConstText || ':' || v_constRow.constraint_id, NULL, NULL, nSvrId);
            vConstText := '';                                
        END;
      END LOOP; -- constraint loop
      CLOSE curConst;
    EXCEPTION 
      WHEN OTHERS THEN
         errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
         LogInfo(NULL, sev_err, 'ProcessCheckConstraints Failed: Unable to Open master cursor: ['  || errMsg ||  ']  svrid:db_id:objid: ' ||  svrid || ':' || db_id || ':' || objid, NULL, NULL, nSvrId);          
   END ProcessCheckConstraints;

   PROCEDURE ProcessPkUkConstraints(svrid NUMBER, db_id NUMBER, objid NUMBER)
   IS
        TYPE IndexRec IS RECORD
                (
                   keycnt  NUMBER, 
                   indid  NUMBER, 
                   status NUMBER, 
                   status2 NUMBER,
                   index_keys VARCHAR2(1000),
                   index_name VARCHAR2(300)
                );
        amIClustered BOOLEAN := FALSE;        
        idxRec IndexRec;
        v_constName VARCHAR2(300);

        v_consType VARCHAR2(300);

        v_constCols split_varray_type;

        vConsId  NUMBER;

        nColId  NUMBER;

        nColPos NUMBER;

        prop_cnt   pls_integer;
        CURSOR curIndex(svrid NUMBER, db_id NUMBER, objid NUMBER) IS SELECT keycnt, indid, status, status2, index_keys, index_name
            FROM stage_syb12_sysindexes
              WHERE  id_gen_fk = objid 
                  AND svrid_fk = svrid
                  AND dbid_gen_fk = db_id 
	                AND indid > 0  -- indicates that this is an index and not a table entry
	                 AND BitAnd(status2, 2) = 2 ;  -- Index supports primary key/unique declarative constraint

       errMsg VARCHAR2(4000);   
   BEGIN
      OPEN curIndex(svrid, db_id, objid);   
      LOOP
         BEGIN
           FETCH curIndex INTO idxRec;
           EXIT WHEN curIndex%NOTFOUND;
           IF ((idxRec.indid = 1) OR ((idxRec.indid > 1) AND (BitAnd(idxRec.status2, 512)=512)))
           THEN
             amIClustered := TRUE;
           ELSE
             amIClustered := FALSE;
           END IF;
           v_constName := idxRec.index_name;
           v_constCols := split_str2(idxRec.index_keys);

           IF BitAnd(idxRec.status, 2048) = 2048 -- Index on primary key
           THEN
              v_consType :='PK';
           ELSE
              v_consType := 'UNIQUE';
           END IF;
           --insert into constraints table
           INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, "LANGUAGE")
                VALUES(TRIM(v_constName), v_consType, objid, 'STSQL') RETURNING "ID" INTO vConsId; 
           IF (amIClustered = TRUE) --might want to use this to write out a comment
           THEN
                INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                    ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                    VALUES(svrid, vConsId, 'MD_CONSTRAINTS', 1, 'IS_CLUSTERED_INDEX', 'Y');
           END IF;
           if (amIClustered = TRUE)-- AND (v_consType = 'UNIQUE')) also want to mark primary keysto say --was clustered 
           THEN --mark table as IndexOrganisedTable
                select count(*) into prop_cnt from MD_ADDITIONAL_PROPERTIES
                where connection_id_fk = svrid and ref_id_fk =  objid 
                and prop_key = 'IS_INDEX_ORGANIZED_TABLE';
                IF (prop_cnt = 0) 
                THEN
                INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                    ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                    VALUES(svrid, objid , 'MD_TABLES', 1, 'IS_INDEX_ORGANIZED_TABLE', 'Y');
                END IF;
           END IF;
           --insert into constraints detail table
           nColPos := 1;
           LOOP
              BEGIN
                EXIT WHEN nColPos > v_constCols.count;
                nColId := GetColIdFromName(svrid, db_id, objid, TRIM(v_constCols(nColPos)));

                INSERT INTO MD_CONSTRAINT_DETAILS(constraint_id_fk, column_id_fk, detail_order) 
                     VALUES(vConsId, nColId, nColPos);
                nColPos := nColPos + 1;           
              EXCEPTION
                WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'ProcessPkUkConstraints: Constraint detail capture issue: ['  || errMsg ||  ']  svrid:db_id:objid:vConsId:nColPos ' ||  svrid 
                                                                    || ':' || db_id || ':' || objid || ':' || vConsId || ':' || nColPos, NULL, NULL, nSvrId);
                  nColPos := nColPos + 1;                                                                                        
              END;
           END LOOP;  
         EXCEPTION
         WHEN OTHERS THEN
         errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
         LogInfo(NULL, sev_err, 'ProcessCheckConstraints: idxRec ['  || errMsg ||  '] idxRec.indid:idxRec.status:idxRec.status2:idxRec.index_keys:idxRec.index_name:vConsId' ||  idxRec.keycnt
                                                    || ':' || idxRec.indid
                                                    || ':' || idxRec.status
                                                    || ':' || idxRec.status2
                                                    || ':' || idxRec.index_keys
                                                    || ':' || idxRec.index_name
                                                    || ':' || vConsId, NULL, NULL, nSvrId);  
         END;   
      END LOOP;
      CLOSE curIndex;
    EXCEPTION 
          WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'ProcessPkUkConstraints: Master cursor open issue: ['  || errMsg ||  ']  svrid:db_id:objid: ' ||  svrid || ':' || db_id || ':' || objid, NULL, NULL, nSvrId);                    
   END ProcessPkUkConstraints;   

   FUNCTION GetGenIdForColumnId(svrid NUMBER, dbid NUMBER, tblid NUMBER, col_id NUMBER) RETURN NUMBER
   IS
      v_genColId NUMBER;
      errMsg VARCHAR2(4000);      
   BEGIN
      SELECT colid_gen INTO v_genColId FROM STAGE_SYB12_SYSCOLUMNS 
          WHERE svrid_fk = svrid 
             AND dbid_gen_fk = dbid
             AND id_gen_fk = tblid
             AND colid = col_id;

      RETURN v_genColId;
    EXCEPTION 
      WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'GetGenIdForColumnId: ['  || errMsg ||  ']  svrid:dbid:tblid:col_id ' ||  svrid || ':' || dbid 
                                                                                 || ':' || tblid || ':' || col_id, NULL, NULL, nSvrId);                    
   END GetGenIdForColumnId;

   -- fk -- true returns referencing keys
   -- fk -- false returns referenced keys
   FUNCTION GetKeysFromRecord(refRow STAGE_SYB12_SYSREFERENCES%ROWTYPE, fk BOOLEAN) RETURN key_array
   IS
      v_keys key_array;
      errMsg VARCHAR2(4000);      
   BEGIN
      v_keys := key_array();      
      IF fk = TRUE
      THEN
         IF refRow.fokey1 IS NOT NULL AND refRow.fokey1 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey1;
         END IF;

         IF refRow.fokey2 IS NOT NULL AND refRow.fokey2 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey2;
         END IF;

         IF refRow.fokey3 IS NOT NULL AND refRow.fokey3 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey3;
         END IF;

         IF refRow.fokey4 IS NOT NULL AND refRow.fokey4 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey4;
         END IF;

         IF refRow.fokey5 IS NOT NULL AND refRow.fokey5 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey5;
         END IF;

         IF refRow.fokey6 IS NOT NULL AND refRow.fokey6 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey6;
         END IF;

         IF refRow.fokey7 IS NOT NULL AND refRow.fokey7 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey7;
         END IF;

         IF refRow.fokey8 IS NOT NULL AND refRow.fokey8 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey8;
         END IF;

         IF refRow.fokey9 IS NOT NULL AND refRow.fokey9 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey9;
         END IF;

         IF refRow.fokey10 IS NOT NULL AND refRow.fokey10 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey10;
         END IF;

         IF refRow.fokey11 IS NOT NULL AND refRow.fokey11 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey11;
         END IF;

         IF refRow.fokey12 IS NOT NULL AND refRow.fokey12 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey12;
         END IF;

         IF refRow.fokey13 IS NOT NULL AND refRow.fokey13 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey13;
         END IF;

         IF refRow.fokey14 IS NOT NULL AND refRow.fokey14 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey14;
         END IF;

         IF refRow.fokey15 IS NOT NULL AND refRow.fokey15 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey15;
         END IF;

         IF refRow.fokey16 IS NOT NULL AND refRow.fokey16 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey16;
         END IF;

      ELSE
         IF refRow.refkey1 IS NOT NULL AND refRow.refkey1 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey1;
         END IF;

         IF refRow.refkey2 IS NOT NULL AND refRow.refkey2 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey2;
         END IF;

         IF refRow.refkey3 IS NOT NULL AND refRow.refkey3 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey3;
         END IF;

         IF refRow.refkey4 IS NOT NULL AND refRow.refkey4 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey4;
         END IF;

         IF refRow.refkey5 IS NOT NULL AND refRow.refkey5 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey5;
         END IF;

         IF refRow.refkey6 IS NOT NULL AND refRow.refkey6 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey6;
         END IF;

         IF refRow.refkey7 IS NOT NULL AND refRow.refkey7 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey7;
         END IF;

         IF refRow.fokey8 IS NOT NULL AND refRow.refkey8 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.foKey8;
         END IF;

         IF refRow.refkey9 IS NOT NULL AND refRow.refkey9 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey9;
         END IF;

         IF refRow.refkey10 IS NOT NULL AND refRow.refkey10 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey10;
         END IF;

         IF refRow.refkey11 IS NOT NULL AND refRow.refkey11 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey11;
         END IF;

         IF refRow.refkey12 IS NOT NULL AND refRow.refkey12 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey12;
         END IF;

         IF refRow.refkey13 IS NOT NULL AND refRow.refkey13 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey13;
         END IF;

         IF refRow.refkey14 IS NOT NULL AND refRow.refkey14 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey14;
         END IF;

         IF refRow.refkey15 IS NOT NULL AND refRow.refkey15 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey15;
         END IF;

         IF refRow.refkey16 IS NOT NULL AND refRow.refkey16 >0
         THEN
            v_keys.EXTEND;
            v_keys(v_keys.count) := refRow.refKey16;
         END IF;
      END IF;
      RETURN v_keys;
    EXCEPTION 
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        IF fk = TRUE
        THEN
            LogInfo(NULL, sev_err, 'GetKeysFromRecord: ['  || errMsg ||  ']  refRow:fk ' ||  refRow.foKey1 || ':' || refRow.foKey2 ||
                                                                                  ':' || refRow.foKey3 || ':' || refRow.foKey4
                                                                                 || ':' || refRow.foKey5 || ':' || refRow.foKey6
                                                                                 || ':' || refRow.foKey7 || ':' || refRow.foKey8
                                                                                 || ':' || refRow.foKey9 || ':' || refRow.foKey10
                                                                                 || ':' || refRow.foKey11 || ':' || refRow.foKey12
                                                                                 || ':' || refRow.foKey13 || ':' || refRow.foKey14
                                                                                 || ':' || refRow.foKey15 || ':' || refRow.foKey16
                                                                                 || ':' || 'TRUE', NULL, NULL, nSvrId);  
        ELSE
            LogInfo(NULL, sev_err, 'GetKeysFromRecord: ['  || errMsg ||  ']  refRow:fk ' ||  refRow.refKey1 || ':' || refRow.refKey2 ||
                                                                                  ':' || refRow.refKey3 || ':' || refRow.refKey4
                                                                                 || ':' || refRow.refKey5 || ':' || refRow.refKey6
                                                                                 || ':' || refRow.refKey7 || ':' || refRow.refKey8
                                                                                 || ':' || refRow.refKey9 || ':' || refRow.refKey10
                                                                                 || ':' || refRow.refKey11 || ':' || refRow.refKey12
                                                                                 || ':' || refRow.refKey13 || ':' || refRow.refKey14
                                                                                 || ':' || refRow.refKey15 || ':' || refRow.refKey16
                                                                                 || ':' || 'FALSE', NULL, NULL, nSvrId);            
        END IF;
   END;

   PROCEDURE ProcessFkConstraints(svrid NUMBER, dbid NUMBER, objid NUMBER)
   IS
       CURSOR curReferences(svrid NUMBER, dbid NUMBER, objid NUMBER) IS SELECT * 
                                   FROM stage_syb12_sysreferences 
                                      WHERE svrid_fk = svrid
                                         AND dbid_gen_fk = dbid
                                         AND table_id_gen_fk = objid;

       v_refRow STAGE_SYB12_SYSREFERENCES%ROWTYPE;
       v_constName VARCHAR2(300):=null;
       v_colOrder NUMBER;
       nConsId NUMBER;
       v_keys key_array;
       nColId NUMBER;
       errMsg VARCHAR2(4000);       
   BEGIN
      OPEN curReferences(svrid, dbid, objid);

      LOOP
        BEGIN
         FETCH curReferences INTO v_refRow;
         EXIT WHEN curReferences%NOTFOUND;

         BEGIN
            SELECT "NAME" INTO v_constName 
                    FROM stage_syb12_sysobjects 
                      WHERE objid_gen = v_refRow.constraint_gen_fk;
         EXCEPTION WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'ProcessFkConstraints: Unable to get constraint name ['  || errMsg ||  ']  svrid:dbid:objid:v_refRow.constraint_gen_fk ' ||  svrid || ':' || dbid 
                                                                                 || ':' || objid || ':' || v_refRow.constraint_gen_fk, NULL, NULL, nSvrId);             
           v_constName := 'UNKNOWN'	;
         END;      
          -- TODO: Cross database references for tableid and reftableid needs to be handled
          -- should we add this information into MD_ADDITIONAL properties?

         INSERT INTO MD_CONSTRAINTS("NAME", constraint_type, table_id_fk, reftable_id_fk,
                                   "LANGUAGE")                         
                  VALUES (v_constName, 'FOREIGN KEY', v_refRow.table_id_gen_fk, 
                               v_refRow.ref_table_id_gen_fk, 'STSQL')
                     RETURNING "ID" INTO nConsId;

        v_keys := GetKeysFromRecord(v_refRow, TRUE);
        v_colOrder :=1;

               LOOP
                 BEGIN
                   EXIT WHEN v_colOrder > v_keys.count;
                   -- insert the referencing constraint detail here ...
                   --nColId := v_keys(v_colOrder);

                   SELECT colid_gen INTO nColId FROM stage_syb12_syscolumns 
                                    WHERE svrid_fk = svrid
                                       AND dbid_gen_fk = dbid
                                       AND id_gen_fk = v_refRow.table_id_gen_fk
                                       AND colid = v_keys(v_colOrder);

                   INSERT INTO MD_CONSTRAINT_DETAILS(constraint_id_fk, column_id_fk, detail_order) 
                      VALUES ( nConsId, nColId, v_colOrder);
                   v_colOrder := v_colOrder + 1;
                 EXCEPTION
                   WHEN OTHERS THEN
                     errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                     LogInfo(NULL, sev_err, 'ProcessFkConstraints: Unable process referencing constraint details ['  
                                                || errMsg ||  ']  svrid:dbid:objid:v_refRow.table_id_gen_fk:v_colOrder:v_keys(v_colOrder): ' 
                                                ||  svrid || ':' || dbid 
                                                || ':' || objid || ':' || v_refRow.table_id_gen_fk
                                                || ':' || v_colOrder || ':' || v_keys(v_colOrder), NULL, NULL, nSvrId); 
                    v_colOrder := v_colOrder + 1;                       
                 END;
              END LOOP; -- end of fk keys loop

              v_keys := GetKeysFromRecord(v_refRow, FALSE);
              v_colOrder :=1;
              LOOP
                EXIT WHEN v_colOrder > v_keys.count;
                --insert the referenced constraint detail here ...
                --nColId := v_keys(v_colOrder);
                BEGIN
                    SELECT colid_gen INTO nColId FROM stage_syb12_syscolumns 
                                        WHERE svrid_fk = svrid
                                           AND dbid_gen_fk = dbid
                                           AND id_gen_fk = v_refRow.ref_table_id_gen_fk
                                           AND colid = v_keys(v_colOrder);          

                    INSERT INTO MD_CONSTRAINT_DETAILS(ref_flag, constraint_id_fk, column_id_fk, detail_order) 
                          VALUES ('Y',  nConsId, nColId, v_colOrder);      
                    v_colOrder := v_colOrder + 1;
                EXCEPTION WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'ProcessFkConstraints: Unable process referenced constraint details ['  
                                                || errMsg ||  ']  svrid:dbid:objid:v_refRow.ref_table_id_gen_fk:v_colOrder:v_keys(v_colOrder): ' 
                                                ||  svrid || ':' || dbid 
                                                || ':' || objid || ':' || v_refRow.ref_table_id_gen_fk
                                                || ':' || v_colOrder || ':' || v_keys(v_colOrder), NULL, NULL, nSvrId);  
                   v_colOrder := v_colOrder + 1;                      
                END;            
              END LOOP; -- end of ref keys loop 
        EXCEPTION 
           WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'ProcessFkConstraints: sysreferences loop issue ['  
                                                || errMsg ||  ']  svrid:dbid:objid:v_refRow.table_id_gen_fk:v_refRow.ref_table_id_gen_fk: ' 
                                                ||  svrid || ':' || dbid 
                                                || ':' || objid
                                                || ':' || v_refRow.table_id_gen_fk
                                                || ':' || v_refRow.ref_table_id_gen_fk, NULL, NULL, nSvrId);                                   
        END;
      END LOOP; -- end of sysreferences loop
      CLOSE curReferences;
    EXCEPTION 
      WHEN OTHERS THEN
            errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
            LogInfo(NULL, sev_err, 'ProcessFkConstraints: ['  || errMsg ||  ']  svrid:dbid:objid ' ||  svrid || ':' || dbid 
                                                                                 || ':' || objid, NULL, NULL, nSvrId);    
   END ProcessFkConstraints;

   PROCEDURE CaptureConstraints
   IS
      CURSOR curObjs IS SELECT A.* FROM stage_syb12_sysobjects A, stage_syb12_sysusers B  
                 WHERE A.db_type = 'U ' 
                 AND A.db_uid = B.db_uid 
                 AND A.svrid_fk = B.svrid_fk 
                 AND A.dbid_gen_fk = B.dbid_gen_fk 
                 AND B.suid>0;   
      v_tblcolcnt NUMBER :=0; 
      v_no_const_cols NUMBER :=0;
      v_clust  NUMBER :=0; -- flag for clustered index
      v_nonclust NUMBER :=0; -- flag for non clustered index
      v_constrid NUMBER :=0; -- flag for table check constraint
      v_keycnt NUMBER :=0;  -- more than one check constraint
      v_pmytabid NUMBER :=0; -- flag for fk constraint
      v_reftabid NUMBER :=0; -- flag for ref table constraint      
      errMsg VARCHAR2(4000);      
   BEGIN
       FOR r_c1 IN curObjs
       LOOP

          v_clust := BitAnd(r_c1.sysstat, 16);
          v_nonclust := BitAnd(r_c1.sysstat, 32);
          v_constrid := r_c1.ckfirst;  -- table check constraint
          v_keycnt := BitAnd(r_c1.sysstat2, 4);
          v_pmytabid := BitAnd(r_c1.sysstat2, 2);
          v_reftabid := BitAnd(r_c1.sysstat2, 1);

          IF v_constrid != 0
          THEN
             NULL;
             --Process check constraint here
             ProcessCheckConstraints(r_c1.svrid_fk, r_c1.dbid_gen_fk, r_c1.objid_gen);
          END IF;

          IF v_clust > 0 OR v_nonclust > 0
          THEN
             -- Process Unique and Primary constraints
             ProcessPkUkConstraints(r_c1.svrid_fk, r_c1.dbid_gen_fk, r_c1.objid_gen);
          END IF;

          IF v_pmytabid > 0 OR v_reftabid > 0
          THEN
             -- Process FK constraints
             ProcessFkConstraints(r_c1.svrid_fk, r_c1.dbid_gen_fk, r_c1.objid_gen);
             NULL;
          END IF;
       END LOOP;
    EXCEPTION 
      WHEN OTHERS THEN
        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
        LogInfo(NULL, sev_err, 'CaptureConstraints Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);                        
   END;
   /*
     CURSOR curConstr IS SELECT svrid_fk, dbid_gen_fk, table_id_gen_fk,
                           constraint_name,db_definition FROM stage_syb12_sysconstraints;
     vDbDef VARCHAR2(4000);     
   BEGIN
      FOR r_c1 IN curConstr 
      LOOP
         vDbDef := r_c1.db_definition;
         IF INSTR(vDbDef, ' CHECK ') != 0 THEN  -- Insert a row into MD_Constraints
            ProcessCheckConstraint(r_c1.svrid_fk, r_c1.dbid_gen_fk, 
                   r_c1.table_id_gen_fk, r_c1.constraint_name, r_c1.db_definition);
         ELSIF INSTR(vDbDef, 'PRIMARY KEY ') != 0 THEN
            ProcessPkConstraint(r_c1.svrid_fk, r_c1.dbid_gen_fk, 
                   r_c1.table_id_gen_fk, r_c1.constraint_name, r_c1.db_definition);
         ELSIF INSTR(vDbDef, 'UNIQUE ') != 0 THEN
            ProcessUkConstraint(r_c1.svrid_fk, r_c1.dbid_gen_fk, 
                   r_c1.table_id_gen_fk, r_c1.constraint_name, r_c1.db_definition);
         ELSIF INSTR(vDbDef, ' FOREIGN KEY ') !=0 THEN
            ProcessFkConstraint(r_c1.svrid_fk, r_c1.dbid_gen_fk, 
                   r_c1.table_id_gen_fk, r_c1.constraint_name, r_c1.db_definition);
         END IF;
      END LOOP;
   END CaptureConstraints;
   */
   PROCEDURE CaptureIndexes
   IS 
     vIdxName VARCHAR2(255);
     vIdxKeys VARCHAR2(4000);
     vIdxDesc VARCHAR2(4000);
     vIdxType VARCHAR2(100);
     curIdxCols ref_cur_type;
     nIdxColId INTEGER;
     vIdxCol VARCHAR2(300);
     vc_Unique CONSTANT VARCHAR2(100) := 'unique';
     vc_IndexUnique CONSTANT VARCHAR2(100) := 'UNIQUE';
     vc_IndexNonUnique CONSTANT VARCHAR2(100) := 'NON_UNIQUE';

     inString  INTEGER;
     nDetailOrder NUMBER :=1;
     vlcColName VARCHAR2(300);
     bDescIdx BOOLEAN;
     nIdxDetailId NUMBER;
     nsuid NUMBER;
     idxKeyCols split_varray_type; 
     len pls_integer;
     CURSOR curIndexes IS SELECT A.svrid_fk, A.dbid_gen_fk, A.indid_gen, A.id_gen_fk,
                                    A.index_name, A."INDEX_DESC", A.index_keys, A.indid, A.status2,  B.sysstat 
                                    FROM stage_syb12_sysindexes A, stage_syb12_sysobjects B, stage_syb12_sysusers C  
                              WHERE A.dbid_gen_fk = B.dbid_gen_fk
                                  AND A.svrid_fk = B.svrid_fk
                                --  AND A.suid_gen_fk = B.suid_gen_fk
                                  AND A.id_gen_fk = B.OBJID_GEN
                                  AND A.svrid_fk = nSvrId
                                  AND C.db_uid = B.db_uid 
                                  AND C.svrid_fk = B.svrid_fk 
                                  AND C.dbid_gen_fk = B.dbid_gen_fk 
                                  AND C.suid>0                                       
                                  AND A.KEYCNT >0;--Have to filter this as we capture constraint info into stage_syb12_sysindexes as well

      errMsg VARCHAR2(4000); 
      v_clust NUMBER := 0;
      amIClustered BOOLEAN := TRUE;
      prop_cnt   pls_integer;

   BEGIN
     --SetStatus('Capturing Indexes');
     FOR r_c1 IN curIndexes 
     LOOP
        BEGIN
        v_clust := BitAnd(r_c1.sysstat, 16);
        vIdxName := r_c1.index_name;
        vIdxKeys := TRIM(r_c1.index_keys);
        vIdxDesc := r_c1."INDEX_DESC";
        --nsuid := r_c1.suid_gen_fk;

        inString := InStr(vIdxDesc, vc_Unique);

        IF inString = 0 THEN -- Unique Index
           vIdxType := vc_IndexNonUnique;
        ELSE  -- Non-unique Index
           vIdxType := vc_IndexUnique;
        END IF;        

        --For each of the column shread the detail into the MD_INDEX_DETAILS and MD_ADDITIONAL_PROPERTIES
        --OPEN curIdxCols FOR 'SELECT * FROM table(split_str(:1))' USING vIdxKeys;
        --FETCH curIdxCols INTO vIdxCol;
        IF vIdxKeys IS NOT NULL THEN
             nDetailOrder :=1; -- set it each time before you commence the loop.
            idxKeyCols := split_str2(vIdxKeys);
            len := idxKeyCols.count;

            -- insert index core attributes in md_indexes
            INSERT INTO MD_INDEXES("ID", index_type, table_id_fk, index_name) 
                 VALUES(r_c1.indid_gen, vIdxType, r_c1.id_gen_fk, vIdxName);
             IF ((r_c1.indid = 1) OR ((r_c1.indid > 1) AND (BitAnd(r_c1.status2, 512)=512)))
            THEN
              amIClustered := TRUE;
              INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                  ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                  VALUES(r_c1.svrid_fk,r_c1.indid_gen , 'MD_INDEXES', 1, 'IS_CLUSTERED_INDEX', 'Y');
            ELSE 
              amIClustered := FALSE;
            END IF;
            if (amIClustered = TRUE) -- AND (vIdxType = vc_IndexUnique)) want to mark all indexes cluster to say 'was clustered' 
            THEN --mark table as IndexOrganisedTable
              select count(*) into prop_cnt from MD_ADDITIONAL_PROPERTIES
              where connection_id_fk = r_c1.svrid_fk and ref_id_fk =  r_c1.id_gen_fk 
              and prop_key = 'IS_INDEX_ORGANIZED_TABLE';
              IF (prop_cnt = 0) 
              THEN
                INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                  ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                  VALUES(r_c1.svrid_fk, r_c1.id_gen_fk , 'MD_TABLES', 1, 'IS_INDEX_ORGANIZED_TABLE', 'Y');
              END IF;
            END IF;

            LOOP
               BEGIN
                 EXIT WHEN nDetailOrder > len;
                 vIdxCol := idxKeyCols(nDetailOrder);

                 --EXIT WHEN curIdxCols%NOTFOUND;
                 vlcColName := LOWER(TRIM(vIdxCol));
                 vIdxCol := TRIM(vIdxCol);
                 IF EndsWithStr(vlcColName, ' desc') != 0 THEN
                    vIdxCol := SUBSTR(vlcColName, 1, INSTR(vlcColName, ' desc'));  -- not sure if lower casing will affect the ensuing query
                    bDescIdx := TRUE;
                 ELSE
                    bDescIdx := FALSE;
                 END IF;

                 nIdxColId := GetColIdFromName(r_c1.svrid_fk, r_c1.dbid_gen_fk, r_c1.id_gen_fk, TRIM(vIdxCol));           

                 INSERT INTO MD_INDEX_DETAILS(index_id_fk, column_id_fk, detail_order) 
                        VALUES(r_c1.indid_gen, nIdxColId, nDetailOrder) RETURNING "ID" INTO nIdxDetailId;

                 IF bDescIdx THEN
                      INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                         ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                         VALUES(r_c1.svrid_fk, nIdxDetailId, 'MD_INDEX_DETAIL', nDetailOrder, 'IS_INDEXDETAIL_DESCENDING', 'Y');
                 END IF;

                 --FETCH curIdxCols INTO vIdxCol;
                 nDetailOrder := nDetailOrder + 1;
               EXCEPTION
                  WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'CaptureIndexes: Index detail capture loop issue [' || errMsg ||  '] v_clust:vIdxName:vIdxKeys:vIdxDesc:r_c1.indid_gen:nIdxColId:nDetailOrder: '
                                                               || v_clust || ':'
                                                               || vIdxKeys || ':'
                                                               || vIdxDesc || ':'
                                                               || r_c1.indid_gen || ':'
                                                               || nIdxColId || ':'
                                                               || nDetailOrder, NULL, NULL, nSvrId);
                  IF bDescIdx THEN
                    LogInfo(NULL, sev_err, 'CaptureIndexes: Index detail capture loop issue(DESC) [' || errMsg ||  '] v_clust:vIdxName:vIdxKeys:vIdxDesc:r_c1.svrid_fk:nIdxDetailId:nDetailOrder: '
                                                                 || v_clust || ':'
                                                                 || vIdxKeys || ':'
                                                                 || vIdxDesc || ':'
                                                                 || r_c1.svrid_fk || ':'
                                                                 || nIdxDetailId || ':'
                                                                 || nDetailOrder, NULL, NULL, nSvrId);                                      
                  END IF;
                  nDetailOrder := nDetailOrder + 1;
               END;
            END LOOP;
          END IF; -- vIdxKeys IS NOT NULL
--        CLOSE curIdxCols;
        EXCEPTION 
           WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureIndexes: Master cursor loop issue [' || errMsg ||  '] v_clust:vIdxName:vIdxKeys:vIdxDesc: '
                                                           || v_clust || ':'
                                                           || vIdxKeys || ':'
                                                           || vIdxDesc, NULL, NULL, nSvrId);                
        END;    
     END LOOP;
    EXCEPTION 
      WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureIndexes Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);                        
   END CaptureIndexes;

   PROCEDURE CaptureViews
   IS
      CURSOR curViews IS SELECT DISTINCT A.objid_gen, A."NAME", a.suid_gen_fk, a.dbid_gen_fk 
                            FROM stage_syb12_sysobjects A, stage_syb12_sysusers B 
                            WHERE A.db_type='V '
                                  AND A.db_uid = B.db_uid 
                                  AND A.svrid_fk = B.svrid_fk 
                                  AND A.dbid_gen_fk = B.dbid_gen_fk 
                                  AND B.suid>0                                                                  
                                 AND A.svrid_fk = nSvrId AND A.name <> 'sysquerymetrics';  -- process every view object pulled from this server

      curViewSql ref_cur_type;
      clbNativeSql CLOB := TO_CLOB(' ');
      vNativeSqlPiece VARCHAR2(4000);
      errMsg VARCHAR2(4000);      
   BEGIN
            --SetStatus('Capturing Views');
      FOR r_c1 IN curViews
      LOOP
          BEGIN
             OPEN curViewSql FOR 'SELECT B."TEXT" FROM stage_syb12_sysobjects A, stage_syb12_syscomments B         
                     WHERE A."OBJID_GEN" = B."ID_GEN_FK" 
                       AND A."OBJID_GEN"=:1 
                       AND A.dbid_gen_fk = B.dbid_gen_fk
                       AND B.dbid_gen_fk = :2
                       AND A.svrid_fk = B.svrid_fk
                       AND A.svrid_fk = :3
                       ORDER BY colid' USING r_c1."OBJID_GEN", r_c1.dbid_gen_fk, nSvrId;
             FETCH curViewSql INTO vNativeSqlPiece;
             LOOP
                EXIT WHEN curViewSql%NOTFOUND;
                IF vNativeSqlPiece IS NULL
                THEN
                   vNativeSqlPiece := ' ';
                END IF;
                DBMS_LOB.writeappend(clbNativeSql, LENGTH(vNativeSqlPiece), vNativeSqlPiece);            
                FETCH curViewSql INTO vNativeSqlPiece;
             END LOOP; -- inner ref cursor loop
             CLOSE curViewSql;
             INSERT INTO MD_VIEWS("ID", schema_id_fk, view_name, native_sql, "LANGUAGE") 
                      VALUES(r_c1.objid_gen, r_c1.suid_gen_fk, r_c1."NAME", clbNativeSql, 'STSQL');
             clbNativeSql  := TO_CLOB(' ');    -- reset clob              
          EXCEPTION
             WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureViews: Issue opening sql text cursor [' || errMsg ||  '] r_c1."OBJID_GEN":r_c1.dbid_gen_fk:nSvrId: ' ||
                                                                               r_c1."OBJID_GEN" || ':' 
                                                                            || r_c1.dbid_gen_fk || ':'
                                                                            || nSvrId, NULL, NULL, nSvrId);  
              clbNativeSql := TO_CLOB(' '); --reset clob                      
          END;
      END LOOP;
    EXCEPTION 
      WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureViews Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);                        
   END CaptureViews;

   PROCEDURE CaptureStoredPrograms
   IS
      -- In Sybase Grouped Procedures C.db_number can have values >= 1.
      CURSOR curSP IS SELECT DISTINCT A.svrid_fk, A.dbid_gen_fk, A.objid_gen, A.db_type, A."NAME", a.suid_gen_fk, C.db_number
                            FROM stage_syb12_sysobjects A, stage_syb12_sysusers B, stage_syb12_syscomments C
                            WHERE ( A.db_type='P ' 
                                 OR A.db_type = 'SF' 
                                 OR A.db_type = 'FN' 
                                 OR A.db_type = 'TF' 
                                 OR A.db_type = 'IF' )
                                  AND A.db_uid = B.db_uid 
                                  AND A.svrid_fk = B.svrid_fk 
                                  AND C.svrid_fk = A.svrid_fk
                                  AND A.dbid_gen_fk = B.dbid_gen_fk 
                                  AND C.dbid_gen_fk = A.dbid_gen_fk
                                  AND C.id = A.id 
                                  AND B.suid>0                                                                       
                                  AND A.svrid_fk = nSvrId;  -- process every SP object pulled from this server

      curSPSql ref_cur_type;
      vType VARCHAR2(100);
      vSPType VARCHAR2(100);
      vAdditionalProp VARCHAR2 (200) :=NULL;
      clbNativeSql CLOB := TO_CLOB(' ');
      vNativeSqlPiece VARCHAR2(4000);
      errMsg VARCHAR2(4000);      
   BEGIN
            --SetStatus('Capturing Stored Programs');
      FOR r_c1 IN curSP
      LOOP
      BEGIN
         --TODO: Handle Encryped SQL case where we may get an exception.
         OPEN curSPSql FOR 'SELECT B."TEXT" FROM stage_syb12_sysobjects A, stage_syb12_syscomments B        
 		             WHERE A."OBJID_GEN" = B."ID_GEN_FK" 
                 AND B."ID_GEN_FK"=:1 
                 AND A.dbid_gen_fk = B.dbid_gen_fk
                 AND A.dbid_gen_fk = :2
                 AND A.svrid_fk = B.svrid_fk
                 AND A.svrid_fk = :3
                 AND B.db_number = :4
                 ORDER BY colid' USING r_c1."OBJID_GEN", r_c1.dbid_gen_fk, nSvrId, r_c1.db_number;

         FETCH curSPSql INTO vNativeSqlPiece;
         LOOP
         BEGIN
            EXIT WHEN curSPSql%NOTFOUND;
            IF vNativeSqlPiece IS NULL
            THEN
               vNativeSqlPiece := ' ';
            END IF;
            DBMS_LOB.writeappend(clbNativeSql, LENGTH(vNativeSqlPiece), vNativeSqlPiece);            
            FETCH curSPSql INTO vNativeSqlPiece;
         EXCEPTION 
            WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureStoredPrograms : Issue building the sp text lob [' || errMsg ||  '] r_c1."OBJID_GEN":r_c1.dbid_gen_fk:nSvrId: '
                                                                || r_c1."OBJID_GEN" || ':'
                                                                || r_c1.dbid_gen_fk || ':'
                                                                || nSvrId, NULL, NULL, nSvrId);                        
         END;         
         END LOOP; -- inner ref cursor loop
         CLOSE curSPSql;

         vType := TRIM(r_c1.db_type);

         IF vType = 'FN'  THEN
           vSPType := 'FUNCTION';
           vAdditionalProp := 'SCALAR FUNCTION';
         ELSIF vType = 'SF'  THEN
           vSPType := 'FUNCTION';
           vAdditionalProp := 'FUNCTION';  
         ELSIF  vType = 'IF' THEN
           vSPType := 'FUNCTION'; 
           vAdditionalProp := 'INLINED T. FUNCTION';
         ELSIF vType = 'TF' THEN
           vSPType := 'FUNCTION';
           vAdditionalProp := 'TABLE FUNCTION';
         ELSE
           vSPType := 'PROCEDURE';
         END IF;

         IF r_c1.db_number > 1 THEN -- for grouped procedures db_number will be > 1.
           INSERT INTO md_stored_programs(schema_id_fk, programtype, 
                                         "NAME", native_sql, "LANGUAGE") 
                VALUES(r_c1.suid_gen_fk, vSPType, r_c1."NAME", clbNativeSql, 'STSQL');
         ELSE       
           INSERT INTO md_stored_programs("ID", 
                                         schema_id_fk, programtype, 
                                         "NAME", native_sql, "LANGUAGE") 
                VALUES(r_c1.objid_gen, r_c1.suid_gen_fk, vSPType, r_c1."NAME", clbNativeSql, 'STSQL');
         END IF;

         IF vAdditionalProp IS NOT NULL THEN
            INSERT INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, 
                                                 ref_id_fk, 
                                                 ref_type,
                                                 property_order,
                                                 prop_key,
                                                 "VALUE")
                   VALUES(r_c1.svrid_fk, r_c1.objid_gen, 'MD_STORED_PROGRAMS', 1,'TYPE', vAdditionalProp);
         END IF;
         clbNativeSql := TO_CLOB(' ');        -- reset clob
         EXCEPTION
            WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureStoredPrograms : Issue opening master cursor or capturing sp list [' || errMsg ||  '] r_c1."OBJID_GEN":r_c1.dbid_gen_fk:nSvrId: '
                                                                || r_c1."OBJID_GEN" || ':'
                                                                || r_c1.dbid_gen_fk || ':'
                                                                || nSvrId, NULL, NULL, nSvrId);                        
         END;
      END LOOP;
    EXCEPTION 
      WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureStoredPrograms Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);                        
   END CaptureStoredPrograms;      

   PROCEDURE CaptureTriggers
   IS
      CURSOR curObjTrig IS SELECT A.svrid_fk, A.dbid_gen_fk, A.objid_gen, A.deltrig triggerID, A.db_type 
                               FROM stage_syb12_sysobjects A, stage_syb12_sysusers B 
                               WHERE (A.db_type = 'U ' OR A.db_type = 'V ') 
                                  AND   (A.DELTRIG IS NOT NULL AND A.DELTRIG>0) --DELETE triggers
                                  AND A.db_uid = B.db_uid 
                                  AND A.svrid_fk = B.svrid_fk 
                                  AND A.dbid_gen_fk = B.dbid_gen_fk 
                                  AND B.suid>0
                                  AND A.svrid_fk = nSvrId 
UNION
SELECT A.svrid_fk, A.dbid_gen_fk, A.objid_gen,A.updtrig triggerID, A.db_type 
                               FROM stage_syb12_sysobjects A, stage_syb12_sysusers B 
                               WHERE (A.db_type = 'U ' OR A.db_type = 'V ') 
                                AND   (A.UPDTRIG IS NOT NULL AND A.UPDTRIG >0) --UPDATE TRIGGERS    
                                  AND A.db_uid = B.db_uid 
                                  AND A.svrid_fk = B.svrid_fk 
                                  AND A.dbid_gen_fk = B.dbid_gen_fk 
                                  AND B.suid>0
     							  AND A.svrid_fk = nSvrId	 	                              
UNION
SELECT A.svrid_fk, A.dbid_gen_fk, A.objid_gen, A.instrig triggerID, A.db_type 
                               FROM stage_syb12_sysobjects A, stage_syb12_sysusers B 
                               WHERE (A.db_type = 'U ' OR A.db_type = 'V ') 
                                AND   (A.INSTRIG IS NOT NULL AND A.INSTRIG>0) --INSERT TRIGGERS
                                  AND A.db_uid = B.db_uid 
                                  AND A.svrid_fk = B.svrid_fk 
                                  AND A.dbid_gen_fk = B.dbid_gen_fk 
                                  AND B.suid>0                                                                   
                                  AND A.svrid_fk = nSvrId;


      curTrigSql ref_cur_type;
      curTrigText ref_cur_type;
      clbNativeSql CLOB := TO_CLOB(' ');
      vNativeSqlPiece VARCHAR2(4000);   
      nTrigSvrId NUMBER;
      nTrigDbId NUMBER;
      nTrigId NUMBER;
      vTrigName VARCHAR2(300);
      vTriggerOn VARCHAR2(300);
      nTableOrViewId NUMBER;
      errMsg VARCHAR2(4000);
   BEGIN
            --SetStatus('Capturing Triggers');
      FOR r_c1 IN curObjTrig
      LOOP
        BEGIN
           OPEN curTrigSql FOR 'SELECT A.svrid_fk, A.dbid_gen_fk, A.objid_gen, A."NAME"
                                         FROM stage_syb12_sysobjects A, stage_syb12_sysusers B 
                                         WHERE A."ID" = :1
                                           AND A.dbid_gen_fk = :2
                                           AND A.svrid_fk = :3
                                           AND A.db_uid = B.db_uid 
                                           AND A.svrid_fk = B.svrid_fk 
                                           AND A.dbid_gen_fk = B.dbid_gen_fk 
                                           AND B.suid>0'                                                                                                                 
                                           USING r_c1.triggerID, 
                                                 r_c1.dbid_gen_fk,
                                                 r_c1.svrid_fk;
           FETCH curTrigSql INTO nTrigSvrId, nTrigDbId, nTrigId, vTrigName;

           LOOP
             BEGIN
                EXIT WHEN curTrigSql%NOTFOUND;            
                OPEN curTrigText FOR 'SELECT B."TEXT" FROM stage_syb12_sysobjects A, stage_syb12_syscomments B        
                     WHERE A.svrid_fk = B.svrid_fk
                          AND A.svrid_fk = :1
                          AND A.dbid_gen_fk = B.dbid_gen_fk
                          AND A.dbid_gen_fk = :2
                          AND A."OBJID_GEN" = B."ID_GEN_FK"
                          AND B."ID_GEN_FK" = :3
                     ORDER BY colid'  USING nTrigSvrId, nTrigDbId, nTrigId;
                FETCH curTrigText INTO vNativeSqlPiece;
                --TODO: Handle Encryped trigger text case where we may get an exception.
                LOOP
                  BEGIN
                     EXIT WHEN curTrigText%NOTFOUND;
                     IF vNativeSqlPiece IS NULL
                     THEN
                        vNativeSqlPiece := ' ';
                     END IF;
                     DBMS_LOB.writeappend(clbNativeSql, LENGTH(vNativeSqlPiece), vNativeSqlPiece);               
                     FETCH curTrigText INTO vNativeSqlPiece; 
                  EXCEPTION
                     WHEN OTHERS THEN
                        errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                        LogInfo(NULL, sev_err, 'CaptureTriggers : Issue building trigger text blob [' || errMsg ||  '] nTrigSvrId:nTrigDbId:nTrigId: '
                                                                          || nTrigSvrId || ':'
                                                                          || nTrigDbId || ':'
                                                                          || nTrigId, NULL, NULL, nSvrId); 
                       FETCH curTrigText INTO vNativeSqlPiece; 
                  END;
                END LOOP; -- end of trig text loop

                IF r_c1.db_type = 'U ' THEN
                   vTriggerOn :='T';
                ELSIF r_c1.db_type = 'V ' THEN
                   vTriggerOn :='V';
                END IF;

                nTableOrViewId := r_c1.objid_gen; --id of view or table object

                INSERT INTO MD_TRIGGERS("ID", 
                                        table_or_view_id_fk, 
                                        trigger_on_flag,
                                        trigger_name,
                                        native_sql,
                                        "LANGUAGE")
                                 VALUES(nTrigId, 
                                        nTableOrViewId,
                                        vTriggerOn,
                                        vTrigName,
                                        clbNativeSql,
                                        'STSQL');

                FETCH curTrigSql INTO nTrigSvrId, nTrigDbId, nTrigId, vTrigName;
                clbNativeSql := TO_CLOB(' ');
             EXCEPTION
                WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'CaptureTriggers : Issue capturing trigger detail [' || errMsg ||  '] nTrigSvrId:nTrigDbId:nTrigId: '
                                                                    || nTrigSvrId || ':'
                                                                    || nTrigDbId || ':'
                                                                    || nTrigId, NULL, NULL, nSvrId); 
                  clbNativeSql := TO_CLOB(' '); 
             END;
           END LOOP; -- end of trigger selection loop
           CLOSE curTrigSql;
        EXCEPTION
           WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureTriggers : Issue opening master cursor or capturing trigger list [' || errMsg ||  '] r_c1.triggerID:r_c1.dbid_gen_fk:r_c1.svrid_fk: '
                                                                || r_c1.triggerID || ':'
                                                                || r_c1.dbid_gen_fk || ':'
                                                                || r_c1.svrid_fk, NULL, NULL, nSvrId);  
        END;
      END LOOP; -- end of trigger base object selection loop
    EXCEPTION 
      WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureTriggers Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);                        
   END;

   PROCEDURE CaptureUDT
   IS
         errMsg VARCHAR2(4000);   
   BEGIN
           -- SetStatus('Capturing UDT');
	   INSERT INTO MD_USER_DEFINED_DATA_TYPES (
		SCHEMA_ID_FK,
		DATA_TYPE_NAME,
		DEFINITION,
		NATIVE_SQL,
		NATIVE_KEY,
		COMMENTS,
		SECURITY_GROUP_ID,
		CREATED_ON,
		CREATED_BY,
		LAST_UPDATED_ON,
		LAST_UPDATED_BY)
		WITH lowestType AS ( SELECT DISTINCT db_type ,MIN(usertype) usertypex FROM stage_syb12_systypes x GROUP BY db_type ),
		     lowestSchema AS ( SELECT min(A.suid_gen) MIN_SUID_GEN FROM stage_syb12_sysusers A WHERE A.svrid_fk = nSvrId AND A.suid>0 AND A.db_uid IN (SELECT DISTINCT db_uid FROM stage_syb12_sysobjects)    )
		SELECT DISTINCT
		(SELECT MIN_SUID_GEN FROM lowestSchema), 
		y.NAME UDTNAME,
                SYB12ALLPLATFORM.GetDescription(x.NAME, y.prec, y.scale, y.length) definition,
	        SYB12ALLPLATFORM.GetDescription(x.NAME, y.prec, y.scale, y.length),
		'0',
		NULL,
		0,
		SYSDATE,
		NULL,
		NULL,
		NULL
		FROM stage_syb12_systypes y, stage_syb12_systypes x, lowestType l
		WHERE y.db_type = l.db_type
		AND x.usertype = l.usertypex
		AND y.usertype > 100;
    EXCEPTION 
      WHEN OTHERS THEN
              errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
              LogInfo(NULL, sev_err, 'CaptureUDT Failed [' || errMsg ||  '] ', NULL, NULL, nSvrId);  
    END CaptureUDT;

   PROCEDURE CaptureEntireStage
   IS
   BEGIN
      CaptureConnections;
      COMMIT;
      CaptureDatabases;
       COMMIT;
      CaptureSchemas;
       COMMIT;
      CaptureTables;
       COMMIT;
      CaptureColumns;
       COMMIT;
      CaptureConstraints;
       COMMIT;
      CaptureIndexes;
       COMMIT;
      CaptureViews;
       COMMIT;
      CaptureStoredPrograms;
       COMMIT;
      CaptureTriggers;
       COMMIT;
      CaptureUDT;
       COMMIT;
   END CaptureEntireStage;

   PROCEDURE FixSysDatabases  -- nothing to do for databases
   IS
   BEGIN
      NULL;
   END FixSysDatabases;

   PROCEDURE FixSysUsers  -- nothing to do for schemas
   IS
   BEGIN
      NULL;
   END FixSysUsers;

   PROCEDURE FixSysObjects
   IS
     curObjs ref_cur_type;
     nSuid NUMBER;
     nDbuid NUMBER;
     objSql VARCHAR2(4000) := 'SELECT distinct db_uid FROM stage_syb12_sysobjects
          WHERE svrid_fk = :1 and dbid_gen_fk=:2';

     CURSOR curDb IS SELECT dbid_gen FROM stage_syb12_sysdatabases WHERE svrid_fk = nSvrId;
     errMsg VARCHAR2(4000);
   BEGIN

      FOR r_c1 IN curDb
      LOOP
      BEGIN
         OPEN curObjs FOR objSql USING nsvrid, r_c1.dbid_gen;
         FETCH curObjs INTO nDbuid;
         LOOP  -- loop through sysobjects for each of the distinct uid & fix the generated suid
         BEGIN
             EXIT WHEN curObjs%NOTFOUND;

             -- assuming 1 to 1 correspondance between suid and uid within a database
             SELECT suid_gen INTO nSuid 
               FROM stage_syb12_sysusers 
               WHERE db_uid = nDbuid
               AND dbid_gen_fk = r_c1.dbid_gen;

             UPDATE stage_syb12_sysobjects
               SET suid_gen_fk = nSuid 
                 WHERE db_uid = nDbuid 
                 AND dbid_gen_fk = r_c1.dbid_gen
                 and svrid_fk = nSvrId;

             FETCH curObjs INTO nDbuid;
        EXCEPTION 
          WHEN OTHERS THEN
                  errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                  LogInfo(NULL, sev_err, 'FixSysObjects Inner cursor issue [' || errMsg ||  '] nsvrid:r_c1.dbid_gen:nDbuid:nSuid: ' || nsvrid || ':' 
                                               || r_c1.dbid_gen || ':' || nDbuid || ':' || nSuid, NULL, NULL, nSvrId); 
                  FETCH curObjs INTO nDbuid;                                
         END;    
         END LOOP; -- sysobjects loop
         CLOSE curObjs;
      EXCEPTION 
        WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'FixSysObjects Master cursor issue [' || errMsg ||  '] nsvrid:r_c1.dbid_gen: ' || nsvrid || ':' || r_c1.dbid_gen, NULL, NULL, nSvrId);                    
      END;
      END LOOP; -- sysdatabases loop      
   END FixSysObjects;

   PROCEDURE FixSysIndexes
   IS
     CURSOR curIndexRec IS SELECT distinct B."TABLE_ID", A.objid_gen, A.svrid_fk, A.dbid_gen_fk
                  FROM STAGE_SYB12_SYSOBJECTS A, STAGE_SYB12_SYSINDEXES B
                  WHERE A.dbid_gen_fk = B.dbid_gen_fk
                    AND A.svrid_fk = B.svrid_fk
                    AND B.svrid_fk = nSvrId
                    AND A."ID" = B."TABLE_ID";
    errMsg VARCHAR2(4000) := NULL;
   BEGIN
      FOR r_c1 IN curIndexRec
      LOOP
      BEGIN
         UPDATE STAGE_SYB12_SYSINDEXES SET id_gen_fk = r_c1.objid_gen WHERE "TABLE_ID" = r_c1."TABLE_ID" AND svrid_fk = r_c1.svrid_fk AND dbid_gen_fk = r_c1.dbid_gen_fk;
      EXCEPTION 
        WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'FixSysIndexes Master cursor issue [' || errMsg ||  '] r_c1."TABLE_ID":r_c1.svrid_fk:r_c1.dbid_gen_fk: ' || r_c1."TABLE_ID" || ':' || r_c1.svrid_fk || ':'
                                                                               || r_c1.dbid_gen_fk, NULL, NULL, nSvrId);                             
      END;
      END LOOP;
   END FixSysIndexes;

   PROCEDURE FixSysColumns
   IS
     CURSOR curColRec IS SELECT A.svrid_fk svrid_fk,A.dbid_gen_fk,  B."ID", A.objid_gen 
                  FROM STAGE_SYB12_SYSOBJECTS A, STAGE_SYB12_SYSCOLUMNS B
                  WHERE A.dbid_gen_fk = B.dbid_gen_fk
                    AND A.svrid_fk = B.svrid_fk
                    AND B.svrid_fk = nSvrId
                    AND A."ID" = B."ID";  
      errMsg VARCHAR2(4000) := NULL;
   BEGIN
      FOR r_c1 IN curColRec
      LOOP
      BEGIN
         UPDATE STAGE_SYB12_SYSCOLUMNS SET id_gen_fk = r_c1.objid_gen WHERE "ID" = r_c1."ID" AND svrid_fk = r_c1.svrid_fk AND dbid_gen_fk = r_c1.dbid_gen_fk;
      EXCEPTION
        WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'FixSysColumns Master cursor issue [' || errMsg ||  '] r_c1."ID":r_c1.svrid_fk:r_c1.dbid_gen_fk: ' || r_c1."ID" || ':' || r_c1.svrid_fk || ':'
                                                                               || r_c1.dbid_gen_fk, NULL, NULL, nSvrId);                                   
      END;
      END LOOP;
   END FixSysColumns;

   PROCEDURE FixSysComments
   IS
     CURSOR curCommentsRec IS SELECT distinct B."ID", A.objid_gen, A.dbid_gen_fk, A.svrid_fk  
                  FROM STAGE_SYB12_SYSOBJECTS A, STAGE_SYB12_SYSCOMMENTS B
                  WHERE A.dbid_gen_fk = B.dbid_gen_fk
                    AND A.svrid_fk = B.svrid_fk
                    AND B.svrid_fk = nSvrId
                    AND A."ID" = B."ID";      
     errMsg VARCHAR2(4000) := NULL;
   BEGIN
      FOR r_c1 IN curCommentsRec
      LOOP
      BEGIN
         UPDATE STAGE_SYB12_SYSCOMMENTS SET id_gen_fk = r_c1.objid_gen WHERE "ID" = r_c1."ID" AND svrid_fk = r_c1.svrid_fk AND dbid_gen_fk = r_c1.dbid_gen_fk;
      EXCEPTION 
        WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'FixSysComments Master cursor issue [' || errMsg ||  '] r_c1."ID":r_c1.svrid_fk:r_c1.dbid_gen_fk: ' || r_c1."ID" || ':' || r_c1.svrid_fk || ':'
                                                                               || r_c1.dbid_gen_fk, NULL, NULL, nSvrId);                                            
      END;
      END LOOP;
   END FixSysComments;

   PROCEDURE FixSysConstraints
   IS
      CURSOR curObjs IS SELECT * FROM stage_syb12_sysobjects;
      CURSOR curDB IS SELECT * FROM stage_syb12_sysdatabases;
   BEGIN
       --FixSysConstraints & FixSysReferences
       FOR r_c1 IN curDB
       LOOP
          BEGIN
             UPDATE stage_syb12_sysreferences
                SET frgn_dbid_gen_fk = r_c1.dbid_gen
                WHERE svrid_fk = r_c1.svrid_fk
                AND frgndbid = r_c1.dbid;

             UPDATE stage_syb12_sysreferences
                SET pmry_dbid_gen_fk = r_c1.dbid_gen
                WHERE svrid_fk = r_c1.svrid_fk
                AND pmrydbid = r_c1.dbid; 

          EXCEPTION WHEN NO_DATA_FOUND THEN
                 NULL;
          END;                    
       END LOOP;

       FOR r_c1 IN curObjs
       LOOP
          BEGIN
             UPDATE stage_syb12_sysconstraints
                 SET table_id_gen_fk = r_c1.objid_gen
                 WHERE svrid_fk = r_c1.svrid_fk
                     AND dbid_gen_fk = r_c1.dbid_gen_fk
                     AND tableid = r_c1."ID";  

             UPDATE stage_syb12_sysconstraints
                 SET constraint_gen = r_c1.objid_gen
                 WHERE svrid_fk = r_c1.svrid_fk
                     AND dbid_gen_fk = r_c1.dbid_gen_fk
                     AND constrid = r_c1."ID";  

             UPDATE STAGE_SYB12_SYSREFERENCES
                 SET constraint_gen_fk = r_c1.objid_gen
                 WHERE svrid_fk = r_c1.svrid_fk
                     AND dbid_gen_fk = r_c1.dbid_gen_fk
                     AND constrid = r_c1."ID";  

             UPDATE STAGE_SYB12_SYSREFERENCES
                 SET table_id_gen_fk = r_c1.objid_gen
                 WHERE svrid_fk = r_c1.svrid_fk
                     AND dbid_gen_fk = r_c1.dbid_gen_fk
                     AND tableid = r_c1."ID";  

             UPDATE STAGE_SYB12_SYSREFERENCES
                 SET ref_table_id_gen_fk = r_c1.objid_gen
                 WHERE svrid_fk = r_c1.svrid_fk
                     AND dbid_gen_fk = r_c1.dbid_gen_fk
                     AND reftabid = r_c1."ID";  

          EXCEPTION WHEN NO_DATA_FOUND THEN
                 NULL;
          END;          
       END LOOP;
       NULL;
   END;
   /*
     CURSOR curConstraintRec IS SELECT distinct B."TABLE_ID", A.objid_gen, A.dbid_gen_fk, A.svrid_fk   
                  FROM STAGE_SYB12_SYSOBJECTS A, STAGE_SYB12_SYSCONSTRAINTS B
                  WHERE A.dbid_gen_fk = B.dbid_gen_fk
                    AND A.svrid_fk = B.svrid_fk
                    AND B.svrid_fk = nSvrId
                    AND A."ID" = B."TABLE_ID";         
   BEGIN
      FOR r_c1 IN curConstraintRec
      LOOP
         UPDATE STAGE_SYB12_SYSCONSTRAINTS SET table_id_gen_fk = r_c1.objid_gen WHERE "TABLE_ID" = r_c1."TABLE_ID" AND svrid_fk = r_c1.svrid_fk AND dbid_gen_fk = r_c1.dbid_gen_fk;
      END LOOP;
   END FixSysConstraints;
   */
   PROCEDURE FixSysTypes
   IS
   BEGIN
      NULL;
   END FixSysTypes;

   PROCEDURE FixTranslatedSQL
   IS
      CURSOR curObjs IS SELECT * FROM STAGE_SYB12_SYSOBJECTS;
      errMsg VARCHAR2(4000) := NULL;
   BEGIN
      FOR r_c1 IN curObjs
      LOOP
      BEGIN
         UPDATE STAGE_TRANSLATEDSQL 
            SET OBJ_ID_FK = r_c1.OBJID_GEN
            WHERE SERVER_ID_FK = r_c1.SVRID_FK
               AND DB_ID_FK = r_c1.DBID_GEN_FK
               --AND SCHEMA_ID_FK = r_c1.DB_UID
               AND OBJ_ID_FK = r_c1.ID;
      EXCEPTION
        WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'FixTranslatedSQL Master cursor issue [' || errMsg ||  '] r_c1.OBJID_GEN:r_c1.svrid_fk:r_c1.dbid_gen_fk: ' || r_c1.OBJID_GEN || ':' || r_c1.svrid_fk || ':'
                                                                               || r_c1.dbid_gen_fk, NULL, NULL, nSvrId);                                                  
      END;
      END LOOP;
      COMMIT;
   END FixTranslatedSQL;

   PROCEDURE UpdateScratchModel
   IS
      CURSOR curDerived IS SELECT * FROM MD_DERIVATIVES WHERE DERIVED_TYPE IN ('MD_VIEWS', 
                                                   'MD_STORED_PROGRAMS', 'MD_TRIGGERS') AND (derivative_reason IS NULL OR derivative_reason <> 'SCRATCH');
      v_TransSQL CLOB;
      v_SourceSQL CLOB;
      errMsg VARCHAR2(4000);
   BEGIN
      FOR r_c1 IN curDerived
      LOOP
         BEGIN
           SELECT trans_sql,native_sql INTO v_TransSQL,v_SourceSQL 
                             FROM STAGE_TRANSLATEDSQL
                             WHERE OBJ_ID_FK = r_c1.SRC_ID;
           IF v_TransSQL IS NOT NULL 
           THEN  
             IF r_c1.DERIVED_TYPE = 'MD_VIEWS'
             THEN
                UPDATE MD_VIEWS 
                   SET NATIVE_SQL = v_TransSQL, "LANGUAGE" = 'OracleSQL'
                      WHERE ID = r_c1.DERIVED_ID;
             ELSIF r_c1.DERIVED_TYPE = 'MD_STORED_PROGRAMS' THEN
                UPDATE MD_STORED_PROGRAMS 
                   SET NATIVE_SQL = v_TransSQL, "LANGUAGE" = 'OracleSQL'
                      WHERE ID = r_c1.DERIVED_ID;
             ELSIF r_c1.DERIVED_TYPE = 'MD_TRIGGERS' THEN
                UPDATE MD_TRIGGERS 
                   SET NATIVE_SQL = v_TransSQL, "LANGUAGE" = 'OracleSQL'
                      WHERE ID = r_c1.DERIVED_ID;
             END IF;
          ELSE   
              IF r_c1.DERIVED_TYPE = 'MD_VIEWS'
             THEN
                UPDATE MD_VIEWS 
                   SET NATIVE_SQL = v_sourceSQL
                      WHERE ID = r_c1.DERIVED_ID;
             ELSIF r_c1.DERIVED_TYPE = 'MD_STORED_PROGRAMS' THEN
                UPDATE MD_STORED_PROGRAMS 
                   SET NATIVE_SQL = v_sourceSQL
                      WHERE ID = r_c1.DERIVED_ID;
             ELSIF r_c1.DERIVED_TYPE = 'MD_TRIGGERS' THEN
                UPDATE MD_TRIGGERS 
                   SET NATIVE_SQL = v_sourceSQL
                      WHERE ID = r_c1.DERIVED_ID;
             END IF;
          END IF;   
         EXCEPTION 
            WHEN NO_DATA_FOUND THEN
               NULL;
            WHEN OTHERS THEN
                errMsg := LOCALSUBSTRB(dbms_utility.format_error_stack || ' : ' || dbms_utility.format_error_backtrace);
                LogInfo(NULL, sev_err, 'UpdateScratchModel Master cursor issue [' || errMsg ||  '] r_c1.SRC_ID:r_c1.DERIVED_ID:r_c1.DERIVED_TYPE: ' || r_c1.SRC_ID || ':' || r_c1.DERIVED_ID || ':'
                                                                               || r_c1.DERIVED_TYPE, NULL, NULL, nSvrId);                                                              
         END;
      END LOOP;

   END;

   PROCEDURE FixStageKeyReferences
   IS
   BEGIN
       FixSysDatabases;
       FixSysUsers;
       FixSysObjects;
       FixTranslatedSQL;
       FixSysColumns;       
       FixSysComments;       
       FixSysConstraints;       
       FixSysIndexes;
       FixSysTypes;
   END;

   PROCEDURE RegisterSybasePlugin
   IS
   BEGIN
      INSERT INTO md_additional_properties(
                                            connection_id_fk, 
                                            ref_id_fk, 
                                            ref_type,
                                            property_order,
                                            prop_key,
                                            "VALUE"
                                          ) 
                                          VALUES
                                          (
                                             nSvrId,
                                             nSvrId,
                                             'MD_CONNECTIONS',
                                             0,
                                             'PLUGIN_ID',
                                             pluginClass -- might be 12 or 15
                                          );
      COMMIT;                                          
   END;


 FUNCTION StageCapture(projectId NUMBER, pluginClassIn varchar2, pjExists BOOLEAN := FALSE, p_scratchModel BOOLEAN := FALSE) RETURN VARCHAR2
   IS
     ret_val NAME_AND_COUNT_ARRAY;
     scratchConnId NUMBER :=0;
     connectionStatsResult NUMBER;
     n number:=0;
   BEGIN
      -- What should be done when the project with this id is already captured??
      exceptionOccurred :=FALSE;
      nProjectId := projectId;
      projectExist := pjExists;
      pluginClass := pluginClassIn;

      -- NOTE that nSvrId is the capture connection id (with a really bad name)
      SELECT svrid into nSvrId FROM STAGE_SERVERDETAIL
          WHERE project_id = projectId;

      -- Initialize the log status table
       INSERT INTO migrlog(parent_log_id, log_date, severity, logtext, phase, ref_object_id, ref_object_type, connection_id_fk) 
             VALUES(NULL, systimestamp, 666, 'Capture Started', 'CAPTURE', NULL, NULL, projectId);

       COMMIT;          
      --SetStatus('Capture processing started');          
      FixStageKeyReferences;      
      CaptureEntireStage;
      RegisterSybasePlugin;  -- pre-requisite for conversion to work correctly. e.g data type mapping.

      connectionStatsResult:=MIGRATION.gatherConnectionStats(nSvrId,'This is a capture model created using the enterprise estimation cmd tool');
      COMMIT;
      MIGRATION.POPULATE_DERIVATIVES_TABLE(nSvrId); --new identifier mapping setup
      COMMIT;      
      IF p_scratchModel = TRUE
      THEN
	      scratchConnId := MIGRATION.copy_connection_cascade(p_connectionid =>  nSvrId, p_scratchModel =>  TRUE);            
	      ret_val := migration.transform_all_identifiers(scratchConnId, '',  TRUE);
	      UpdateScratchModel;
        connectionStatsResult:=MIGRATION.gatherConnectionStats(scratchConnId,'This is a scratch model used for analysis and estimation');
        COMMIT;
      END IF;
      DELETE migrlog WHERE phase='CAPTURE' AND severity = 666 AND connection_id_fk = projectId;
      COMMIT; 

      --IF exceptionOccurred = TRUE THEN
      --   RAISE CaptureNotClean;
      --END IF;

      RETURN ''|| nSvrId||'/'||scratchConnId;
      EXCEPTION
      WHEN OTHERS THEN
        RAISE;
   END StageCapture;

END SYB12ALLPLATFORM;

/
--------------------------------------------------------
--  DDL for Package Body TDALLPLATFORM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C##TESZT"."TDALLPLATFORM" AS   

    TYPE IDMAP is table of number index by varchar2(512);
    TYPE CHECKIDMAP is table of number index by varchar2(4000);
    TYPE UDTMAP is table of varchar2(4000) index by varchar2(512);
    TYPE NAMEMAP is table of varchar2(512) index by varchar2(512);


    DATABASEIDS IDMAP;
    TABLEIDS IDMAP;
    VIEWIDS IDMAP;
    COLUMNIDS IDMAP;
    CONSTRAINTIDS IDMAP;
    PKEYIDS IDMAP;
    CHECKIDS CHECKIDMAP;
    UDTNAMEMAP UDTMAP;
    PKEYNAMEMAP NAMEMAP;

    logLine NUMBER := 1;
    uniqueId NUMBER := 1;
    nProjectId  NUMBER;
    projectExist BOOLEAN;
    nSvrId NUMBER; -- This is the captured connection id
    nDummyCatalogId NUMBER;  --  Teradata does not have catalogs so insert a dummy one
    pluginClass varchar2(500) := null;

    PROCEDURE SetStatus(msg VARCHAR2, sev NUMBER := 666);

--    PROCEDURE DisableRepositoryTriggers IS
--    BEGIN
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_projects_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_catalogs_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_schemas_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_tables_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_views_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_indexes_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_stored_programs_trg DISABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_triggers_trg DISABLE';
--        --EXECUTE IMMEDIATE 'ALTER TRIGGER md_constraints_trg DISABLE';      
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_columns_trg DISABLE';      
--    END DisableRepositoryTriggers;

--    PROCEDURE EnableRepositoryTriggers IS
--    BEGIN
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_projects_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_catalogs_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_schemas_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_tables_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_views_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_indexes_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_stored_programs_trg ENABLE';
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_triggers_trg ENABLE';
--        --EXECUTE IMMEDIATE 'ALTER TRIGGER md_constraints_trg ENABLE';      
--        EXECUTE IMMEDIATE 'ALTER TRIGGER md_columns_trg ENABLE';      
--    END EnableRepositoryTriggers;

    FUNCTION getTypeLenCode(type VARCHAR2, COLUMNLENGTH NUMBER, DECIMALTOTALDIGITS NUMBER, DECIMALFRACTIONALDIGITS NUMBER) RETURN NUMBER IS
    BEGIN
        if (type IS NULL) THEN
            return 0;
        END IF;
        RETURN CASE TRIM(type)
                   WHEN 'AT' THEN  26 -- ANSITIME
                   WHEN 'BF' THEN  COLUMNLENGTH -- BYTEFIXED
                   WHEN 'BO' THEN -8 -- BYTELARGEOBJECT
                   WHEN 'BS' THEN  0 -- BINARYSTRING
                   WHEN 'BV' THEN -2 -- BYTEVARYING
                   WHEN 'CF' THEN  COLUMNLENGTH -- CHARFIXEDLATIN
                   WHEN 'CO' THEN -8 -- CHARLARGEOBJECT
                   WHEN 'CS' THEN  0 -- CHARSTRING
                   WHEN 'CV' THEN  0 -- CHARVARYINGLATIN
                   WHEN 'D ' THEN  4 -- DECIMAL
                   WHEN 'D'  THEN  4 -- DECIMAL
                   WHEN 'DA' THEN 10 -- DATE
                   WHEN 'DH' THEN  DECIMALTOTALDIGITS + 10 -- DAYHOUR
                   WHEN 'DI' THEN  0 -- DAYINTERVAL
                   WHEN 'DM' THEN  DECIMALTOTALDIGITS + 10 -- DAYMINUTE
                   WHEN 'DS' THEN  CASE DECIMALFRACTIONALDIGITS > 0
                                       WHEN TRUE THEN DECIMALTOTALDIGITS + 10
                                       ELSE DECIMALTOTALDIGITS + DECIMALFRACTIONALDIGITS + 11
                                   END -- DAYSECOND
                   WHEN 'DT' THEN  0 -- DATETAG
                   WHEN 'DY' THEN  DECIMALTOTALDIGITS + 10 -- DAY
                   WHEN 'F ' THEN  0 -- REAL
                   WHEN 'F'  THEN  0 -- REAL
                   WHEN 'HM' THEN  CASE DECIMALTOTALDIGITS
                                       WHEN 4 THEN 10 + 3
                                       WHEN 3 THEN 10 + 2
                                       ELSE 10 + 1
                                   END -- HOURMINUTE
                   WHEN 'HR' THEN  CASE DECIMALTOTALDIGITS
                                       WHEN 4 THEN 10 + 3
                                       WHEN 3 THEN 10 + 2
                                       ELSE 10 + 1
                                   END -- HOUR
                   WHEN 'HS' THEN  CASE DECIMALTOTALDIGITS
                                       WHEN 4 THEN CASE DECIMALFRACTIONALDIGITS > 0
                                                       WHEN TRUE THEN 11 + 3
                                                       ELSE 10 + 3
                                                   END
                                       WHEN 3 THEN CASE DECIMALFRACTIONALDIGITS > 0
                                                       WHEN TRUE THEN 11 + 2
                                                       ELSE 10 + 2
                                                   END
                                       ELSE CASE DECIMALFRACTIONALDIGITS > 0
                                                WHEN TRUE THEN 11 + 1
                                                ELSE 10 + 1
                                            END
                                   END -- HOURSECOND
                   WHEN 'I ' THEN  4 -- INTEGER
                   WHEN 'I'  THEN  4 -- INTEGER
                   WHEN 'I1' THEN  1 -- BYTEINT
                   WHEN 'I2' THEN  2 -- SMALLINT
                   WHEN 'I8' THEN  8 -- BIGINTEGER
                   WHEN 'LF' THEN  0 -- CHARFIXEDLOCALE
                   WHEN 'LV' THEN  0 -- CHARVARYINGLOCALE
                   WHEN 'MI' THEN  11 -- MINUTE
                   WHEN 'MO' THEN  CASE DECIMALTOTALDIGITS
                                       WHEN 4 THEN 3 + 4
                                       WHEN 3 THEN 2 + 4
                                       ELSE 1 + 4
                                   END -- MONTH
                   WHEN 'MS' THEN  CASE DECIMALFRACTIONALDIGITS > 0
                                       WHEN TRUE THEN 12 + DECIMALFRACTIONALDIGITS
                                       ELSE 11
                                   END -- MINUTETOSECOND
                   WHEN 'NM' THEN  0 -- NUMBERTAG
                   WHEN 'PD' THEN  28 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_DATE_LENGTH
                   WHEN 'PM' THEN  72 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_WITH_TZ_LENGTH
                   WHEN 'PS' THEN  60 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_LENGTH
                   WHEN 'PT' THEN  38 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_LENGTH
                   WHEN 'PZ' THEN  50 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_WITH_TZ_LENGTH
                   WHEN 'SC' THEN  CASE DECIMALFRACTIONALDIGITS > 0
                                       WHEN TRUE THEN 12 + DECIMALFRACTIONALDIGITS
                                       ELSE 11
                                   END -- SECOND
                   WHEN 'SZ' THEN 31 -- TIMESTAMPWITHTIMEZONE
                   WHEN 'TM' THEN  0 -- TIMETAG
                   WHEN 'TS' THEN 26 -- TIMESTAMPWITHOUTTIMEZONE
                   WHEN 'TZ' THEN 21 -- ANSITIMEWITHTIMEZONE
                   WHEN 'UF' THEN  0 -- CHARFIXEDUNICODE
                   WHEN 'UT' THEN  0 -- USERDEFINEDTYPE
                   WHEN 'UV' THEN  0 -- CHARVARYINGUNICODE
                   WHEN 'YI' THEN  0 -- YEARINTERVAL
                   WHEN 'YM' THEN  DECIMALTOTALDIGITS + 4 -- YEARMONTH
                   WHEN 'YR' THEN  DECIMALTOTALDIGITS + 4 -- YEAR
                   ELSE 0
               END;
    END getTypeLenCode;

    FUNCTION getTypeLenCode(type VARCHAR2) RETURN NUMBER IS
    BEGIN
        if (type IS NULL) THEN
            return 0;
        END IF;
        RETURN CASE TRIM(type)
                   WHEN 'AT' THEN  0 -- ANSITIME
                   WHEN 'BF' THEN  0 -- BYTEFIXED
                   WHEN 'BO' THEN -8 -- BYTELARGEOBJECT
                   WHEN 'BS' THEN  0 -- BINARYSTRING
                   WHEN 'BV' THEN -2 -- BYTEVARYING
                   WHEN 'CF' THEN  0 -- CHARFIXEDLATIN
                   WHEN 'CO' THEN -8 -- CHARLARGEOBJECT
                   WHEN 'CS' THEN  0 -- CHARSTRING
                   WHEN 'CV' THEN  0 -- CHARVARYINGLATIN
                   WHEN 'D ' THEN  4 -- DECIMAL
                   WHEN 'D'  THEN  4 -- DECIMAL
                   WHEN 'DA' THEN  0 -- DATE
                   WHEN 'DH' THEN  0 -- DAYHOUR
                   WHEN 'DI' THEN  0 -- DAYINTERVAL
                   WHEN 'DM' THEN  0 -- DAYMINUTE
                   WHEN 'DS' THEN  0 -- DAYSECOND
                   WHEN 'DT' THEN  0 -- DATETAG
                   WHEN 'DY' THEN  0 -- DAY
                   WHEN 'F ' THEN  0 -- REAL
                   WHEN 'F'  THEN  0 -- REAL
                   WHEN 'HM' THEN  0 -- HOURMINUTE
                   WHEN 'HR' THEN  0 -- HOUR
                   WHEN 'HS' THEN  0 -- HOURSECOND
                   WHEN 'I ' THEN  4 -- INTEGER
                   WHEN 'I'  THEN  4 -- INTEGER
                   WHEN 'I1' THEN  1 -- BYTEINT
                   WHEN 'I2' THEN  2 -- SMALLINT
                   WHEN 'I8' THEN  8 -- BIGINTEGER
                   WHEN 'LF' THEN  0 -- CHARFIXEDLOCALE
                   WHEN 'LV' THEN  0 -- CHARVARYINGLOCALE
                   WHEN 'MI' THEN  0 -- MINUTE
                   WHEN 'MO' THEN  0 -- MONTH
                   WHEN 'MS' THEN  0 -- MINUTETOSECOND
                   WHEN 'NM' THEN  0 -- NUMBERTAG
                   WHEN 'PD' THEN  28 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_DATE_LENGTH
                   WHEN 'PM' THEN  72 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_WITH_TZ_LENGTH
                   WHEN 'PS' THEN  60 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_LENGTH
                   WHEN 'PT' THEN  38 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_LENGTH
                   WHEN 'PZ' THEN  50 -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_WITH_TZ_LENGTH
                   WHEN 'SC' THEN  0 -- SECOND
                   WHEN 'SZ' THEN  0 -- TIMESTAMPWITHTIMEZONE
                   WHEN 'TM' THEN  0 -- TIMETAG
                   WHEN 'TS' THEN  0 -- TIMESTAMPWITHOUTTIMEZONE
                   WHEN 'TZ' THEN  0 -- ANSITIMEWITHTIMEZONE
                   WHEN 'UF' THEN  0 -- CHARFIXEDUNICODE
                   WHEN 'UT' THEN  0 -- USERDEFINEDTYPE
                   WHEN 'UV' THEN  0 -- CHARVARYINGUNICODE
                   WHEN 'YI' THEN  0 -- YEARINTERVAL
                   WHEN 'YM' THEN  0 -- YEARMONTH
                   WHEN 'YR' THEN  0 -- YEAR
                   ELSE 0
               END;
    END getTypeLenCode;

    FUNCTION getTypeName(type VARCHAR2, charType NUMBER, udtName VARCHAR2) RETURN VARCHAR2;

    PROCEDURE registerUDTS IS
        moreToDo BOOLEAN := TRUE;
        countUDTs NUMBER := 0;
    BEGIN
        UDTNAMEMAP('ST_GEOMETRY') := 'ST_GEOMETRY';
        UDTNAMEMAP('MBR') := 'MBR';
        WHILE (moreToDo) LOOP
            countUDTs := UDTNAMEMAP.COUNT;
            FOR field IN
            (
                SELECT
                    "MDID",
                    "TYPEKIND",
                    "TYPENAME",
                    "FIELDNAME",
                    "FIELDID",
                    "FIELDTYPE",
                    "UDTNAME",
                    "CHARTYPE",
                    "MAXLENGTH",
                    "DECIMALTOTALDIGITS",
                    "DECIMALFRACTIONALDIGITS",
                    "INSTANTIABLE",
                    "FINAL"
                FROM
                    STAGE_TERADATA_UDTS
                ORDER BY
                    TYPENAME,
                    FIELDID
            )
            LOOP
                IF (field.TYPEKIND = 'D') THEN
                    IF NOT (UDTNAMEMAP.EXISTS(field.TYPENAME)) THEN
                        IF (field.FIELDTYPE = 'UT') THEN
                            IF (UDTNAMEMAP.EXISTS(field.UDTNAME)) THEN
                                -- copy definition to this one
                                UDTNAMEMAP(field.TYPENAME) := UDTNAMEMAP(field.UDTNAME);
                            END IF;
                        ELSE
                            UDTNAMEMAP(field.TYPENAME) := getTypeName(field.FIELDTYPE, field.CHARTYPE, field.UDTNAME);
                        END IF;
                    END IF;
                END IF;
            END LOOP;
            moreToDo := countUDTS <> UDTNAMEMAP.COUNT;
        END LOOP;
    END registerUDTs;

    FUNCTION getTypeName(type VARCHAR2, charType NUMBER, udtName VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
        SetStatus('getTypeName: ' || type || ', ' || udtName);
        IF (type IS NULL) THEN
            RETURN NULL;
        END IF;
--        IF (type = 'UT' AND udtName = 'ST_GEOMETRY') THEN
--            RETURN 'ST_GEOMETRY';
--        END IF;
        RETURN CASE TRIM(type)
                   WHEN 'AT' THEN 'ANSITIME'
                   WHEN 'BF' THEN 'BYTEFIXED'
                   WHEN 'BO' THEN 'BYTELARGEOBJECT'
                   WHEN 'BS' THEN 'BINARYSTRING'
                   WHEN 'BV' THEN 'BYTEVARYING'
                   WHEN 'CF' THEN 'CHARFIXED' || ( CASE charType WHEN 1 THEN 'LATIN' WHEN 2 THEN 'UNICODE' WHEN 3 THEN 'KANJISJIS' WHEN 4 THEN 'GRAPHIC' WHEN 5 THEN 'KANJI1' ELSE 'LATIN' END)
                   WHEN 'CO' THEN 'CHARLARGEOBJECT' || ( CASE charType WHEN 1 THEN 'LATIN' WHEN 2 THEN 'UNICODE' WHEN 3 THEN 'KANJISJIS' WHEN 4 THEN 'GRAPHIC' WHEN 5 THEN 'KANJI1' ELSE 'LATIN' END)
                   WHEN 'CS' THEN 'CHARSTRING'
                   WHEN 'CV' THEN 'CHARVARYING' || ( CASE charType WHEN 1 THEN 'LATIN' WHEN 2 THEN 'UNICODE' WHEN 3 THEN 'KANJISJIS' WHEN 4 THEN 'GRAPHIC' WHEN 5 THEN 'KANJI1' ELSE 'LATIN' END)
                   WHEN 'D'  THEN 'DECIMAL'
                   WHEN 'DA' THEN 'DATE'
                   WHEN 'DH' THEN 'DAYHOUR'
                   WHEN 'DI' THEN 'DAYINTERVAL'
                   WHEN 'DM' THEN 'DAYMINUTE'
                   WHEN 'DS' THEN 'DAYSECOND'
                   WHEN 'DT' THEN 'DATETAG'
                   WHEN 'DY' THEN 'DAY'
                   WHEN 'F'  THEN 'REAL'
                   WHEN 'HM' THEN 'HOURMINUTE'
                   WHEN 'HR' THEN 'HOUR'
                   WHEN 'HS' THEN 'HOURSECOND'
                   WHEN 'I'  THEN 'INTEGER'
                   WHEN 'I1' THEN 'BYTEINT'
                   WHEN 'I2' THEN 'SMALLINT'
                   WHEN 'I8' THEN 'BIGINTEGER'
                   WHEN 'LF' THEN 'CHARFIXEDLOCALE'
                   WHEN 'LV' THEN 'CHARVARYINGLOCALE'
                   WHEN 'MI' THEN 'MINUTE'
                   WHEN 'MO' THEN 'MONTH'
                   WHEN 'MS' THEN 'MINUTETOSECOND'
                   WHEN 'NM' THEN 'NUMBERTAG'
                   WHEN 'PD' THEN 'PERIODDATE'
                   WHEN 'PM' THEN 'PERIODTIMESTAMPWITHTIMEZONE'
                   WHEN 'PS' THEN 'PERIODTIMESTAMP'
                   WHEN 'PT' THEN 'PERIODTIME'
                   WHEN 'PZ' THEN 'PERIODTIMEWITHTIMEZONE'
                   WHEN 'SC' THEN 'SECOND'
                   WHEN 'SZ' THEN 'TIMESTAMPWITHTIMEZONE'
                   WHEN 'TM' THEN 'TIMETAG'
                   WHEN 'TS' THEN 'TIMESTAMPWITHOUTTIMEZONE'
                   WHEN 'TZ' THEN 'ANSITIMEWITHTIMEZONE'
                   WHEN 'UF' THEN 'CHARFIXEDUNICODE'
                   WHEN 'UT' THEN ( case UDTNAMEMAP.EXISTS(udtName) WHEN TRUE THEN UDTNAMEMAP(udtName) WHEN FALSE THEN NULL END )
                   WHEN 'UV' THEN 'CHARVARYINGUNICODE'
                   WHEN 'YI' THEN 'YEARINTERVAL'
                   WHEN 'YM' THEN 'YEARMONTH'
                   WHEN 'YR' THEN 'YEAR'
                   else TRIM(type)
               END;
    END getTypeName;

    FUNCTION getProcFunc(prgType VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
        return CASE 
                   WHEN prgType in ('F', 'A', 'B', 'R', 'S') THEN 'FUNCTION'
                   WHEN prgType in ('P', 'E') THEN 'PROCEDURE'
                   ELSE 'NONE'
               END;
    END getProcFunc;

    PROCEDURE CaptureConnections IS
    BEGIN
        -- create project
        SetStatus('CaptureConnections');
        IF (projectExist = FALSE) THEN            
            INSERT INTO md_projects("ID", project_name, comments)
            (
                SELECT
                    project_id, project_name, comments
                FROM
                    stage_serverdetail WHERE project_id = nProjectId
                    AND NOT EXISTS (SELECT 1 FROM md_projects WHERE "ID" = nProjectId)
            ); 
        END IF;
        -- capture connections
        INSERT INTO md_connections("ID", project_id_fk, username, dburl, "NAME")
        (
            SELECT SVRID, nProjectId, username, dburl, db_name 
            FROM stage_serverdetail WHERE project_id = nProjectId
        );
    END CaptureConnections;

    PROCEDURE CaptureDatabases IS
    BEGIN
        SetStatus('CaptureDatabases');
        nDummyCatalogId := MD_META.get_next_id;
        INSERT INTO md_catalogs("ID", connection_id_fk, catalog_name, dummy_flag)
        VALUES ( nDummyCatalogId, nSvrId, 'Teradata', 'Y' );
    END CaptureDatabases;

    PROCEDURE CaptureSchemas IS
    BEGIN
        SetStatus('CaptureSchemas');
        FOR db IN
        (
            SELECT
                SVRID,
                MDID,
                DATABASENAME,
                COMMENTSTRING,
                OWNERNAME
            FROM STAGE_TERADATA_DATABASES
        )
        LOOP
            --DBMS_OUTPUT.PUT_LINE('Name = ' || db.DATABASENAME || ', ID = ' || db.MDID);
            INSERT
                INTO md_schemas("ID", "CATALOG_ID_FK", "NAME")
                VALUES ( db.MDID, nDummyCatalogId, db.DATABASENAME );
            DATABASEIDS(TRIM(db.databasename)) := db.mdid;
        END LOOP;
    END;

    PROCEDURE CaptureTablesAndViews IS 
        errMsg VARCHAR2(4000);
        clbNativeSql CLOB := TO_CLOB(' ');
    BEGIN
        SetStatus('CaptureTablesAndViews');
        FOR tab IN
        (
            SELECT
                MDID,
                DATABASENAME,
                TABLENAME,
                TABLEKIND,
                CREATORNAME,
                REQUESTTEXT,
                COMMENTSTRING,
                COMMITOPT
            FROM STAGE_TERADATA_TABLES
        )
        LOOP
            --DBMS_OUTPUT.put_line('TABLE:' || tab.DATABASENAME || '.' || tab.TABLENAME);
            IF (tab.TABLEKIND = 'T') THEN
                INSERT
                    INTO md_tables("ID", schema_id_fk, table_name, qualified_native_name)
                    VALUES (tab.MDID, DATABASEIDS(TRIM(tab.DATABASENAME)), tab.TABLENAME, tab.DATABASENAME || '.' || tab.TABLENAME);
                TABLEIDS(TRIM(tab.DATABASENAME) || '.' || TRIM(tab.TABLENAME)) := tab.mdid;
                --SetStatus('CaptureTables: ' || TRIM(tab.DATABASENAME) || '.' || TRIM(tab.TABLENAME) || ' - ' || TABLEIDS(TRIM(tab.DATABASENAME) || '.' || TRIM(tab.TABLENAME)));

            END IF;
            IF (tab.TABLEKIND = 'V') THEN
                clbNativeSql  := TO_CLOB(tab.REQUESTTEXT);
                INSERT
                    INTO md_views("ID", schema_id_fk, view_name, "LANGUAGE", native_sql, comments)
                    VALUES (tab.MDID, DATABASEIDS(TRIM(tab.DATABASENAME)), tab.TABLENAME, 'Teradata', clbNativeSql, tab.COMMENTSTRING);
                VIEWIDS(TRIM(tab.DATABASENAME) || '.' || TRIM(tab.TABLENAME)) := tab.mdid;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            RAISE;
    END CaptureTablesAndViews;

    PROCEDURE CaptureColumns IS
        errMsg VARCHAR2(4000);
        typeName VARCHAR2(64);
        id NUMBER;
        dumpLenCode NUMBER;
        prec NUMBER;
    BEGIN
        SetStatus('CaptureColumns');
        FOR col IN
        (
            SELECT
                MDID,
                DATABASENAME,
                TABLENAME,
                COLUMNNAME,
                COLUMNFORMAT,
                COLUMNTITLE,
                COLUMNTYPE,
                COLUMNUDTNAME,
                COLUMNLENGTH,
                DEFAULTVALUE,
                NULLABLE,
                COMMENTSTRING,
                DECIMALTOTALDIGITS,
                DECIMALFRACTIONALDIGITS,
                COLUMNID,
                UPPERCASEFLAG,
                COLUMNCONSTRAINT,
                CONSTRAINTCOUNT,
                CREATORNAME,
                CHARTYPE,
                IDCOLTYPE
            FROM STAGE_TERADATA_COLUMNS
        )
        LOOP
            IF (TABLEIDS.EXISTS(TRIM(col.DATABASENAME) || '.' || TRIM(col.TABLENAME))) THEN
                id := TABLEIDS(TRIM(col.DATABASENAME) || '.' || TRIM(col.TABLENAME));
                prec := CASE
                            WHEN ((col.DECIMALTOTALDIGITS IS NOT NULL)/*OR(col.DECIMALFRACTIONALDIGITS IS NOT NULL) */) then (col.DECIMALTOTALDIGITS)
                            ELSE (col.COLUMNLENGTH) 
                        END;

                --DBMS_OUTPUT.put_line('COLUMN:' || col.DATABASENAME || '.' || col.TABLENAME || '.' || col.COLUMNNAME || ' ID: ' || id);
                --insert into STAGE_TERADATA_LOG (LINE, LOGSTRING) VALUES (logLine, 'ROB-COLUMN:' || col.DATABASENAME || '.' || col.TABLENAME || '.' || col.COLUMNNAME || ' ID: ' || id);
                --logLine := logLine + 1;

                typeName := getTypeName(col.COLUMNTYPE, col.CHARTYPE, col.COLUMNUDTNAME);
                IF (col.COLUMNTYPE IS NOT NULL) THEN
                    IF (col.COLUMNTYPE = 'PD') THEN
                        prec := 28;-- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_DATE_LENGTH
                    END IF;
                    IF (col.COLUMNTYPE = 'PM') THEN
                        prec := 72; -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_WITH_TZ_LENGTH
                    END IF;
                    IF (col.COLUMNTYPE = 'PS') THEN
                        prec := 60; -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIMESTAMP_LENGTH
                    END IF;
                    IF (col.COLUMNTYPE = 'PT') THEN
                        prec := 38; -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_LENGTH
                    END IF;
                    IF (col.COLUMNTYPE = 'PZ') THEN
                        prec := 50; -- must match oracle.dbtools.migration.workbench.plugin.Teradata13Plugin.PERIOD_TIME_WITH_TZ_LENGTH
                    END IF;
                END IF;
                INSERT
                    INTO MD_COLUMNS
                    (
                        "ID",
                        table_id_fk,
                        column_name,
                        column_order,
                        column_type,
                        "PRECISION",
                        "SCALE",
                        nullable,
                        default_value,
                        comments
                    )
                    VALUES
                    (
                        col.MDID,
                        id,
                        col.COLUMNNAME,
                        col.COLUMNID,
                        typeName,
                        prec,
                        col.DECIMALFRACTIONALDIGITS,
                        col.NULLABLE,
                        CASE 
                            WHEN col.COLUMNTYPE in ('BV', 'BF', 'BO', 'BS') THEN  NULL
                            ELSE col.DEFAULTVALUE
                        END,
                        col.COMMENTSTRING
                    );
                IF (col.COLUMNTYPE IS NOT NULL) THEN
                    dumpLenCode := getTypeLenCode(col.COLUMNTYPE, col.COLUMNLENGTH, col.DECIMALTOTALDIGITS, col.DECIMALFRACTIONALDIGITS);
                    IF (col.COLUMNTYPE = 'PD') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_PERIODDATE_COLUMN', 'needconverting');
                    END IF;
                    IF (col.COLUMNTYPE = 'PM') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_PERIODTIMESTAMPWITHTIMEZONE_COLUMN', 'needconverting');
                    END IF;
                    IF (col.COLUMNTYPE = 'PS') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_PERIODTIMESTAMP_COLUMN', 'needconverting');
                    END IF;
                    IF (col.COLUMNTYPE = 'PT') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_PERIODTIME_COLUMN', 'needconverting');
                    END IF;
                    IF (col.COLUMNTYPE = 'PZ') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_PERIODTIMEWITHTIMEZONE_COLUMN', 'needconverting');
                    END IF;
                    IF ((col.COLUMNTYPE = 'UT') AND (col.COLUMNUDTNAME = 'ST_GEOMETRY')) THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_ST_GEOMETRY_COLUMN', 'needconverting');
                        dumpLenCode := -2;
                    END IF;
                    IF ((col.COLUMNTYPE = 'UT') AND (col.COLUMNUDTNAME = 'MBR')) THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_MBR_COLUMN', 'needconverting');
                    END IF;
                    IF (dumpLenCode = 0) THEN
                        dumpLenCode := prec;
                    END IF;
                    INSERT
                        INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                        VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_DUMPLENDECODE', TO_CHAR(dumpLenCode));
                END IF;
                IF (col.COLUMNFORMAT IS NOT NULL) THEN
                    INSERT
                        INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                        VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_COLUMNFORMAT', col.COLUMNFORMAT);
                END IF;
                IF (col.COLUMNFORMAT IS NOT NULL) THEN
                    INSERT
                        INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                        VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_MAXLENGTH', col.COLUMNLENGTH);
                END IF;
                IF (col.DEFAULTVALUE IS NOT NULL) THEN
                    IF ((typeName = 'ANSITIME') OR (typeName = 'ANSITIMEWITHTIMEZONE')) THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_CHECK_TIME_DEFAULT', col.DEFAULTVALUE);
                    END IF;
                    IF ((typeName = 'TIMESTAMPWITHTIMEZONE') OR (typeName = 'TIMESTAMPWITHOUTTIMEZONE')) THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_CHECK_TIMESTAMP_DEFAULT', col.DEFAULTVALUE);
                    END IF;
                    IF (typeName = 'DATE') THEN
                        INSERT
                            INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                            VALUES(nSvrId, col.MDID, 'MD_COLUMNS', col.COLUMNID, 'TERADATA_CHECK_DATE_DEFAULT', col.DEFAULTVALUE);
                    END IF;
                END IF;
            END IF;
            COLUMNIDS(TRIM(col.DATABASENAME) || '.' || TRIM(col.TABLENAME) || '.' || TRIM(col.COLUMNNAME)) := col.mdid;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            RAISE;
    END CaptureColumns;

    PROCEDURE CaptureIndexes IS
        errMsg VARCHAR2(4000);
        indexId NUMBER;
        indexType VARCHAR(16);
        indexShortName VARCHAR2(128 CHAR);
        indexFullName VARCHAR2(270 CHAR); -- DATABASENAME || '.' || TABLENAME || '.' || INDEXNUMBER
        nextIndexName VARCHAR2(270 CHAR); -- DATABASENAME || '.' || TABLENAME || '.' || INDEXNUMBER
        columnId NUMBER;
        tableId NUMBER;
    BEGIN
        SetStatus('CaptureIndexes');
        indexId := NULL;
        FOR indexCol IN
        (
            SELECT
                MDID,
                DATABASENAME,
                TABLENAME,
                INDEXNUMBER,
                INDEXTYPE,
                UNIQUEFLAG,
                INDEXNAME,
                COLUMNNAME,
                COLUMNPOSITION,
                CREATORNAME,
                INDEXMODE
            FROM
                STAGE_TERADATA_INDICES
            WHERE
                INDEXTYPE = 'S' -- IN ('S', 'P', 'Q') -- includes partitioned/non partitioned primary indexes
            ORDER BY
                DATABASENAME,
                TABLENAME,
                INDEXNUMBER,
                COLUMNPOSITION
        )
        LOOP
            IF TABLEIDS.EXISTS(TRIM(indexCol.DATABASENAME) || '.' || TRIM(indexCol.TABLENAME)) THEN
                tableId := TABLEIDS(TRIM(indexCol.DATABASENAME) || '.' || TRIM(indexCol.TABLENAME));
                nextIndexName := indexCol.DATABASENAME || '.' || indexCol.TABLENAME || '.' || indexCol.INDEXNUMBER;
                IF (indexFullName IS NULL) OR (nextIndexName != indexFullName) THEN
                    IF (indexCol.UNIQUEFLAG = 'Y') THEN
                        indexType := 'UNIQUE';
                    ELSE
                        indexType := 'NON_UNIQUE';
                    END IF;
                    indexId := MD_META.get_next_id;
                    indexFullName := nextIndexName;
                    IF (indexCol.INDEXNAME IS NULL) THEN
                        indexShortName := indexCol.TABLENAME || indexCol.INDEXTYPE || indexCol.INDEXNUMBER; -- can't have a NULL index name
                    ELSE
                        indexShortName := indexCol.INDEXNAME;
                    END IF;
                    INSERT
                        INTO MD_INDEXES(id, table_id_fk, index_name, index_type)
                        VALUES(indexId, tableId, indexShortName, indexType);
                END IF;
                IF COLUMNIDS.EXISTS(TRIM(indexCol.DATABASENAME) || '.' || TRIM(indexCol.TABLENAME) || '.' || TRIM(indexCol.COLUMNNAME)) THEN
                    columnId := COLUMNIDS(TRIM(indexCol.DATABASENAME) || '.' || TRIM(indexCol.TABLENAME) || '.' || TRIM(indexCol.COLUMNNAME));
                    INSERT
                        INTO MD_INDEX_DETAILS(id, index_id_fk, column_id_fk, detail_order)
                        VALUES(indexCol.MDID, indexId, columnId, indexCol.COLUMNPOSITION);
                END IF;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception(CaptureIndexes):' || errMsg);
            RAISE;
    END CaptureIndexes;

    PROCEDURE CapturePrimaryKeys IS
        errMsg VARCHAR2(4000);
        pKeyId NUMBER;
        pKeyType VARCHAR(16);
        pKeyName VARCHAR2(270 CHAR);
        tableName VARCHAR2(270 CHAR);
        nextPKeyName VARCHAR2(270 CHAR);
        nextTableName VARCHAR2(270 CHAR);
        shortConstraintName VARCHAR2(270 CHAR);
        columnId NUMBER;
        tableId NUMBER;
    BEGIN
        SetStatus('CapturePrimaryKeys');
        pKeyId := NULL;
        pKeyName := NULL;
        FOR pKeyCol IN
        (
            SELECT
                COALESCE(INDEXNAME, TRIM(TABLENAME) || '_' || TRIM(INDEXTYPE) || TRIM(INDEXNUMBER)) CONSTRAINTNAME,
                MDID,
                DATABASENAME,
                TABLENAME,
                INDEXNUMBER,
                INDEXTYPE,
                UNIQUEFLAG,
                INDEXNAME,
                COLUMNNAME,
                COLUMNPOSITION,
                CREATORNAME,
                INDEXMODE
            FROM
                STAGE_TERADATA_INDICES
            WHERE
                IndexType in ('K', 'P', 'Q', 'U')
            ORDER BY DATABASENAME, TABLENAME, CONSTRAINTNAME, INDEXNUMBER, COLUMNPOSITION
        )
        LOOP
            SetStatus('CapturePrimaryKeys: ** ' || TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME));
            IF TABLEIDS.EXISTS(TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME)) THEN
                tableId := TABLEIDS(TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME));
                IF (PKEYNAMEMAP.EXISTS(TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME))) THEN
                    shortConstraintName := PKEYNAMEMAP(TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME));
                ELSE
                    shortConstraintName := TRIM(pKeyCol.CONSTRAINTNAME);
                END IF;
                SetStatus('CapturePrimaryKeys: ++ ' || shortConstraintName || '<==>' || TRIM(pKeyCol.CONSTRAINTNAME));
                nextPKeyName := TRIM(pkeyCol.DATABASENAME) || '.' || shortConstraintName;
                nextTableName := TRIM(pkeyCol.TABLENAME);
                IF (pKeyName IS NULL) OR (nextPKeyName != pKeyName) OR
                   (tableName IS NULL) OR (nextTableName != tableName) THEN
                    -- new Primary Key
                    pKeyId := MD_META.get_next_id;
                    IF (trim(pKeyCol.INDEXTYPE) = 'K') THEN
                        pKeyType := 'PK';
                    ELSE
                        IF (trim(pKeyCol.INDEXTYPE) = 'U') THEN
                            pKeyType := 'UNIQUE';
                        ELSE
                            IF (((trim(pKeyCol.INDEXTYPE) = 'Q') OR (trim(pKeyCol.INDEXTYPE) = 'P')) AND
                                ((pKeyCol.UNIQUEFLAG IS NOT NULL) AND (TRIM(pKeyCol.UNIQUEFLAG) = 'Y'))) THEN
                                pKeyType := 'UNIQUE';
                            ELSE
                                pKeyName := NULL; -- ignore and continue around loop
                                pKeyType := NULL;
                            END IF;
                        END IF;
                    END IF;
                    SetStatus('CapturePrimaryKeys: ## ' || TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME) || ' - ' || pKeyType || '-' || pKeyName || '-' || TRIM(pKeyCol.INDEXTYPE) || '-' || nextPKeyName);
                    IF (pKeyType IS NOT NULL) THEN
                        SetStatus('CapturePrimaryKeys: -- ' || TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME));
                        WHILE (PKEYIDS.EXISTS(nextPKeyName)) LOOP -- ensure unique
                            shortConstraintName := TRIM(pKeyCol.CONSTRAINTNAME) || uniqueId;
                            nextPKeyName := TRIM(pkeyCol.DATABASENAME) || '.' || shortConstraintName;
                            uniqueId := uniqueId + 1;
                        END LOOP;
                        SetStatus('CapturePrimaryKeys: == ' || nextPKeyName || ', ' || shortConstraintName || ', ' || pKeyType);
                        PKEYIDS(nextPKeyName) := pKeyId;
                        pKeyName := nextPKeyName;
                        tableName := nextTableName;
                        PKEYNAMEMAP(TRIM(pkeyCol.DATABASENAME) || '.' || TRIM(pkeyCol.TABLENAME) || '.' || TRIM(pKeyCol.CONSTRAINTNAME)) := shortConstraintName;
                        INSERT
                            INTO MD_CONSTRAINTS (ID, NAME, CONSTRAINT_TYPE, TABLE_ID_FK, "LANGUAGE")
                            VALUES (pKeyId, shortConstraintName, pKeyType, tableId, 'TERADATALANG');
                            CONSTRAINTIDS(UPPER(pKeyName)) := pKeyId;
                    END IF;
                END IF;
                IF (pKeyName IS NOT NULL) THEN
                    IF COLUMNIDS.EXISTS(TRIM(pKeyCol.DATABASENAME) || '.' || TRIM(pKeyCol.TABLENAME) || '.' || TRIM(pKeyCol.COLUMNNAME)) THEN
                        columnId := COLUMNIDS(TRIM(pKeyCol.DATABASENAME) || '.' || TRIM(pKeyCol.TABLENAME) || '.' || TRIM(pKeyCol.COLUMNNAME));
                        INSERT
                            INTO MD_CONSTRAINT_DETAILS(id, constraint_id_fk, column_id_fk, detail_order)
                            VALUES(MD_META.get_next_id, pKeyId, columnId, pKeyCol.COLUMNPOSITION);
                    END IF;
                END IF;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception(CapturePrimaryKeys):' || errMsg);
            RAISE;
    END CapturePrimaryKeys;

    PROCEDURE CaptureForeignKeys IS
        errMsg VARCHAR2(4000);
        fKeyId NUMBER;
        fKeyType VARCHAR(16);
        fKeyName VARCHAR2(270 CHAR);
        currentReferenceIdx NUMBER;
        currentTableId NUMBER;
        columnId NUMBER;
        refColumnId NUMBER;
        tableId NUMBER;
        refTableId NUMBER;
        seq NUMBER;
    BEGIN
        SetStatus('CaptureForeignKeys');
        fKeyId := NULL;
        fKeyName := NULL;
        currentReferenceIdx := NULL;
        currentTableId := NULL;
        FOR fKeyCol IN
        (
            SELECT DISTINCT
                "MDID1",
                "MDID2",
                "TABLESCHEMA",
                "TABLENAME",
                "REFTABLESCHEMA",
                "REFTABLENAME",
                "CONSTRAINTNAME",
                "COLUMNNAME",
                "REFCOLUMNNAME",
                "REFKEYNAME",
                "COLUMNSEQ",
                "REFERENCEIDX",
                "FKEYID",
                "PARENTKEYID"
            FROM
                STAGE_TERADATA_FKEYS
            order by "TABLESCHEMA", "TABLENAME", "REFERENCEIDX", "COLUMNSEQ"
        )
        LOOP
--            SetStatus('CaptureForeignKeys: Row Read');
--            IF (TABLEIDS.EXISTS(TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME))) THEN
--                SetStatus('CaptureForeignKeys: ' || TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME) || ' - EXISTS');
--            ELSE
--                SetStatus('CaptureForeignKeys: ' || TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME) || ' - DOES NOT EXIST');
--            END IF;
--            IF (TABLEIDS.EXISTS(TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME))) THEN
--                SetStatus('CaptureForeignKeys: ' || TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME) || ' - EXISTS');
--            ELSE
--                SetStatus('CaptureForeignKeys: ' || TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME) || ' - DOES NOT EXIST');
--            END IF;
            IF TABLEIDS.EXISTS(TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME)) AND
               TABLEIDS.EXISTS(TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME)) THEN
                tableId := TABLEIDS(TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME));
                refTableId := TABLEIDS(TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME));
--                SetStatus('CaptureForeignKeys: SRC/TGT Tables - ' || tableId || ', ' || refTableId);
                fKeyName := fKeyCol.CONSTRAINTNAME;
                IF ((currentTableId IS NULL) OR (currentTableId != tableId)) THEN
                    -- new table
--                    SetStatus('CaptureForeignKeys: New Table');
                    currentTableId := tableId;
                    currentReferenceIdx := NULL;
                END IF;
                IF ((currentReferenceIdx IS NULL) OR (currentReferenceIdx != fKeyCol.REFERENCEIDX)) THEN
                    -- new Foreign Key
--                    SetStatus('CaptureForeignKeys: New FKey');

                    fKeyId := MD_META.get_next_id;
                    currentReferenceIdx := fKeyCol.REFERENCEIDX;
                    IF (fKeyName IS NULL) THEN
                        fKeyName := TRIM(fKeyCol.TABLENAME) || 'FK' || uniqueId;
                        uniqueId := uniqueId + 1;
                    END IF;
                    INSERT
                        INTO MD_CONSTRAINTS (ID, NAME, CONSTRAINT_TYPE, TABLE_ID_FK, REFTABLE_ID_FK, "LANGUAGE")
                        VALUES (fKeyId, fKeyName , 'FOREIGN KEY', tableId, refTableId, 'TERADATALANG');
                        CONSTRAINTIDS(UPPER(fKeyName)) := fKeyId;
                END IF;
                seq := ((fKeyCol.COLUMNSEQ - 1) * 2) + 1;
                IF COLUMNIDS.EXISTS(TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME) || '.' || TRIM(fKeyCol.COLUMNNAME)) THEN
                    columnId := COLUMNIDS(TRIM(fKeyCol.TABLESCHEMA) || '.' || TRIM(fKeyCol.TABLENAME) || '.' || TRIM(fKeyCol.COLUMNNAME));
--                    SetStatus('CaptureForeignKeys: SEQ - ' || seq);
                    INSERT
                        INTO MD_CONSTRAINT_DETAILS(id, constraint_id_fk, column_id_fk, detail_order)
                        VALUES(fKeyCol.MDID1, fKeyId, columnId, seq);
                END IF;
                seq := seq + 1;
                IF COLUMNIDS.EXISTS(TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME) || '.' || TRIM(fKeyCol.REFCOLUMNNAME)) THEN
                    refColumnId := COLUMNIDS(TRIM(fKeyCol.REFTABLESCHEMA) || '.' || TRIM(fKeyCol.REFTABLENAME) || '.' || TRIM(fKeyCol.REFCOLUMNNAME));
--                    SetStatus('CaptureForeignKeys: SEQ - ' || seq);
                    INSERT
                        INTO MD_CONSTRAINT_DETAILS(id, constraint_id_fk, column_id_fk, detail_order, ref_flag)
                        VALUES(fKeyCol.MDID2, fKeyId, refColumnId, seq, 'Y');
                END IF;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception(CaptureForeignKeys):' || errMsg);
            RAISE;
    END CaptureForeignKeys;

    PROCEDURE CaptureChecks IS 
        errMsg VARCHAR2(4000);
        clbNativeSql CLOB := TO_CLOB(' ');
        tableId NUMBER;
        columnId NUMBER;
        chkUniqueId NUMBER;
        chkName VARCHAR2(512);
    BEGIN
        SetStatus('CaptureChecks');
        FOR chk IN
        (
            SELECT
                MDID,
                DATABASENAME,
                TABLENAME,
                CHECKNAME,
                CHECKTYPE,
                TABLECHECK,
                COLUMNNAME,
                CREATORNAME
            FROM
                STAGE_TERADATA_SHOWTBLCHECKS
        )
        LOOP
--            SetStatus('CaptureChecks: 1:');
            IF chk.COLUMNNAME IS NOT NULL THEN
                IF (TABLEIDS.EXISTS(TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME))) THEN
                    tableId := TABLEIDS(TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME));
                    columnId := COLUMNIDS(TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME) || '.' || TRIM(chk.COLUMNNAME));
                    IF (chk.CHECKNAME IS NULL) THEN
                        IF (CHECKIDS.EXISTS(chk.TABLECHECK)) THEN
                            chkUniqueId := CHECKIDS(chk.TABLECHECK);
                        ELSE
                            chkUniqueId := uniqueId;
                            uniqueId := uniqueId + 1;
                            CHECKIDS(chk.TABLECHECK) := chkUniqueId;
                        END IF;
                        chkName := chk.TABLENAME || '_C' || chkUniqueId;
                    ELSE
                        chkName := chk.CHECKNAME;
                    END IF;
                    INSERT
                        INTO MD_CONSTRAINTS (ID, NAME, CONSTRAINT_TYPE, TABLE_ID_FK, "LANGUAGE")
                        VALUES (chk.MDID, chkName, 'CHECK', tableId, 'TERADATALANG');
                    CONSTRAINTIDS(TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME) || '.' || TRIM(chkName)) := chk.MDID;
                    INSERT
                        INTO MD_ADDITIONAL_PROPERTIES(connection_id_fk, ref_id_fk, ref_type, property_order, prop_key, "VALUE")
                        VALUES(nSvrId, chk.MDID, 'MD_CONSTRAINTS', 1, 'TERADATA_CHECKCONSTRAINT', 'needconverting');
                    INSERT
                        INTO MD_CONSTRAINT_DETAILS(id, constraint_id_fk, column_id_fk, detail_order, constraint_text)
                        VALUES(MD_META.get_next_id, chk.mdid, columnId, 1, TO_CLOB(REGEXP_SUBSTR(chk.TABLECHECK, '\((.)*\)', 1, 1, 'i')));
                        -- SetStatus('CaptureChecks: ' || TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME) || '.' || TRIM(chkName) || ' - ' || CONSTRAINTIDS(TRIM(chk.DATABASENAME) || '.' || TRIM(chk.TABLENAME) || '.' || TRIM(chkName)));
                END IF;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            RAISE;
    END CaptureChecks;

    PROCEDURE CaptureConstraints IS
    BEGIN
        CapturePrimaryKeys;
        CaptureForeignKeys;
        CaptureChecks;
    END CaptureConstraints;

    PROCEDURE CaptureStoredPrograms IS
        errMsg VARCHAR2(4000);
        clbNativeSql CLOB := TO_CLOB(' ');
    BEGIN
        SetStatus('CaptureStoredPrograms');
        FOR proc IN
        (
            SELECT
                MDID,
                DATABASENAME,
                PROCNAME,
                PROCTYPE,
                REQUESTTEXT,
                COMMENTSTRING
            FROM STAGE_TERADATA_PROCEDURES
        )
        LOOP
            SetStatus('STORED PROGRAM:' || proc.DATABASENAME || '.' || proc.PROCNAME);
            IF (proc.PROCTYPE = 'E') THEN
                NULL;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            RAISE;
    END CaptureStoredPrograms;

    PROCEDURE CaptureTriggers IS
        errMsg VARCHAR2(4000);
        tableOrViewId NUMBER;
        tableOrView CHAR(1);
    BEGIN
        SetStatus('CaptureTriggers');
        FOR trig IN
        (
            SELECT
                MDID,
                DATABASENAME,
                SUBJECTTABLEDATABASENAME,
                TABLENAME,
                TRIGGERNAME,
                ENABLEDFLAG,
                EVENT,
                KIND,
                ORDERNUMBER,
                TRIGGERCOMMENT,
                REQUESTTEXT,
                CREATORNAME
            FROM
                STAGE_TERADATA_TRIGGERS
            ORDER BY
                SUBJECTTABLEDATABASENAME,
                TABLENAME,
                TRIGGERNAME
        )
        LOOP
            tableOrViewId := NULL;
            IF TABLEIDS.EXISTS(TRIM(trig.SUBJECTTABLEDATABASENAME) || '.' || TRIM(trig.TABLENAME)) THEN
                tableOrViewId := TABLEIDS(TRIM(trig.SUBJECTTABLEDATABASENAME) || '.' || TRIM(trig.TABLENAME));
                tableOrView := 'T';
            ELSE
                IF VIEWIDS.EXISTS(TRIM(trig.SUBJECTTABLEDATABASENAME) || '.' || TRIM(trig.TABLENAME)) THEN
                    tableOrViewId := VIEWIDS(TRIM(trig.SUBJECTTABLEDATABASENAME) || '.' || TRIM(trig.TABLENAME));
                    tableOrView := 'V';
                END IF;
            END IF;
            IF tableOrViewId IS NOT NULL THEN
                INSERT
                    INTO MD_TRIGGERS(id, table_or_view_id_fk, trigger_on_flag, trigger_name, comments, native_sql, "LANGUAGE")
                    VALUES(trig.MDID, tableOrViewId, tableOrView, trig.TRIGGERNAME, trig.TRIGGERCOMMENT, TO_CLOB(trig.REQUESTTEXT), 'TERADATALANG');
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception(CaptureTriggers):' || errMsg);
            RAISE;
    END CaptureTriggers;

    PROCEDURE CaptureUDT IS
        errMsg VARCHAR2(4000);
        typeId NUMBER;
        sysUDTLibId NUMBER;
        typeName VARCHAR2(270 CHAR);
        nativeSql CLOB := NULL;
        nativeSqlPiece VARCHAR2(4000);
        fieldCount NUMBER := 0;
    BEGIN
        SetStatus('CaptureUDT');
        typeId := NULL;
        typeName := NULL;
        IF NOT DATABASEIDS.EXISTS('SYSUDTLIB') THEN
            sysUDTLibId := MD_META.get_next_id;
            INSERT
                INTO md_schemas("ID", "CATALOG_ID_FK", "NAME")
                VALUES ( sysUDTLibId, nDummyCatalogId, 'SYSUDTLIB' );
            DATABASEIDS('SYSUDTLIB') := sysUDTLibId;
        ELSE
            sysUDTLibId := DATABASEIDS('SYSUDTLIB');
        END IF;
        FOR field IN
        (
            SELECT
                "MDID",
                "TYPEKIND",
                "TYPENAME",
                "FIELDNAME",
                "FIELDID",
                "FIELDTYPE",
                "UDTNAME",
                "CHARTYPE",
                "MAXLENGTH",
                "DECIMALTOTALDIGITS",
                "DECIMALFRACTIONALDIGITS",
                "INSTANTIABLE",
                "FINAL"
            FROM
                STAGE_TERADATA_UDTS
            ORDER BY
                TYPENAME,
                FIELDID
        )
        LOOP
            IF (typeName IS NULL OR typeName <> field.TYPENAME) THEN
                if (typeName IS NOT NULL) THEN
                    -- write out TYPE
                    DBMS_LOB.writeappend(nativeSql, 2, ') ');
                    IF (field.INSTANTIABLE = 'Y') THEN
                        DBMS_LOB.writeappend(nativeSql, 13, 'INSTANTIABLE ');
                    END IF;
                    IF (field.FINAL <> 'Y') THEN
                        DBMS_LOB.writeappend(nativeSql, 4, 'NOT ');
                    END IF;
                    DBMS_LOB.writeappend(nativeSql, 5, 'FINAL');
                    INSERT INTO MD_USER_DEFINED_DATA_TYPES
                    (
                        SCHEMA_ID_FK,
                        DATA_TYPE_NAME,
                        DEFINITION,
                        NATIVE_SQL,
                        NATIVE_KEY,
                        COMMENTS,
                        SECURITY_GROUP_ID,
                        CREATED_ON,
                        CREATED_BY,
                        LAST_UPDATED_ON,
                        LAST_UPDATED_BY
                    )
                    VALUES
                    (
                        sysUDTLibId,
                        typeName,
                        ' <UDT> ',
                        nativeSql,
                        '0',
                        NULL,
                        0,
                        SYSDATE,
                        NULL,
                        NULL,
                        NULL
                    );
                END IF;
                fieldCount := 0;
                typeName := field.TYPENAME;
                nativeSql := TO_CLOB('CREATE TYPE ' || typeName || ' AS ');
                typeId := field.MDID;
                IF (field.TYPEKIND = 'S') THEN
                    DBMS_LOB.writeappend(nativeSql, 2, '( ');
                END IF;
            END IF;
            fieldCount := fieldCount + 1;
            IF (field.TYPEKIND = 'D') THEN
                nativeSqlPiece := getTypeName(field.FIELDTYPE, field.CHARTYPE, field.UDTNAME) || ' ';
            END IF;
            IF (field.TYPEKIND = 'S') THEN
                nativeSqlPiece := field.FIELDNAME || ' ' || getTypeName(field.FIELDTYPE, field.CHARTYPE, field.UDTNAME) || ' ';
                IF (fieldCount > 1) THEN
                    nativeSqlPiece := ', ' || nativeSqlPiece;
                END IF;
            END IF;
            DBMS_LOB.writeappend(nativeSql, LENGTH(nativeSqlPiece), nativeSqlPiece);
            IF (field.TYPEKIND = 'D') THEN
                IF (field.INSTANTIABLE = 'Y') THEN
                    DBMS_LOB.writeappend(nativeSql, 13, 'INSTANTIABLE ');
                END IF;
                IF (field.FINAL <> 'Y') THEN
                    DBMS_LOB.writeappend(nativeSql, 4, 'NOT ');
                END IF;
                DBMS_LOB.writeappend(nativeSql, 5, 'FINAL');
                INSERT INTO MD_USER_DEFINED_DATA_TYPES
                (
                    SCHEMA_ID_FK,
                    DATA_TYPE_NAME,
                    DEFINITION,
                    NATIVE_SQL,
                    NATIVE_KEY,
                    COMMENTS,
                    SECURITY_GROUP_ID,
                    CREATED_ON,
                    CREATED_BY,
                    LAST_UPDATED_ON,
                    LAST_UPDATED_BY
                )
                VALUES
                (
                    sysUDTLibId,
                    typeName,
                    ' ',
                    nativeSql,
                    '0',
                    NULL,
                    0,
                    SYSDATE,
                    NULL,
                    NULL,
                    NULL
                );
                typeName := NULL;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            DBMS_OUTPUT.put_line('Exception(CaptureUDT):' || errMsg);
            RAISE;
    END CaptureUDT;

    PROCEDURE CapturePartitionInfo IS
        errMsg VARCHAR2(4000);
        tableId NUMBER;
    BEGIN
        SetStatus('CapturePartitionInfo');
        FOR partExp IN
        (
            SELECT
                MDID,
                DATABASENAME,
                TABLENAME,
                IndexName,
                IndexNumber,
                CONSTRAINTTYPE,
                CONSTRAINTTEXT
            FROM
                STAGE_TERADATA_IDXCONSTRAINTS
        )
        LOOP
            IF (partExp.CONSTRAINTTYPE = 'Q') THEN
                IF TABLEIDS.EXISTS(TRIM(partExp.DATABASENAME) || '.' || TRIM(partExp.TABLENAME)) THEN
                    tableId := TABLEIDS(TRIM(partExp.DATABASENAME) || '.' || TRIM(partExp.TABLENAME));
                    INSERT
                        INTO md_partitions
                        (
                            id,
                            table_id_fk,
                            native_sql
                        )
                        VALUES
                        (
                            partExp.MDID,
                            tableId,
                            partExp.CONSTRAINTTEXT
                        );
                END IF;
            END IF;
        END LOOP;
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            RAISE;
    END CapturePartitionInfo;

   PROCEDURE CaptureEntireStage IS
    BEGIN
        CaptureConnections;
        COMMIT;
        CaptureDatabases;
        COMMIT;
        CaptureSchemas;
        COMMIT;
        CaptureTablesAndViews;
        COMMIT;
        CaptureColumns;
        COMMIT;
        CaptureConstraints;
        COMMIT;
        CaptureIndexes;
        COMMIT;
        CaptureStoredPrograms;
        COMMIT;
        CaptureTriggers;
        COMMIT;
        CaptureUDT;
        COMMIT;
        CapturePartitionInfo;
        COMMIT;
    END CaptureEntireStage;

    PROCEDURE RegisterPlugin IS
    BEGIN
        INSERT
        INTO md_additional_properties
        (
            connection_id_fk,
            ref_id_fk,
            ref_type,
            property_order,
            prop_key,
            "VALUE"
        )
        VALUES
        (
            nSvrId,
            nSvrId,
            'MD_CONNECTIONS',
            0,
            'PLUGIN_ID',
            pluginClass
        );
        COMMIT;
    END;

    PROCEDURE initialise IS
    BEGIN
        DATABASEIDS.DELETE;
        TABLEIDS.DELETE;
        VIEWIDS.DELETE;
        COLUMNIDS.DELETE;
        CONSTRAINTIDS.DELETE;
        PKEYIDS.DELETE;
        CHECKIDS.DELETE;
        UDTNAMEMAP.DELETE;
        PKEYNAMEMAP.DELETE;
        logLine := 1;
        uniqueId := 1;
        registerUDTs;
    END INITIALISE;

    FUNCTION StageCapture(p_projectId NUMBER,
                          p_pluginClassIn varchar2,
                          p_jExists BOOLEAN := FALSE,
                          p_scratchModel BOOLEAN := FALSE) RETURN VARCHAR2 IS
        ret_val NAME_AND_COUNT_ARRAY;
        scratchConnId NUMBER :=0;
        connectionStatsResult NUMBER;
        errmsg VARCHAR(4000);
    BEGIN
        delete from STAGE_TERADATA_LOG;
        -- initialise globals
        initialise;
        -- save parameters
        nProjectId := p_projectId;
        projectExist := p_jExists;
        pluginClass := p_pluginClassIn;
        -- NOTE that nSvrId is the capture connection id (with a really bad name)
        SELECT svrid into nSvrId FROM STAGE_SERVERDETAIL WHERE project_id = nProjectId;

        -- Initialize the log status table
        INSERT INTO
            migrlog(parent_log_id, log_date, severity, logtext, phase, ref_object_id, ref_object_type, connection_id_fk) 
            VALUES (NULL, systimestamp, 666, 'Capture Started', 'CAPTURE', NULL, NULL, p_projectId);
        COMMIT;          

        SetStatus('Capture processing started');          

        --DisableRepositoryTriggers;      
        SetStatus('Disabled Triggers');
        CaptureEntireStage;
        SetStatus('CapturedEntireStage completed');
        COMMIT;
        RegisterPlugin;
        --EnableRepositoryTriggers;
        MIGRATION.POPULATE_DERIVATIVES_TABLE(nSvrId); --new identifier mapping setup
        COMMIT;      
        SetStatus('Finished');          

        RETURN '' || nSvrId || '/' || scratchConnId;
    EXCEPTION
        WHEN OTHERS THEN
            errMsg := SQLERRM;
            --DBMS_OUTPUT.put_line('Exception:' || errMsg);
            SetStatus('Ex:' || errMsg);          
            --EnableRepositoryTriggers;
            RAISE;
    END StageCapture;

    PROCEDURE SetStatus(msg VARCHAR2, sev NUMBER := 666) IS
    BEGIN
        --dbms_output.put_line(msg);
        --commit;
        --progressStatus := msg;
        --dbms_lock.sleep(2);
        --insert into STAGE_TERADATA_LOG (LINE, LOGSTRING) VALUES (logLine, msg);
        logLine := logLine + 1;
        UPDATE migrlog SET logtext = msg,
            log_date = systimestamp
        WHERE
            severity = 666 
            AND phase = 'CAPTURE'
            AND connection_id_fk = nProjectId;                   
        COMMIT;
    END SetStatus;  

    FUNCTION GetStatus(iid INTEGER) RETURN varchar2 IS
        status VARCHAR2(4000);
        errMsg VARCHAR2(2000);
    BEGIN
        SELECT logtext INTO status FROM migrlog WHERE severity = 666 AND phase = 'CAPTURE' AND connection_id_fk = iid;    
        RETURN status; 
    EXCEPTION 
        WHEN OTHERS THEN
            errMsg := SQLERRM;  
            --dbms_output.put_line('Status Message : ' || errMsg);
    END GetStatus;
END TDALLPLATFORM;

/
--------------------------------------------------------
--  Constraints for Table ALLAS
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("ALLAS_NEVE" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("ALLAS_LEIRASA" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("HIRDETO_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("KAPCSOLAT_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("DIAK_VALLALHATJA" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("KEZDES_IDOPONTJA" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ALLAS" MODIFY ("BEREZES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIAK_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."DIAK_FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."DIAK_FELHASZNALO" MODIFY ("FIOKADAT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIAKSZOVETKEZET
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."DIAKSZOVETKEZET" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."DIAKSZOVETKEZET" MODIFY ("NEV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIAKSZOVETKEZETNEL_VAN
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."DIAKSZOVETKEZETNEL_VAN" MODIFY ("DIAKSZOVETKEZET_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."DIAKSZOVETKEZETNEL_VAN" MODIFY ("DIAK_FELHASZNALO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EGYEB_FELTETELEK
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."EGYEB_FELTETELEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."EGYEB_FELTETELEK" MODIFY ("KELL_JOGSI" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."EGYEB_FELTETELEK" MODIFY ("MUNKATAPASZTALAT_EV" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FIOKADATOK
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."FIOKADATOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."FIOKADATOK" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."FIOKADATOK" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."FIOKADATOK" MODIFY ("ADMIN_E" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HELYSZIN
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."HELYSZIN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."HELYSZIN" MODIFY ("ORSZAG" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."HELYSZIN" MODIFY ("VAROS" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."HELYSZIN" MODIFY ("TAVOLROL_VEGEZHETO_E" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HIRDETO
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."HIRDETO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."HIRDETO" MODIFY ("FIOKADATOK_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."HIRDETO" MODIFY ("VALLALAT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISKOLA
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."ISKOLA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ISKOLA" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."ISKOLA" MODIFY ("VARHATO_BEFEJEZES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JELENTKEZOK
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."JELENTKEZOK" MODIFY ("ALLAS_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."JELENTKEZOK" MODIFY ("NORMAL_FELHASZNALO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KAPCSOLAT
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."KAPCSOLAT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."KAPCSOLAT" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."KAPCSOLAT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."KAPCSOLAT" MODIFY ("TELEFON" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUNKAKOR
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."MUNKAKOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."MUNKAKOR" MODIFY ("ALLAS_TIPUSA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NORMAL_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."NORMAL_FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."NORMAL_FELHASZNALO" MODIFY ("FIOKADATOK_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."NORMAL_FELHASZNALO" MODIFY ("VEGZETTSEG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REGISZTRALT_ALLASOK
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."REGISZTRALT_ALLASOK" MODIFY ("ALLAS_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."REGISZTRALT_ALLASOK" MODIFY ("DIAKSZOVETKEZET_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SZEMELYES_ADATOK
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."SZEMELYES_ADATOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."SZEMELYES_ADATOK" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."SZEMELYES_ADATOK" MODIFY ("SZULETESI_DATUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VALLALAT
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."VALLALAT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."VALLALAT" MODIFY ("NEVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VEGZETTSEG
--------------------------------------------------------

  ALTER TABLE "C##TESZT"."VEGZETTSEG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."VEGZETTSEG" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##TESZT"."VEGZETTSEG" MODIFY ("INTEZMENY" NOT NULL ENABLE);
