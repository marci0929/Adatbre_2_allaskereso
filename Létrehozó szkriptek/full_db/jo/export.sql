--------------------------------------------------------
--  File created - szombat-április-30-2022   
--------------------------------------------------------
DROP TABLE "C##ADATB"."ALLAS" cascade constraints;
DROP TABLE "C##ADATB"."DIAK_FELHASZNALO" cascade constraints;
DROP TABLE "C##ADATB"."DIAKSZOVETKEZET" cascade constraints;
DROP TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" cascade constraints;
DROP TABLE "C##ADATB"."EGYEB_FELTETELEK" cascade constraints;
DROP TABLE "C##ADATB"."FIOKADATOK" cascade constraints;
DROP TABLE "C##ADATB"."HELYSZIN" cascade constraints;
DROP TABLE "C##ADATB"."HIRDETO" cascade constraints;
DROP TABLE "C##ADATB"."ISKOLA" cascade constraints;
DROP TABLE "C##ADATB"."JELENTKEZOK" cascade constraints;
DROP TABLE "C##ADATB"."KAPCSOLAT" cascade constraints;
DROP TABLE "C##ADATB"."MUNKAKOR" cascade constraints;
DROP TABLE "C##ADATB"."NORMAL_FELHASZNALO" cascade constraints;
DROP TABLE "C##ADATB"."REGISZTRALT_ALLASOK" cascade constraints;
DROP TABLE "C##ADATB"."SZEMELYES_ADATOK" cascade constraints;
DROP TABLE "C##ADATB"."VALLALAT" cascade constraints;
DROP TABLE "C##ADATB"."VEGZETTSEG" cascade constraints;
--------------------------------------------------------
--  DDL for Table ALLAS
--------------------------------------------------------

  CREATE TABLE "C##ADATB"."ALLAS" 
   (	"ID" NUMBER(38,0), 
	"ALLAS_NEVE" VARCHAR2(200 BYTE), 
	"ALLAS_LEIRASA" VARCHAR2(4000 BYTE), 
	"MUNKAKOR_ID" NUMBER(38,0), 
	"HIRDETO_ID" NUMBER(38,0), 
	"KAPCSOLAT_ID" NUMBER(38,0), 
	"DIAK_VALLALHATJA" NUMBER(38,0), 
	"HELYSZIN_ID" NUMBER(38,0), 
	"KEZDES_IDOPONTJA" DATE, 
	"BEREZES" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIAK_FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "C##ADATB"."DIAK_FELHASZNALO" 
   (	"ID" NUMBER(38,0), 
	"FIOKADAT_ID" NUMBER(38,0), 
	"ISKOLA_ID" NUMBER(38,0), 
	"VALLALAT_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."DIAKSZOVETKEZET" 
   (	"ID" NUMBER(38,0), 
	"NEV" VARCHAR2(200 BYTE)
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

  CREATE TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" 
   (	"DIAKSZOVETKEZET_ID" NUMBER(38,0), 
	"DIAK_FELHASZNALO_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."EGYEB_FELTETELEK" 
   (	"ID" NUMBER(38,0), 
	"KELL_JOGSI" NUMBER(38,0), 
	"MUNKATAPASZTALAT_EV" NUMBER(38,0), 
	"EGYEB_FELTETELEK" VARCHAR2(200 BYTE)
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

  CREATE TABLE "C##ADATB"."FIOKADATOK" 
   (	"ID" NUMBER(38,0), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"JELSZO" VARCHAR2(100 BYTE), 
	"FIOK_TIPUSA" NUMBER(38,0), 
	"SZEMELYES_ADATOK_ID" NUMBER(38,0), 
	"ADMIN_E" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."HELYSZIN" 
   (	"ID" NUMBER(38,0), 
	"ORSZAG" VARCHAR2(100 BYTE), 
	"VAROS" VARCHAR2(100 BYTE), 
	"TAVOLROL_VEGEZHETO_E" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."HIRDETO" 
   (	"ID" NUMBER(38,0), 
	"FIOKADATOK_ID" NUMBER(38,0), 
	"VALLALAT_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."ISKOLA" 
   (	"ID" NUMBER(38,0), 
	"NEV" VARCHAR2(200 BYTE), 
	"VARHATO_BEFEJEZES" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."JELENTKEZOK" 
   (	"ALLAS_ID" NUMBER(38,0), 
	"NORMAL_FELHASZNALO_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."KAPCSOLAT" 
   (	"ID" NUMBER(38,0), 
	"NEV" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"TELEFONSZAM" VARCHAR2(200 BYTE)
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

  CREATE TABLE "C##ADATB"."MUNKAKOR" 
   (	"ID" NUMBER(38,0), 
	"ALLAS_TIPUSA" VARCHAR2(200 BYTE), 
	"SZUKSEGES_VEGZETTSEG" VARCHAR2(200 BYTE), 
	"EGYEB_FELTETELEK_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."NORMAL_FELHASZNALO" 
   (	"ID" NUMBER(38,0), 
	"FIOKADATOK_ID" NUMBER(38,0), 
	"VEGZETTSEG_ID" NUMBER(38,0), 
	"VALLALAT_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."REGISZTRALT_ALLASOK" 
   (	"ALLAS_ID" NUMBER(38,0), 
	"DIAKSZOVETKEZET_ID" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."SZEMELYES_ADATOK" 
   (	"ID" NUMBER(38,0), 
	"NEV" VARCHAR2(26 BYTE), 
	"SZULETESI_DATUM" DATE
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

  CREATE TABLE "C##ADATB"."VALLALAT" 
   (	"ID" NUMBER(38,0), 
	"NEVE" VARCHAR2(200 BYTE), 
	"TULAJDONOS" VARCHAR2(200 BYTE), 
	"JEGYZETT_TOKE" NUMBER(38,0), 
	"ERTEKELES" NUMBER(38,0)
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

  CREATE TABLE "C##ADATB"."VEGZETTSEG" 
   (	"ID" NUMBER(38,0), 
	"NEV" VARCHAR2(200 BYTE), 
	"INTEZMENY" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##ADATB.ALLAS
SET DEFINE OFF;
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('5','DevOps Engineer','Midtown based high tech firm has an immediate need for an innovative DevOps Engineer to help define Dev / Ops related processes, build out the automation.  In this position, the Dev / Ops Engineer will need to engineer technical solutions as well as perform process engineering. The ideal candidate has strong scripting skills for automation as well experience with configuration management, server deployment, and continuous integration and experience with tools such as Chef, Puppet, etc.  Must have experience with virtualization using VMware and Linux experience is preferred.  Experience with GO, Docker, Ansible, Microservices, and the Cloud are highly desired.   This is a permanent position with an innovative technology firm in Midtown that offers excellent benefits including bleeding edge technology, very generous PTO, matching 401(k), high-tech office environment, casual dress and a collaborative culture.  Need is IMMEDIATE!!    Category: Developer / Architect -Other','7','47','1','0','3',to_date('22-DEC.  -09','RR-MON-DD'),'767065');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('6','SAP FICO Architect','We are looking for a Senior SAP FICO Architect to join us fulltime and support our ongoing projects and customers. Must have excellent Pre-sales experience.Consultant should be ready for 100% travel. If interested, Please send us your updated resume, best time and contact numbers to girish(dot)bandaru(at)yash(dot)com to discuss more on this opportunity. Thanks & Regards Girish BandaruYASH Technologies773-828-4341girish.bandaru@yash.com','51','20','5','1','4',to_date('22-OKT.  -21','RR-MON-DD'),'798053');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('7','Network Engineer','Network Engineer Job Description A Network Engineer is responsible for analyzing, designing, installing, configuring, maintaining and repairing of network infrastructure and application components. A Network Engineer performs a wide variety of evaluation, maintenance, installation and training tasks to ensure the computer network performance meets company and user satisfaction. A Network Engineer also provides direction, information, and recommendations regarding network configurations and installations. PRIMARY DUTIES AND RESPONSIBILITIES:   * Maintain a thorough understanding of the basics behind the Internet and its workings (DNS, Security, IP Routing, HTTP, VPN, Email Routing, SPAM, etc.) * Configure and setup Cisco Firewalls, VPN Concentrators and Security appliances for access to vital business applications * Design, setup and configure complex switching environments * Design, setup and configure complex wireless networking that supports open or secured access and the ability to support voice and video applications * Maintain a thorough understanding of Local Area Networking * Assist in the design of multi-server environments including IP address schemes, DNS, WINS, EtherChannel (Bonding), etc. * Configuring and installing client and server network software for upgrading and maintaining network and telecommunication systems. * Maintaining multi-site network operations and software applications, operating systems and regular maintenance with both private and public facil','9','12','7','0','22',to_date('22-AUG.  -19','RR-MON-DD'),'426627');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('8','Sr. Web Application Developer (Cloud Team) - Chicago','Bluebeam is looking for talented sr. web developers with a passion for building robust, performant, scalable, high availability web applications. You should have extensive web development experience including designing RESTful services utilizing relational and no-sql databases in a testable framework.  Want a peek at who you would be working with? Our software developers are friendly, fun, intelligent, hard-working team members devoted to developing software right.  They have an ability to see the big picture throughout the design and development process.  We are highly-collaborative so you should have a capacity to contribute to and learn from the team in constructive debates in order to coalesce multiple points of view into effective unified solutions.  We work in small fast-paced scrum-agile teams. You would be working alongside software engineers, and product and project managers who are self-starters passionate about delivering clean, dependable software solutions.  To work well with the team you should have an ability to clearly articulate solutions to complex problems both to technical and non-technical people.   What we''d need to see:5+ years of experience in a related field (Candidates will be considered for engineer or senior engineer based on experience)Bachelor’s degree or higher in a computer science or equivalent fieldExtensive use of APIs and understanding of HTTP and REST architectureExperience using OO methodologies in designing software solutionsStrong under','32','11','11','0','2',to_date('22-NOV.  -01','RR-MON-DD'),'417007');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('9','Front End Developer','This is a fulltime position for a Javascript developer for a financial software, data, and media company. This role is based our of the Midtown, NY location (candidates must work onsite). You''ll be part of a team working on the application that is the glue that holds the firm''s main product together and is used as a communication tool, a price dissemination system and a way to receive information from all other applications within the firm. Responsibilities:   Help us design, create and build our next-generation user interface Be a key contributor in the re-architecting of our application service layers to improve our scalability, stability and performance Work with the team, our product and our customers to define priorities and the technology we use Work with other teams and learn about our search infrastructure, core databases and how we support hundreds of applications through our APIs Required Skills and Experience:   3+ years of production-level development Solid JavaScript knowledge Must want to and like working on UI Preferred:   An understanding of C++ fundamentals Experience working on other highly visible applications  Start Date: 06/03/2016','36','71','3','0','17',to_date('22-OKT.  -24','RR-MON-DD'),'752449');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('10','Application Support Engineer','SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. They are looking for an Application Support Engineer (or a Junior Technologist) to join a growing team to provide support to our high profile media customers. The Application Support Engineer is a technical detective * not only do they diagnose and investigate customer issues, they are also responsible for understanding how each of the services within the client Service Oriented Architected environment work together, as well as ensuring that the overall health of our services is maintained. The ideal ASE is required to have solid written and verbal communication skills, a strong technical mindset, and a knack for solving problems. If your ideal job is to read a list of steps and perform them in order, this is not the job for you. The ASEs like to get their hands dirty and figure things out themselves. If a customer reports an issue, our ASEs dive right in and root out the caus','44','43','25','1','16',to_date('22-JÚL.  -13','RR-MON-DD'),'475097');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('11','OpenStack Engineer - 12185','JOB DESCRIPTION:As a senior member of the team, you will be responsible to provide technical leadership to Development and QA to deploy, operate, maintain and evolve our Openstack based cloud infrastructure in private cloud. We are looking for someone who has passion for developing scalable, secure and enterprise-grade deployments and enjoys working with a team of dedicated engineers. Responsibilities: Evolve Openstack based infrastructure, server deployment strategies and testing to support our goal of 100% up-time and quick turnaround of deployments for the engineering organization.Work closely with Development and QA engineers to build a robust Openstack based cloud solution.Develop and document the best practices for deploying Cloud solutions.Design and develop new features in Openstack infrastructure.Requirements:3+ years’ experience in architecture, design and deploying private cloud solutions with Openstack.Proficiency in Openstack components and technologies. Experience with automated scalable deployments will be a big plus.Familiarity with Openstack systems management concepts, processes and standards; capacity/performance management and tuning; and storage and network managementExperience with automation using configuration management tools. Experience with Salt will be a big plus.Experience with scripting languages. Proficiency in Python will be a big plus.Experience across the entire software development lifecycle from requirements analysis to design to developmen','12','27','12','1','23',to_date('22-OKT.  -09','RR-MON-DD'),'598583');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('12','9001 Data Security Administrator - Unix & IAM','Must have skills: UNIX, IAM (Identity Access Management), Scripting knowledge, and 5+ years of total experience in this role required. OIM (Oracle Identity Manager) or other similar tools are required. The ideal candidate has worked as a Systems Administrator and/or Information Security Analyst in the past.Nice to have skills: Knowledge of SQL, coding languages, and Windows are really nice to have. Active Directory is also really nice to have. DescriptionThe ideal candidate for this position will be a proactive and self-motivated professional who will work with other team members to manage access controls for our client''s key information resources residing on multiple platforms, with a focus area in Windows, UNIX, Linux. The successful candidate will have strong scripting skills to support the automation effort within the team. Education/Experience:• Bachelor degree in computer management, information security or equivalent job experience• CISSP, CISA, CISM and other comparative information security certifications are preferred• 5 to 7 years computer security experience required Responsibility level:• Provide support in account provision and de-provision in Windows and UNIX systems in Active Directories/UNIX Enterprise Directories• Complete access request processing as per pre-defined sets of procedure and within agreed Service Level Agreements (SLA), resolve problem tickets and assist other security analysts as needed• Document access management procedures for assigned platf','21','71','4','0','8',to_date('22-DEC.  -21','RR-MON-DD'),'236320');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('13','Software Engineer Manager','VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is seeking an engineering manager to lead a team of 3*6 engineers working on the server side of our industry-disrupting clearing platform.Ideal candidate will be:Experienced. Have extensive experience building back-end applications and services, and managing engineersPassionate. Driven to improve your managerial skill set every day. Keen to solve interesting problems with creative and simple solutions.Pragmatic. Would rather deliver a 40% solution in two weeks than an 80% solution in six.Introspective. You recognize your strengths and seek to maximize them. You recognize your weaknesses and work around them.A good team member. We believe in the profound impact that*s possible when teams of like-minded individuals set their sights on a common goal.A mentor and coach. You embrace the role of teaching and helping others get better.ResponsibilitiesManage staffing and career development of a distributed team.Represent cultural values and coach team members.Build a team that is results-oriented and collaborative.Deliver great software','26','44','14','0','13',to_date('22-SZEPT.-12','RR-MON-DD'),'690936');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('14','Sales Engineer - Los Angles','Genesis10 is currently seeking a Sales Engineer for a steel company in Los Angeles , CA. This is a direct hire position. Summary This position leverages strong commercial and technical skills and industry experience to recognize customer needs and apply the company capabilities and technology across the full portfolio of the products and services. Responsibilities:   * Fully understands and leverages the company value proposition to maximize price and sales to grow and protect business * Successfully eliminates price as an objection when delivering new products or projects * Expected to demonstrate leadership skills by influencing, driving for results, and resource commitment * Provide customer expertise including leading customer negotiations, developing pricing strategies, and managing a portfolio of business accounts * Ownership of the technical relationship with customers by providing consistent and expert technical support, across the Timken portfolio of products and service, additional expertise in areas required for assigned customers when necessary. * Manage sales process for assigned customer accounts or territory * Makes target number of customer calls and attains sales targets * Delivers high-impact customer presentations that focus on capabilities, solutions and value proposition * Works with Customer Engineering on complex system analyses, including bearing selection on non-standard part number or types * Develop customer-based sales plan including sales, won/los','3','23','22','1','5',to_date('22-NOV.  -14','RR-MON-DD'),'540553');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('15','Project Manager','VanderHouwen has more jobs you may like! Find them here:http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetworkJoining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is looking for a Project Manager to join the team looking to expand services offered device wide. This project is in flight in the implement and roll out phase. They need someone who can hit the ground running and help carry this across the finish line.ResponsibilitiesDrive / Facilitate conversations.Schedule meetings.Clarify tools used for Project Management (MS Project, etc.)Take over presented tasks.QualificationsPMP preferred but not required.Familiarity with multiple device management.Recent Mobile Device experience required.Familiarity and adaptability to new and emerging technologies.','20','76','15','0','11',to_date('22-DEC.  -08','RR-MON-DD'),'540468');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('16','Windows System Administrator','Windows Systems Administrator The Windows Systems Administrator will play a technical leadership role in a 24x7 highly-available production environment. The ideal candidate will be self-motivated and articulate, recognized as an expert with Microsoft operating systems, Win NT, 2K and 2K3, related software technologies, and have a proven history of using administrative tools and automating routine administration tasks.Day-to-day responsibilities include:Must be able to work independently to troubleshoot, perform root cause analysis, identify and isolate technical issues. Must be willing to take ownership of the issue analysis and resolution efforts and commit to "doing what it takes" to resolve technical issues regardless of the effort or timeframe required. Triaging as necessary for production, QA & development environments.5+ years overall experience with at least the last 2 years focused on providing technical support across a broad range of Microsoft technologiesMentor SA1 & SA2: thought leadership and setting positive examplesCapable of performing design, test and implementation of complex technical solutions and architectureAbility to lead and manage system initiatives and new projectsTroubleshooting issues related to production systems, triaging as necessary for production, QA & development environments.Work with external vendors/consultants to diagnose complex problems and drive resolutionResolve errors and alarms quickly and provide timely escalationComplete tasks req','16','40','8','0','15',to_date('22-DEC.  -21','RR-MON-DD'),'611464');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('17','Test Lead / Test Manager','Location Atlanta, GAJob Title Test Lead / ManagerDuration 6 Months + High possibility of ExtensionRequired Skills: * 4+ years of experience in Software Testing and Quality Assurance.* Good communication skills* Good understanding of Telecom Network* Good knowledge and experience on preparing Test Plan and Test Strategy documents.* Great understanding of Defect detecting, tracking and reporting techniques.* Excellent Logical and Reasoning skills with keen eye to detail.--------------------------------------------------------------------------------------------------------------------------------------------Submit your resume on this position by clicking Apply button on this page or call Utpal @ 973-841-2390 and email: utpal.raj@collabera.com to contact recruiter to discuss details about this position--------------------------------------------------------------------------------------------------------------------------------------------','6','23','23','0','1',to_date('22-JÚL.  -28','RR-MON-DD'),'273991');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('18','Principal Application Analyst-Supply Chain Lawson','VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client seeking an individual who can apply extensive and advanced principles, theories, and concepts to the development of solutions to complex problems with innovation and ingenuity. Expert knowledge of Lawson Supply Chain modules and business practices.Responsibilities Demonstrate service excellence and positive interpersonal relationships in dealing with others, including patients/families/members, employees, managers, medical staff, volunteers, and community members, so that productivity and positive relations are maximized.Act as a system specialist or business consultant on complex projects or system, which can include planning and coordinating large scale projects or tasks across a multi-state enterprise, using cross disciplined team efforts.Provide technical and operational guidance to ensure that installed systems are working effectively and that proposed systems will meet the organizations future needs.Work with users, user groups, and vendors to gather requirements and provide fit gap analysis and effective technical solutio','31','57','13','0','7',to_date('22-OKT.  -23','RR-MON-DD'),'306753');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('19','Messaging Administrator','Genesis10 is actively seeking a Messaging Administrator for a direct hire position within the insurance industry for our client located in Kansas City, MO. Description:   * Our client has an exciting opportunity for a Messaging Administrator who would enjoy working for an organization that strives every day to support the public good and make a difference. You will be working in the division responsible for hardware and software infrastructure as well as providing technology resources for regulatory systems and databases. If you hold a Microsoft Certified Engineer or Certified Information Systems Security Professional certification, we want to chat with you. * This position is located in, state-of-the-art offices in the heart of downtown Kansas City which includes great restaurants, and top-notch entertainment venues. This is a full-time position in a positive and flexible environment. Responsibilities:   * Providing administration and technical support for Technical Services enterprise backup systems including: + Administering, supporting, and maintaining the Veritas NetBackup Infrastructure. + Administering, supporting, and maintaining the IBM Tivoli Backup Infrastructure. * Providing administration and technical support for the internal e-mail network including: + Microsoft Windows Server 2008, Windows Server 2012, Microsoft Exchange 2013 support. + Administering the SMTP Mail Gateway servers, Mail flow, gateway filter blocks, virus scanning and virus blocks. * Administeri','14','47','9','0','10',to_date('22-AUG.  -22','RR-MON-DD'),'634954');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('20','Java Architect - Denver, CO - Fulltime','Our client in the healthcare software industry is seeking a Java Architect to join their growing team. Below is the job description, if interested please submit a word resume and the best time and number to reach you to discuss.Title: Java ArchitectLocation: Denver, CO Duration: Fulltime Salary: DOEResponsibilities: This person will be working with IT leadership, product owners, and project management to determine the architectural approach and patterns to apply to projects of the highest level of complexity Design solutions that appropriately balance technical elegance, business need, project risk, and cost Guide the development team throughout the lifecycle.10 years of experience in software development including object oriented analysis and design. Prefer Java technology stack, but similar backgrounds such as .Net will be considered3 years of experience in a team lead role3 years of experience in an application architect or solution architect roleExperience with Middle tier development using Java and related technologyWeb application developmentMobile application development on multiple platformData architecture and data movement, including OLTP systems and BI/Data Warehousing scenario','22','18','17','0','21',to_date('22-DEC.  -13','RR-MON-DD'),'790343');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('21','IT Business Analyst','Genesis10 is looking for a Business Analyst for a long-term contract position in Sandy Springs, GA with our Fortune25 financial services industry client. Only W2 candidates will be considered. Description:   As a Business Analyst, you will conduct business and technical analysis for process and tool enhancements and ensures operational readiness to satisfy business partner objectives. The Business Analyst will employ a set of tasks and techniques used to work as a liaison among stakeholders and core team members in order to understand the structure, policies and operations of an organization, and to recommend solutions that enable the organization to achieve its goals. Responsibilities:   * Business Analysis, Planning and Monitoring * Requirements Management and Communication * Enterprise Analysis * Requirements Analysis * Solution Assessment and Validation * Work with core team members to elicit, organize, document and validate business rules, functional and non-functional requirements * Partner with the product manager to build cohesive release content * Translate stakeholder requests into a set of system features. These in turn are detailed into specifications for functional and nonfunctional requirements * Ensure the functionality, usability, performance and supportability of the requirements * Assess capability gaps and identify new capabilities required by the enterprise to meet the business need * Understand the organizations business and how the technology supports th','38','38','20','0','19',to_date('22-SZEPT.-20','RR-MON-DD'),'272901');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('22','IT Sales Manager','Great opportunity for driven, energetic IT Sales Professionals in chicago! Our client is a leading Global IT services Provider based in the tech mecca of the world- Silicon Valley & are looking for High energy, IT sales Professionals to join their team in Midwest . The position offers working remotely ! 7-10 yrs IT Services Sales experience.   Must have a mix of IT Services Project selling (50%) and Staff Augmentation *  Onsite Placements with direct end clients (50%).    Industry segments preferred in Retail / Manufacturing / Supply Chain / Product Engineering / Mobility. A SALES HUNTER MENTALITY IS A MUST! Must have a proven sales track record of success of carrying a quota of $3- 4.5 Million dollars Competitive Base Salary + Commission !','1','56','19','1','12',to_date('22-AUG.  -25','RR-MON-DD'),'543704');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('23','Sr. Systems Test Engineer (PERM)','Our client is the world’s premier voice and electronic interdealer broker and the source of global market   information and commentary for professionals in the international financial markets. The Group is active in the wholesale markets in interest rates, credit, commodities, foreign exchange and equity derivatives.Our client is currently seeking a Sr. Systems Test Engineer  for a fulltime position in Parsippany, NJ.Principal Responsibilities & AccountabilitiesConduct the entire system certification effort for a project with minimal supervision.Serve as the principal system engineer for major test efforts; lead the effort of other system engineers and application testers as requiredRepresent the group in requirement, specification, and design review meetings and contribute constructive feedback to the presenters in the group’s area of expertise.Create test tools to perform API level testingPerform Load and Performance Testing for C / C++, Java and Adobe Flash based applications.Create status and test result reports for management and represent the group in status meetings.Estimate certification effort for projects and ad-hoc testing requests.Determine and execute appropriate system-side testing for each project outside of requirements.Build, install and fallback software releases and database schemas in lab environments.Support operations personnel for critical production issues as needed.Write advanced tools and scripts to aid certification efforts and simplify operations p','45','13','6','0','20',to_date('22-AUG.  -20','RR-MON-DD'),'211317');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('1','AUTOMATION TEST ENGINEER','Looking for Selenium engineers...must have solid java coding skills I have several openings some 3 month to hire some 6...must be able to go PERM  This can be someone with 0-5 years of experience. Most important qualities are Eagerness and Aptitude. POSITION PURPOSE - Do you want to be on the forefront of cutting edge technology, introduce solutions to problems that didn’t exist before, and have the ability to see the result of your successes? Our client assures growth by collaborating with development teams and creating tools that aid engineers in building, testing, debugging, and releasing software. We touch millions of users by increasing the rate of development and ensuring our products are methodically tested. We are experts in software health, testability, and sustainability. As a Software Engineer in Test at our client, you can expect to build flexible and scalable solutions while working on some of the most complex challenges in large-scale computing by utilizing your skills in data structures and object oriented programming. MAJOR TASKS, RESPONSIBILITIES AND KEY ACCOUNTABILITIES - Lead and contribute to engineering efforts from planning to execution and delivery to solve complex engineering problems in tools and testing. • Design and build advanced automated testing frameworks. • Build tooling to help Developers measure and increase their velocity. • Adopt best practices in software health, testing, and sustainability. • Analyze and break down complex software system','39','35','18','0','25',to_date('22-JÚL.  -27','RR-MON-DD'),'757681');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('2','Information Security Engineer','The University of Chicago has a rapidly growing security program with many opportunities for a motivated person to work in a variety of roles and many technical areas.  This position is responsible for providing incident response, information security assessment, monitoring, and system administration under the general direction of the Information Security Officer and the Lead Information Security Engineer. Essential Functions: Execute IT Security Network Monitoring and Incident Response procedures. Lead or participate in IT Security projects. Administer IT Security systems, including updates, backups, and upgrades Consult, advise, and provide security assessment services to application development or acquisition projects to assess security requirements and controls and to ensure that security controls are implemented as planned. Research security issues and contribute to IT Security communications, web pages, blogs, and awareness materials. Document internal processes, write security standards and guidelines. Other duties as assigned  Qualifications:Bachelor''s degree OR a minimum of four years of experience in the Information Technology field OR an equivalent combination of education and experience required.  Minimum two years of professional experience in a technical Information Security role required. Experience administering linux/unix systems is required. Experience administering Windows systems is preferred. Experience with programming or scripting languages such as Perl','11','42','2','0','18',to_date('22-DEC.  -26','RR-MON-DD'),'608640');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('3','Business Solutions Architect','GalaxE.SolutionsEvery day, our solutions affect people throughout the world. From Fortune 100 companies to start-ups, GalaxE develops and implements strategic projects that are critical to the success of customers’ businesses and the lives of tens of millions of people. For over twenty-five years, we have grown and evolved into a multi-national firm that employs over 2000 team members worldwide. But we’re not done evolving. It took collaboration and innovation to get here, and it takes collaboration and innovation to get where we (and our customers) want to be tomorrow.   What does this mean for our employees? They have the security of an established company, with the benefits of working for a company where great minds, hard work, leadership and innovation are highly regarded and rewarded. As Thomas Edison said, “There’s a way to do it better – find it”. We want our employees to find it. We’re looking for creative people, with an entrepreneurial spirit, looking to work on awesome projects! Sound like you? Come work with us! Find out for yourself what it means to be part of the GalaxE team. It’s not always easy, but important work never is. #WeAreGalaxE  Develop a practical roadmap for an enterprise-wide BI reporting and analytics platform with consideration to business objectives, technological considerations and budget. Define the overall BI data architecture which could include: ETL processes, ODS, EDW, data marts and data lakes.Provide BI technical and architectural guidan','5','30','24','0','14',to_date('22-AUG.  -15','RR-MON-DD'),'611268');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('4','Java Developer (mid level)- FT- GREAT culture, modern technologies, career growth','Java DeveloperFull-time/direct-hireBolingbrook, IL Our client is a leading edge software development organization in a unique and interesting industry, and will provide training to help in on boarding.   They have an excellent culture which is energetic, challenging, team oriented, casual (jeans are OK), have work/life balance, and an outstanding benefits package. They encourage communication and have an atmosphere where creative bright minds are rewarded.  They are looking for a Java Developer to join their company.  This position will give someone the ability to have input in to systems design and grow with the company.  This person will work with a team that is focused on the development and maintenance of various applications supporting their clients.  This position will be building applications from scratch and be very involved in the implementation process.  The ability to communicate and work directly with clients is essential. The successful candidate will be a self-directed problem solver with experience in application design, Java/JDBC development, and multi-threading. If you are interested, please email your resume or contact KGalecki@TransTechIT.com Overview:The primary application this person will initially be working on serves as a middle tier; backed by a relational database (Oracle, SQL Server, MySQL) via JDBC, and fronted by the company’s transaction-based law enforcement message switch via proprietary TCP/IP protocols. Primary Responsibilities:- Develop robu','4','76','10','0','24',to_date('22-NOV.  -20','RR-MON-DD'),'560285');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('37','Project Coordinator II','Genesis10 is seeking MxU Construction Coordinators in Chicago, IL! As an MxU Construction Coordinator, you are responsible for providing technical solutions and managing relationships with the client''s MDU product team. Your role is key in moving our clients MDU (multi-dwelling unit) projects from sales throughout completion of construction. You will have a demonstrated passion for account management with an entrepreneurial spirit and passion for client management, eventually managing a small team of temps across Fiber cities in your region. Our clients projects, like their users, span the globe and require managers to keep the big picture in focus. As an MxU CC, you lead complex, multi-disciplinary projects. You plan requirements with internal customers and usher projects through the entire project lifecycle. This includes managing project schedules, identifying risks and clearly communicating goals to project stakeholders. Your projects often span offices, time zones and hemispheres, and it''s your job to keep all the players coordinated on the project''s progress and deadlines. Responsibilities Manage Salesforce construction project tickets end to end and ensure all SLA''s are being met Attend staff meetings and assist Fiber sales with engineering & construction questions as requested by Fiber sales or engineering teams Work with partners closely on the end to end process from site selection to installation including contracts, escalations, scheduling, etc. Work closely with ','25','16','4','1','8',to_date('22-JÚN.  -17','RR-MON-DD'),'706169');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('38','Core Java Developer with distributed computing','Hi,Established in 1998, eTouch Systems is a technology services company that specializes in Digital Web Engineering. We deliver technology services and accelerate growth for Global 1000 companies by solving complex business challenges with breakthrough technical innovations. We partner with leading global hi-tech enterprises to service their business and technology needs. currently working with our direct clients including VMware, Intuit, Cisco, Yahoo, Sony, Google, PG&E & Kaiser amongst others enabling the success of their Software as well as IT infrastructure development initiatives through the quality of our consultants.Role: Core Java Developer with distributed computing Location: Mountain view, CA Duration: 12+ Months We are a team with the vision to change the way our customers interact with our products to discover contextual relevant content. With millions of customers using our software you will be part of cutting edge team that is responsible for building highly scalable and distributed search system at scale that renders contextual relevant contents. You will be working with recognized experts, Data Scientist, Data Engineers, Solution Architects in the field to deliver “On-Tap” Unified Search as a Service & best in class search user experiences for web & mobile. Required Skills:Need a strong core Java Developer with some good Data experience. Must have experience with distributed computing.Good working knowledge on Vector Model Search and AWS. Please feel free to s','42','78','14','0','13',to_date('22-AUG.  -28','RR-MON-DD'),'227059');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('39','Software Developer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.Summary The ideal candidate is a clever, motivated and versatile coder with a hacker mentality who is eager to tackle complex problems. The candidate must be comfortable working in an agile development environment with high expectations for rapid delivery of prototypes, changing requirements, and direct feedback from the internal business customer.  Candidates should be able to learn fast and learn on the fly in order to work with a variety of languages, and be capable of taking responsibility for delivering code that accomplishes defined objectives.  Qualifications Required .NET and C# (Minimum 2 years* experience)Full development lifecycle experience including analysis, design, implementation, testing, monitoringSQL Server: Data modelling, T-SQL, Stored procs, Performance TuningBS or higher degree in Computer Science or related technical field. Qualifications Preferred Microsoft Azure or other cloud technologies Cosmos or other big data technologiesWeb API/UI development','41','76','22','0','5',to_date('22-JÚN.  -30','RR-MON-DD'),'754407');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('40','Mobile Automation Tester , Rate :Open Negotiable, 1 year','Centizen Inc, Global agile IT solutions and consulting firm focused in delivering scalable? solutions to address complex business problems. We provide above market salaries and benefits so that we have a lower turnover rate. Please visit our website to see all our open positions(20+) in PM, QA, BSA, SAP, Analytics, Java developers etc. http://careers.centizen.com/Mobile Automation Tester:453753SRate : Open Negotiable for the right candidateDuration: 1 yearLocation: Beaverton, ORResponsibilities:Manual and automated testing of mobile applications (iOS and Android).Manual and automated testing of Sports CE (Consumer Electronics) devices.Manual and automated testing of Mac and PC applications.Manual and automated testing of websites.Requirements:4 years of professional experience in quality engineering, IT or related area3 years hands-on experience testing desktop applications, consumer electronics devices, and websitesInterest in testing sports and fitness applications and devicesExperience authoring comprehensive test plans and test scriptsExcellent verbal and written communication and collaboration skills to effectively communicate with both business and technical teamsComfortable working in a fast-paced, results-oriented environmentTo Apply:We offer immediate H1B transfer. Immediate Green Card processing with PERM for the right candidates.Please send us your resume, Visa Status, Availability and bill rate to sdet@centizen.comPlease follow us on:Open Positions-http://www.care','34','2','15','0','11',to_date('22-JÚL.  -04','RR-MON-DD'),'720741');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('41','Project Manager : Information Security and Risk Management','Project Manager Contract postition located in downton San Francisco.  Sorry no H1B sponsorship available on this one.      Local and candidates willing to relocate are encouraged to apply.   A background in Banking, Wealth Management, Financial Services is a HUGE PLUS.   Any exposure to INFO SEC is a plus.  Any background in Operations Management is a huge plus.      Please email resume to Ellen at elerner@csi-it.com attached as a Word Doc.    Please include rate info.  You must have GOOD CREDIT in order to qualify for this role. Key Skills, Knowledge and Abilities:· The Project Manager (with some business analysis skills) who is well-versed in Banking, Wealth Managemennt, Financial Services, Regulated environments. security architecture and controls; familiar with current and emerging threats; able to develop risk mitigation strategies required to protect the confidentiality, integrity and availability of information systems and client data; proficient at working with senior management, internal business units and vendors to resolve risk issues and to develop efficient and effective action plans; familiar with the laws, regulations, industry standards and guidance pertaining to information security; experienced in the oversight of multiple, complex projects; and able to effectively manage a team of risk analysts. Must have excellent verbal and written communication skill, the ability to understand business requirements and skill in interacting with and influencing senior man','13','74','8','0','15',to_date('22-JÚN.  -26','RR-MON-DD'),'470889');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('42','Informatica Admin','Administering the Informatica environmentApply patches / upgrades / hotfixes for Informatica Power CenterMonitor performance, troubleshoot, and tune ETL processesWill be responsible for 24x7 supportWork with Informatica vendor on any issues that ariseSupport the Informatica developer team as neededExperience and SkillsMust have demonstrated experience in Informatica suite of productsSeveral years’ experience in building/implementing scalable, reliable and high performance ETL architecturesProficiency with RDBMS systems, SQL, Oracle PL/SQL, UNIX shell scripting, and database optimizations  I kindly request to apply resumes with genuine experience only Project start date is in second week of JulyKindly send your resumes to yag{dot}rao{at}mygoconsulting{dot}com..You can reach me on Three*Three*One---Four*Two*Five---Seven*Seven*Zero*Five Regards,Yagneshwar Rao yag.rao@mygoconsulting.comOffice: 331-425-7705 ','29','15','23','0','1',to_date('22-SZEPT.-12','RR-MON-DD'),'478014');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('43','Software Development Engineer, Big Data','Do you want to help build a highly personalized homepage that greets each of our millions of customers worldwide every time they visit Amazon.com? Are you interested in building data pipelines that process petabytes of customer behavior data?Amazon’s Homepage Personalization team develops and supports personalization and recommendations for Amazon customers across music, books, movies, fashion, and everything else that Amazon offers. We analyze petabytes of implicit and explicit feedback data on our hundreds of millions of customers and billions of products in order to guide the development of a meaningful and highly personalized homepage experience.We are looking for an experienced and forward thinking software engineer with a focus on data engineering to join our team. This person will work closely with other software engineers and machine learning scientists to design and implement predictive, scalable models for everything from product recommendations to personalized mobile content layouts. You will work directly with machine learning scientists to scale up collaborative filtering models on retail purchases, Prime Video views, Prime Music streams, and other Amazon data to deeply understand our customers.This is one of the foremost roles in data engineering with the opportunity to reach millions of customers on one of the highest traffic consumer websites in the world. If you are passionate about data engineering, software engineering and personalization at scale then we e','49','20','13','0','7',to_date('22-NOV.  -10','RR-MON-DD'),'767139');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('44','Sr. Business Data Analyst','Genesis10 is seeking a Sr. Business Data Analyst for a 6-month contract position with a client in Eagan, MN. Genesis10 provides access to career opportunities with over 40 clients in the Twin Cities. As the #3 ranked firm for Business and IT consulting in Minnesota, we offer a variety of opportunities whether you are looking for contract, contract-to-hire, or permanent positions. Let''s connect today! Responsibilities:   * Data gathering and analysis as part of assigned tasks and projects * Creating data visualization as part of assigned tasks and projects * Assist Editorial Service teams with market analysis and related requests * Assist in Market Analysis, Jurisdictional build and retention model projects * Assist in development and implementation of Strategy Insights Framework in the areas of data analysis, KPI development and reporting * Interact with partner teams to manage tasks and projects * Other projects and tasks as assigned Qualifications:   * Bachelor''s degree * BS in statistics, math or data science related field of study preferred * Experience in a Business Analyst or related role involving data analysis * Strong Excel skills including charting, Pivot tables, statistical and data cleanup functions * Basic PowerPoint, Word, Outlook skills * Fundamental statistical, data analysis and visualization skills * Strong communication skills * Ability to build effective working relationships with members of team and partner organizations * Good written and oral communicat','18','30','9','0','10',to_date('22-NOV.  -29','RR-MON-DD'),'562070');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('45','Clinical Site Monitor','CLINICAL SITE MONITOR REQUIREMENT #16-00755RECRUITER: ANNIE DOYLEJOB LOCATION: LOS ANGELES, CAMAY 12, 2016 *** CANDIDATES MUST BE ABLE TO WORK ON OUR PAYROLL AS A W-2 ****** WE WILL SPONSOR H1-B VISA''S *** Project Description:Position located in Los Angeles, CA area and will manage sites in this area and help region cover Northern and Southern California as needed. Perform/facilitate time-efficient pre-study initiation process. Orient site personnel to study protocol/procedures. Monitor compliance to FDA Regulations and BMS SOP. Manage study site activities through frequent on-site visits and telephone contracts Required Skills: On-site monitoring experience required of multiple protocols in multiple therapeutic areas, including oncology. This 6+ month position starts ASAP. Please E-MAIL your resume (attachment to email) with rate and availability to Annie: annie@alphaconsulting.com','35','46','17','1','21',to_date('22-NOV.  -06','RR-MON-DD'),'346186');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('46','Product QA Engineer','Job Summary: The person in this position provides the quality-assurance support to customers, service teams, assigned production operations and programs to ensure that the product is built in accordance with customer and division quality requirements while maintaining production flow.Essential Job Functions: Provides Customer Quality interface and expertise to proactively assure requirements are understood and satisfied Investigates, contains and eliminates causes of customer quality problems and manage completion of corrective actions requests Analyzes organizational customer quality metrics and performs periodic reviews to evaluate results and recommendation action plans to close gaps in the supply chain Develops and analyzes statistical data and product/process performance to recommend and implement improvements in targeted areas Supports Supply Chain Management organization relative to the collection and analysis of customer quality data providing expertise to assists service management teams and customers with product and process quality requirements Reviews sales orders and associated bills of materials to ensure that customer order requirements are clearly specified and planned for, prior to release for production build Qualifications: Bachelors Degree preferably BSEE or BSME, or equivalent experience. 5 yrs experience with Product Quality Assurance Minimum of 5 years* experience in Quality Assurance Casino/Gaming experience preferredKnowledge, Skills, & Abilities: Und','15','30','20','0','19',to_date('22-NOV.  -28','RR-MON-DD'),'399129');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('47','System Support Administrator','System Support AdministratorSeeking a part-time System Support Administrator to assist in supporting our offices across the Las Vegas valley.Key Responsibilities: Perform hands-on fixes remotely or in person, including installing and upgrading software, installing hardware, implementing file backups, and configuring systems and applications. Loading computer equipment with software, access software updates, drivers, knowledge bases Perform preventative maintenance, maintain, implement, and ensure functionality of technology and other IT equipment. Install and trouble shoot surveillance camera systems Evaluate documented resolutions and analyze trends for ways to prevent future problems. Alert management to emerging trends in incidents. Assist with other duties as assignedQualifications: High School diploma required. Some college preferred. Previous work experience with a customer service focus. Experience in computer hardware and related internet hook up. Proficiency in computer software programs including Microsoft Office suite. Reliability is a must along with effective interpersonal skills to work with all levels of personnel. Experience with touch screen interactive systems','33','11','19','0','12',to_date('22-JÚL.  -24','RR-MON-DD'),'639414');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('48','Java Developer (Ecommerce)','Job Req #: 16-03602 Job Description:  Java Lead with eCommerce development experience - Key Responsibilities and Qualifications: Looking for two-to-three Senior Java Developers with experience in eCommerce. Strong Java, Spring Framework and Hibernate ORM.  The ideal candidate will have experience building their own e-commerce product or working with an existing ecommerce site.  Looking for typical eCommerce experience such as PIM, PCI, shopping carts, payment gateways, catalogs, etc.  Any experience with BroadLeaf, ElasticPath or KonaKart is a plus.   My client will train on the eCommerce tools.  Location:  Miami, FLPosition Type: ContractDiane DouglasSenior IT Recruiter/Account LeadAscent303-694-5493 **If this is not a fit for you or you are not interested, Ascent Services Group offers an excellent Referral Bonus!  We look forward to hearing from you! About Ascent:The Ascent Services Group (ASG) is a nationally recognized technology staffing and consulting firm whose fundamental business is providing staffing services to Small, Medium, and Large Enterprise clients in our core market verticals: Financial Services, Healthcare, Technology and Life Sciences.  As consultants for ASG, you will have access to many of the top clients within the industries we serve.  Our goal is to deliver innovative talent through proven best practices and effective resource optimization.  Become one of ASG’s candidates and experience the difference!IND05 ','52','52','6','0','20',to_date('22-OKT.  -16','RR-MON-DD'),'271180');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('49','Geolocation Engineer','Clearance: Must be eligible to obtain a top secret clearance. We seek highly qualified, self-starting individuals to develop, implement, and test geolocation systems. This engineer will apply mathematics and physics to design and develop complex positioning systems for RF signals in demanding collection environments. In this role, the selected individual will be responsible for geolocation algorithm development, system engineering, and software implementation and testing. Experience with an existing geolocation approach/engine in a classified application/environment is a definite plus.Work includes system support through all phases of the life cycle from concept through final delivery, using an iterative design methodology to maximize productivity. Solutions are implemented on virtualized platforms. You will have access to a well-equipped computer / signal processing lab with emphasis on real data rather than simulation.Required:BS (MS or PhD preferred) in Electrical Engineering (preferred), Applied Math, Remote Sensing, or similar disciplineDemonstrated capability in scientific programming, especially C/C++Relocation to sunny Tucson, Arizona; Denver, Colorado is a potential alternativePossess (or ability to obtain) and maintain an SCI security clearance (US citizenship required)Preferred: Experience with an existing geolocation approach/observable processor in a classified application/environmentStrong DSP fundamentalsApplicable background includes GPS or other navigation sy','30','2','16','0','6',to_date('22-SZEPT.-27','RR-MON-DD'),'546908');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('50','Director of Product Development','Clearance: Active Secret required with strong preference for person with an in-scope TS/SBBI.Position OverviewBuild your career at a technology-driven company dedicated to Solving Great Challenges. We engineer ground-breaking technologies in the areas of communications, safety, feeding the world, energy independence, and resource preservation. Grounded in a common sense approach to an ever-changing world, we are powered by the people who boldly mix drive, courage, integrity, and innovation into the focused ability to solve great challenges. Our strength as a company has always been our desire and drive to Solve Great Challenges, and our culture is built on collaboration, creative thinking, and problem solving.The Director of Product Development will be responsible for planning, managing and directing all product activities, to meet customer needs and fit within the capabilities of the division.  Achieve financial and investment return goals, growth forecast, and operational metrics.  The position will have primary responsibility for the execution of the strategic plan defined by the business development team.Execution of this plan will involve coordinating the efforts of the software, hardware and algorithm teams across product development efforts that span both radar as well as stratospheric solutions. Our radar products specialize in sophisticated radar processing to provide a highly sensitive, yet low false alarm rate tracking picture. These products are capable of land, m','8','21','21','0','9',to_date('22-DEC.  -28','RR-MON-DD'),'736074');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('51','Business Intelligence Development Manager','*         3+ years of Information Technology (IT) Management experience.*         5+ years of Data Warehouse Development experience including experience with the Microsoft BI Platform.   *         Expert knowledge and Experience with Data Modeling including Relational Data, OLAP (Cube) design, Reporting and Dashboard Design.*         Expert knowledge with SQL Server 2012 or later and SQL syntax.  Experience using Microsoft Business Intelligence technologies:  SSAS, SSIS, SSRS or similar technologies.*         Expert knowledge with OLAP (SSAS, Cubes) and MDX query syntax.   Knowledge of DAX a plus.*         Directs, manages, and coordinates the services and activities of the Business Intelligence (BI) Development team assigned to the BIDM.*         Ensure that the morale, productivity, training, quality of work and discipline of the staff assigned to the BIDM is at an effective level.*         Manage resources and projects to ensure that the goals and needs of the business are met.*         Supervise and approve all design work and ensure that it is well documented.*         Supervise and perform quality control functions as it relates to development work to ensure that the work product meets and exceeds established business standards and practices.*         Experience with Software Development Life Cycle (SDLC)*         Experience with Source Code management and control and Change Management.*         Keen interest in understanding business issues through detailed information','46','16','18','0','19',to_date('22-NOV.  -25','RR-MON-DD'),'720222');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('52','Senior. NET Developer (Temp-to-Perm)',' Company Overview: Creating value by bringing together the right people to achieve results is our motto. Our clients and employees say they choose to work with us because of how we work with them - with service that exceeds their expectations and a personal commitment to their success. Our client, one of world’s largest manufacturers of medium & heavy-duty Trucks and Diesel engines, seeks an accomplished Senior .NET Developer. ***************************************************************************************************************************Candidate must be able to work without requiring sponsorship and should be open to FTE conversion***Description:The Senior .NET Developer will be responsible for implementing innovative web and console applications.Perform design, coding, testing, implementation, and documentation of solutions. Requirements:Candidates MUST have 7 solid years of relevant experience with prior long-term contracts/employment.BS in Computer Science or 7 years’ experience..NET 4.5x development, MCSE preferredTFS (source code management), Web services including WCF, JQuery, AJAX, JavaScript, VB, VB Script, XML/XSL; Cascading Style Sheets (CSS), Architectural design patterns.Sitecore experience preferred.Experience with at least one of the following databases: DB2 (v8.0 or greater), DB2 query, and DB2 Connect, Oracle, SQL Server.Ability to translate functional designs into technical designs, and conversely to translate complex information into common terms','19','62','2','0','12',to_date('22-JÚL.  -14','RR-MON-DD'),'560103');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('53','Frontend/UI Developer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. Their Consulting Services Team is seeking to add those with engineering knowledge / experience with the latest web and mobile technologies and come work as a Frontend/UI Developer. The Consulting Services team works with a variety of customers to deliver world class IP-based video delivery solutions. Current projects include multiple initiatives for major media companies, as well as cable operators and telecommunication companies worldwide.  The Frontend/UI Developer will be contributing to HTML5 video sites for high profile ','37','8','24','0','20',to_date('22-SZEPT.-08','RR-MON-DD'),'324899');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('54','Domestic Outsourcing Business Development Executive','Genesis10 has an incredible opportunity for a Business Development Executive to join our highly-successful Domestic Outsourcing Service Line. The Business Development Executive will be responsible, on a national-level, for acquiring new client logos through consultative-selling of the full spectrum of Genesis10''s Domestic Outsourcing services. Genesis10''s core competencies in Domestic Outsourcing include, but is not limited to Infrastructure, Application Development, and Managed Services. Today, Genesis10 has 6 certified Delivery Centers from which we provide services from today to the Fortune 500. The Delivery Centers are located in: Atlanta, Cleveland, Dallas, Detroit, Kansas City, and Orlando. Becoming a Genesis10 Domestic Outsourcing Business Development Executive is an excellent career move. Here is what your sales colleagues like most about being in sales at Genesis10: * Genesis10 will not cap your earnings and will do everything we can to empower you to exceed your compensation goals. Many of our sales team members are some of the highest paid in the industry! * Genesis10 has a proven track record with referenceable clients providing Domestic Outsourcing Solutions and is considered an early-adopter * Genesis10''s Delivery Center Network if 6 locations in Tier 2, 3 and 4 cities across the United States has been recognized by the market analysts as a key differentiator * You are not on your own! Get the support you need to drive your success: + Executive Level Support: Yo','23','63','10','0','6',to_date('22-OKT.  -17','RR-MON-DD'),'259622');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('55','Web Developer','Help invent the next generation of ecommerce; integrated experiences that leverage the store, and the web to sell anything, to anyone, anywhere in the worldThe Opportunity: -    Work in a small, high performance agile team environment - sharing innovative ideas and working collaboratively across teams. -       Work with talented engineers and product visionaries to contribute to the vision and design of our web and mobile properties. -       Create front end of interactive websites incorporating HTML5, CSS3, JavaScript, AJAX as well as other Web 2.0 techniques. -       Be a product-oriented Web Developer creating and experimenting with new ideas that will engage and excite our customers.Experience/Skills required: -      Bachelor''s degree in Computer Science or related technical field. MS/PhDwould be a strong plus. -      3+ years'' experience in HTML5, JavaScript, CSS3, AJAX and general Web 2.0 techniques in the context of interactive Web Applications. -       Strong understanding of responsive design techniques and principles-       A passion for all things JavaScript, UI and Front End-       Must be able to work effectively both on teams as well as be self-motivated, task oriented and organized.-       Strong customer focus and obsession with quality-       Ability to work in a fast-paced and agile development environment','39','55','1','0','9',to_date('22-NOV.  -06','RR-MON-DD'),'266069');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('56','Senior Full Stack Developer','Description:   Our client''s Open Software Frameworks team is building a variety of products used by both independent software vendors and in-house developers. Their diverse portfolio of products includes Application Portal, Geo Spatial Mapping platform and IDE used to build their terminal applications. This team is contributing to a number of cutting-edge open source projects. Based on the breadth of the team''s work, you will need to be a strong full stack developer. You strive to design, implement and support the ideal solution. Balance between elegant design and system performance and reliability is always at the front of your mind. You will have the opportunity to work closely with users, UX and Product teams. Requirements:   * 3+ years of experience programming in C/C++ * 3+ years of experience with HTML5, CSS and JavaScript * Strong OOD/OOP skills and experience applying modern design patterns * Knowledge of algorithms, standard data structures and multithreading We''d love to see: * Experience with C#, .Net internals and WPF * Experience developing distributed systems in a Windows or Linux environment * Familiarity with and understanding of an Agile methodology If you have the described qualifications and are interested in this exciting opportunity, please apply! About SWATT:   The Genesis10 Software and Technology Team (SWATT) is a specialized recruiting service focused on helping accomplished software developers, programmers, platform engineers and elite technology pro','11','34','5','0','25',to_date('22-JÚL.  -25','RR-MON-DD'),'257685');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('57','Jr Business Analysts','Genesis10''s G10 Associates Program is seeking qualified Business Analysts to join our team! Program Summary:   As a wave of baby boomer retirement looms on the horizon, companies are recognizing a need to develop talent to fill the upcoming gap. This is why companies look to Genesis10 and the G10 Associates Program. Our innovative program mentors and develops the brightest recent graduates, turning them into G10 Associates who are business and technology professionals placed in client engagements with leading organizations in the area. The G10 Associates Program is continuing to grow and is looking for strong candidates with exceptional soft skills. New Business Analyst Consultants are enrolled in our Training Academy which provides our G10 Associates the background they need to succeed at our clients. Along with training and mentorship, we provide a competitive salary, benefits, and direct client exposure that jump starts careers. Position Description:   As a Business Analyst Consultant with Genesis10, you build skills required in all phases of a project - focusing on many industries, methodologies, processes, and technology platforms. From defining business requirements and designing technical solutions, to developing and testing enhancements, Business Analyst Consultants turn ideas into reality. You will collaborate with client and project teams to turn business requirements into detailed design specifications, and then build or enhance systems and business processes to me','5','22','7','1','18',to_date('22-NOV.  -10','RR-MON-DD'),'664729');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('24','IT Quality Consultant','Genesis10 is seeking an IT Quality Consultant for a 4-month contract-to-hire position with a client in Eden Prairie, MN. Genesis10 provides access to career opportunities with over 40 clients in the Twin Cities. As the #3 ranked firm for Business and IT consulting in Minnesota, we offer a variety of opportunities whether you are looking for contract, contract-to-hire, or permanent positions. Let''s connect today! Responsibilities:   * Test Planning - Requirement/User Story review, Test Case writing; Gherkin, Feature Files * Test Case Automation - Selenium framework and/or SOAPUI * Test Case Execution - Selenium and/or SOAPUI; Some manual execution may be required * Test Execution status reports * Proactive Communication * Use of Agile principles; likely use of ATDD principles Qualifications:   * Automation & Test execution skills that involve coding in Selenium and/or SOAPUI * Communication & team work * Rally for test case and defect management; Agile project management preferred If you have the described qualifications and are interested in this exciting opportunity, apply today! Benefits of Working with Genesis10:   As a Genesis10 consultant, we are proud to offer access to the following benefits: * Medical and dental insurance * Bi-weekly payroll * 401k plan * Downtown Minneapolis/St. Paul parking allowance * Delivery Manager for employee support * Successful re-marketing program * Referral program with the opportunity to earn additional income About Genesis10:   Genesis10','48','72','16','0','6',to_date('22-SZEPT.-06','RR-MON-DD'),'369394');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('25','USB Validation Engineer','VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryThis position is part of the Pre-Silicon Emulation/Post-Silicon Validation team and plays a fundamental role in bringing to market next-generation devices for our growing audio business and ensuring that those devices meet customer requirements.ResponsibilitiesDevelop and execute tests on the lab bench per the validation plan during pre-silicon and post-silicon phases of the product to ensure functionality and performance as per the datasheet.Think beyond the datasheet and around design corners to find elusive bugs. Able to think of test cases and customer usage model that may violate the assumptions of designers and systems engineers.Develop automated test framework, regression test suites in MATLAB and/or LabVIEW to optimize validation efficiency.Work with validation peers to implement best practices and continuous improvements to company validation methodologies.Collaborate closely with IC Design engineers, Systems engineers and Application engineers to understand requirements and use cases.Debug analog/digital silicon issues, board iss','54','71','21','0','9',to_date('22-OKT.  -11','RR-MON-DD'),'234296');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('26','Senior Product Manager','Do you want a chance to directly improve the customer experience for millions of customers a day?This position is a Product Manager in the Customer Experience team for Fulfillment by Amazon and Amazon Global Selling organization. Our vision is to transform global commerce by bringing selection from around the world to Customers anywhere in the world, with the same great customer experience Buyers expect from Amazon.In this role, you will set strategy and policy, build processes, and evangelize for technology solutions that allow third party Sellers from all over the world to bring hundreds of millions of new items to Amazon’s 11 Marketplaces worldwide. You will determine what experience these Sellers must offer our customers, create the incentives and enforcement mechanisms to achieve this experience, and frequently audit the results.Responsibilities for this position will include creation of programs that drive improvement in our key customer experience metrics, management of global programs and stakeholders, and driving alignment for new programs at high levels of the organization. This position will also have management responsibility for product managers, data analysts, and an operations team.From Jeff Bezos'' annual letter to Amazon shareholders:To further globalize Marketplace, we’re now helping sellers in each of our geographies - and in countries where we don’t have a presence - reach out to our customers in countries outside their home geographies. We hosted merchants','2','72','18','0','25',to_date('22-JÚN.  -07','RR-MON-DD'),'251758');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('27','Frontend/UI Developer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is the leading provider of online video publishing and management solutions * millions of media files and process millions of hits per day. Media companies rely on their cloud-based video platform as their open, central hub for managing, monetizing, and syndicating billions of internet video views each year. Our client*s services provide unmatched versatility for designing and supporting streaming video businesses on PCs, mobile devices, and TV. Some of their customers include SyFy, Fox Sports Network, NBC Sports, National Geographic, Comcast, British Telecom, Travel Channel, and more. Their Consulting Services Team is seeking to add those with engineering knowledge / experience with the latest web and mobile technologies and come work as a Frontend/UI Developer. The Consulting Services team works with a variety of customers to deliver world class IP-based video delivery solutions. Current projects include multiple initiatives for major media companies, as well as cable operators and telecommunication companies worldwide.  The Frontend/UI Developer will be contributing to HTML5 video sites for high profile ','28','22','2','1','18',to_date('22-DEC.  -08','RR-MON-DD'),'253032');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('28','1001 Selenium Automation testing','Selenium TesterSalt Lake City , UT & Phoenix , AZQuality assurance experience more than 4 years in agile projects with a Lead role.·          Hands on Selenium test automation skills is a must requirement.Test management tool experience like HP Quality center.·          Quick learner and self starter.·          Should be able to function with minimum supervision.·          Agile project management tools experience like Rally , Agile vision etc.·          Should have a very proactive and agile personality.·          Should have qualities of a Ownership bearer and Responsible lead.  If you bring willingness, flexibility and a desire to impress please apply now. Resource Manager :   Payal AgrawalEmail:  payal@reqroute.com        Phone:  408-800-4331  Companies across U.S. have engaged ReqRoute, Inc to deliver skilled, dedicated IT professionals. Recruiting is our passion and we support Fortune 1000 companies with their hiring needs. We always seek to deliver competitive and sought-after career opportunities to our potential consultants and employees. We invite you to review the position requirements below and apply today if your skills match our need.    ReqRoute, Inc is an Equal Opportunity Employer. Qualified applicants will receive consideration for employment without regard to race, color, religion, sex, age, disability, military status, national origin or any other characteristic protected under federal, state, or applicable local law. (www.reqrouteinc.com)  ','47','55','24','0','14',to_date('22-SZEPT.-05','RR-MON-DD'),'570527');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('29','FireEeye HX - Security Engineer',' Turnberry Solutions is in search of a Security engineer for a managed solutions team Working onsite with our client. Strong experience needed with FireEye HX clients and Mandiant Mirror Asses existing network topology and identify key system flaws Perform annual assessment of FireEye configurations Develop detailed supporting documentation regarding technical projects (such as materials to support an architecture review board) Manage customer expectation and attend all mandatory review / regulatory discussions related to the specific project being delivered Help establish baseline and plan for improvement of a large enterprise deployment of FireEye HX along with strategic endpoint security planning. Daily Responsibilities Administration of Mandiant (FireEye) Mirror Solution Experience with triage features of FireEye HX Supports customers at the highest levels in the development and implementation of doctrine and policies. Performs analysis, design, and development of firewall rules. Analyzes security threats on endpoint desktops Designs, develops, engineers, and implements solutions that meet security requirements (relating to endpoint analysis solutions). Analyzes general information assurance-related technical problems and provides basic engineering and technical support in solving these problems. Technology escalation point for endpoint agents (FireEye HX) Possesses and applies expertise on multiple complex work assignments. Exposure to at least one major industry network','10','27','10','0','24',to_date('22-DEC.  -18','RR-MON-DD'),'298921');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('30','Sr. Software Storage Engineer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client leads the world in helping users collaboratively solve some of the world''s hardest computer challenges. Whether its wrangling Petabytes of data for cutting edge movie production, managing global content production workflows, exploring new sources of energy, or managing oceans of content and blending collaborative high-speed workflows with cutting-edge object storage, our client has the tools and technology to help you engineer the solution that works now - and preserves your work for decades to come. You are applying to an exceptional team that contributes to enhancing their position as a proven global expert in data management. Our client is seeking a passionate Sr. Software Storage Engineer who can turn ideas into efficient, reliable and maintainable code to work on a popular open source storage project * Ceph. In this role, you will develop and support the major components of the Ceph storage project across both user and Linux kernel implementations. You will be responsible for the planning, implementation, and support interactions with a very active open source community to deliver enterprise-class soft','17','13','1','0','3',to_date('22-JÚL.  -01','RR-MON-DD'),'421413');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('31','C++ Software Engineer','Our client is seeking a Software Developer to join the team responsible for designing, developing and maintaining the firm’s highly distributed, high performance order routing system for equities, options and futures. In this position you will have the opportunity to work closely with traders and other technical teams. You will be engaging the complete SDLC and the majority of development will be in C++ on Linux.If you join this team, you will:Research, design, develop and test software components and applications in a heterogeneous technology environment using knowledge of object oriented programming and C++/Linux.Analyze user needs and software requirements to determine feasibility of design within time, cost, and performance constraints.Engage in problem definition, decomposition, and solutions definition within the scope of the application and the run-time environment.Take a holistic view of systems and understand how the hardware, networking, and middleware layers integrate with software components.You should be:Able to execute on ideas quickly.Committed to innovation.Focused on the entire technical stack with an eye for building a stable, scalable, optimized environment with minimized risk.Passionate about technology and interested in exploring new technologies to find the optimal solution.Strong object oriented software developer.Requirements:Bachelor''s degree in Computer Science, Engineering, Mathematics or related discipline or its foreign equivalent plus 5 years of ','24','73','5','0','4',to_date('22-DEC.  -24','RR-MON-DD'),'753859');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('32','Domestic Outsourcing Business Development Executive','Genesis10 has an incredible opportunity for a Business Development Executive to join our highly-successful Domestic Outsourcing Service Line. The Business Development Executive will be responsible, on a national-level, for acquiring new client logos through consultative-selling of the full spectrum of Genesis10''s Domestic Outsourcing services. Genesis10''s core competencies in Domestic Outsourcing include, but is not limited to Infrastructure, Application Development, and Managed Services. Today, Genesis10 has 6 certified Delivery Centers from which we provide services from today to the Fortune 500. The Delivery Centers are located in: Atlanta, Cleveland, Dallas, Detroit, Kansas City, and Orlando. Becoming a Genesis10 Domestic Outsourcing Business Development Executive is an excellent career move. Here is what your sales colleagues like most about being in sales at Genesis10: * Genesis10 will not cap your earnings and will do everything we can to empower you to exceed your compensation goals. Many of our sales team members are some of the highest paid in the industry! * Genesis10 has a proven track record with referenceable clients providing Domestic Outsourcing Solutions and is considered an early-adopter * Genesis10''s Delivery Center Network if 6 locations in Tier 2, 3 and 4 cities across the United States has been recognized by the market analysts as a key differentiator * You are not on your own! Get the support you need to drive your success: + Executive Level Support: Yo','50','45','7','0','22',to_date('22-JÚL.  -06','RR-MON-DD'),'420858');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('33','Lead Mobile Product Manager- 12255','Our client is a cloud-based education services company.  They are well funded and have a solid staff of technical and business professionals. They currently have a requirement for a Lead Mobile Product Manager to work in their Mountain View facility. Responsibilities:Own the roadmap for both the Android and iOS appsInteract with business development and sales to gather requirementsInteract with account managers to discover user pain pointsPerform analyses of KPIs and measure behavior across the platformPrepare PRDs and the roadmapWork with engineers to deliver all features and ensure releases go out in a proper cadenceRequirements:BA/BS in Computer Science or related technical field or equivalent4+ years Product ManagementExperience with Scrum/Agile & KanbanAbility to understand highly technical issues and distill down to a product level understandingPreviously been involved with startupsStrong UI/UX and wireframing experienceExperience with both mobile (Android, iOS) and web-based applications Position logistics:Direct HireW2 candidates onlyLocal candidates strongly preferred What’s in it for You:Cool, fast growing and nimble company with a central Silicon Valley location.Great opportunity to enhance or solidify your skills with an excellent, diverse and experienced team.Work with key management, across business units and have a major impact on how the business is run. About Maxonic:Since 2002 Maxonic has been at the forefront of connecting candidate strengths to client chal','53','57','11','0','2',to_date('22-SZEPT.-25','RR-MON-DD'),'326291');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('34','4709317 Project Planner/Scheduler','Description:Monitor and update integrated project plans and schedules so that projects can be executed in the most efficient manner possible.Prepare baseline schedules and schedule basis documents for approval by project teams.Assess impacts to the critical path and near-critical activities and report to the project team.Monitor schedule deviations and variances and assist in the developing alternate methods for corrective action.Prepare and provide schedule progress reports, trending charts and schedule analysis on a periodic basis.Maintain record of scope changes, trends and variances that potentially affect schedule performance.Assure credibility of the information contained in the schedule.Review schedules with project team members on a regular basis to ensure that accurate and timely data is incorporated in the schedule.Analyze schedules from A/E firms, Vendors and General Contractors.Verify schedule integrity and evaluate logic and float paths.Evaluate activity sequences for constructability.Make recommendations to manage float and (re)sequence activities (if required) to achieve project milestone dates and interim target completion dates.Analyze change orders for schedule impacts.Resource load schedules as required by the project team.Perform jobsite walks to verify physical progress of scheduled activities.Facilitate project scheduling meetings and/or interactive planning meetings as required by the project team.Participate in project meetings at the discretion of the','27','35','3','0','17',to_date('22-DEC.  -07','RR-MON-DD'),'471540');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('35','Business Systems Analyst','VanderHouwen has more jobs you may like! Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetworkJoining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.  SummaryOur client is looking for a Business Systems Analyst who is Comfortable working in an ambiguous, complex environment with various teams and groups.Qualifications Background in creation of Internal Software desired, as opposed to .com business.Working knowledge of 3D principles preferred.Design Tool experience (AI, Maya, Browzwear, etc.) preferred.','40','38','25','0','16',to_date('22-AUG.  -22','RR-MON-DD'),'757985');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('36','Lead Java Engineer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryAssists supervisor with leadership and coordination of a team designing, implementing, documenting, and maintaining Java web applications. Works with BSA team to obtain requirements, prioritize, and plan the delivery of solutions. Provides guidance and coordination of technical implementations that adhere to enterprise system architecture, design, and implementation standards. Coordinates with other units to identify and schedule delivery of cross-team dependencies. Determines resource requirements and allocations. Assigns tasks to the team members, monitors the alignment with the overall project goals and reports on progress to various levels of management.Responsibilities Works with business representatives, clients, business partners, project managers, and team members to define requirements for applications targeted for the corporate internet/ intranet.Works with project managers, supervisors, and team members to determine work tasks and allocate resources.Leads the development team through solution design, implementation, and deployment in coordination with other IT and business departments.Identifies and resolves','43','60','12','0','23',to_date('22-NOV.  -04','RR-MON-DD'),'368283');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('63','Planner/Scheduler','Duties: Using SAP APO, provide materials scheduling support for Oceanside manufacturing.Develop and deploy standard metrics, scheduling analysis for site scheduling activitiesGather input from Site Schedulers to propose solutions to move capacity scheduling from excel into APO.Provide project management support and development of Site Scheduling portfolioPerform other ad-hoc analysis as needed. The environment is fast paced but the job tasks are more analytical and slower moving. Skills:Working knowledge of SAP APO, R/3 and BW reportingAdvanced MS Excel skillsUnderstands solutions design and implementation, including requirements definition, data acquisition processes, data modeling, process automation, and deployment.Requires close interaction with the business groups and technical teams within Site Scheduling, Manufacturing and Facilities.Strong project management skills.Strong organizational skills.Excellent verbal and written communications skills.Must be able to prioritize.Ability to work on numerous and multi-faceted projects at the same time.It is very important that candidates have at least 2 years with SAP experience and that they can monitor SAP alerts/shortages. All reporting will be done through SAP with Excel as the secondary.  Education:Bachelor’s degree in Industrial Engineering, Information Technology or Business Administration preferred but not necessary with 2-5 years of experience in a similar role. APICS certified preferred but not necessary. ','36','15','14','0','2',to_date('22-OKT.  -08','RR-MON-DD'),'651022');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('64','Technical Infrastructure Project Manager','Position: Technical Infrastructure Project ManagerLocation: Gardena CADuration: Full Time We are seeking an exceptional Technical Infrastructure Project Manager to be part of Client, a business unit within Beyondsoft. This person will manage large scale projects or programs. This person will be supported by a combination of matrixed teams, which are comprised of geographically disperse suppliers, and cross-functional teams.  Candidates must be familiar with the following:Consulting or Similar EnvironmentsVendor/Supplier ManagementWeb Operations and Infrastructure (i.e., Data Center, Network, Servers, Firewalls, Cloud etc.) This is a very fast paced environment, and we are looking for a dynamic team player who can fit into our fantastic team and be immediately accretive.  In this role, you will need to: Identify Multiple Workstreams, take ownership or work with assigned lead as needed. Plan, track, coordinate and negotiate dozens of priorities at any given time.  Develop, track, and maintain milestones, schedules, minutes, status reports, and other project artifacts and technical deliverables. Develop Expertise:  This includes learning the technical environment we operate in, understanding new technologies and change that are constantly introduced, knowing standard operating procedures, and asking the right questions.Add Value: You will need to quickly asses technical risks, drive technical problem solving, and cut through layers of complexity to determine what is really going','44','18','22','1','17',to_date('22-SZEPT.-17','RR-MON-DD'),'262883');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('65','Business Analyst','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.Responsibilities Provides companywide strategic, analytical, and technical support for Information Delivery activities. The analyst acts as an intermediary between the business community and the technical community working with IT project teams and business partners to collect, clarify, and translate business requirements into documentation, conceptual designs, and Information Delivery solutions.Partners with business departmental teams to define and document business requirements for new metrics and reports.Elicits requirements using interviews, document analysis, requirements workshops, surveys, site visits, business process descriptions, use cases, scenarios, business analysis, and task and workflow analysis.Creates user-centric designs based on business and functional requirements, user research, market analysis, customer feedback, and usability findings.Designs user interfaces by using conceptual design techniques such as creating visual mock-ups, prototypes, and diagrams.Projects: 50%Day-to-Day Support: 40%Adhoc Request: 10%Qualifications Required Bachelors Degree in Computer Science or a related field is a bonus, but i','12','9','15','0','16',to_date('22-DEC.  -01','RR-MON-DD'),'358449');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('66','Project Coordinator','We need a Project Coordinator person that can handle IT procurements (ordering supplies, sw, hw etc), Contracts/PR''s entering & tracking and following up with internal teams and vendor contacts to fulfill them etc.Also exposure to IT budget tracking is preferred. ','21','13','8','0','23',to_date('22-JÚL.  -19','RR-MON-DD'),'236176');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('67','Sr Service Delivery Systems Administrator (DevOps) - 16-01286','Primary Skills: Systems Admin, Devops, Scripting,Linux/unix, Load Balance F5Contract Type: W2 Only Duration: 4 Months Contract to Hire Responsibilities: Engage closely with architects, engineering and operations teams to deliver highly available and scalable services with minimal/zero downtime. Build automation scripts and frameworks to improve operational processes and procedures. Learn, deploy and document newer technologies for the potential deployment of services following a development and release life cycle. Support production escalations as needed. Driving ongoing improvements and efficiencies in operational practices, tools & processes. Provide a seamless transition of the application from Product Development to Production Support teams.Required Skills: Strong knowledge/experience with Application and Infrastructure Delivery automation, orchestration and configuration management. Experience operating and troubleshooting VMs in a virtual environment. Ability to effectively communicate with various teams and levels of management Troubleshooting production issues Configuration, management, and performance tuning of App/Web tier (Apache, Jboss, Tomcat, etc.) Operating Systems RHEL, CentOS, Windows 2012+ Applications Java, Tomcat Scripting BASH, Ruby, Python, Perl Version control Perforce Build/Release - Jenkins, Maven, GCC, Make Package YUM/RPM, Zip, Tar Deploy Capistrano, Terraform Provisioning vRA, vSphere, AWS Storage Netapp NFS Mounts and CIFS Networking Infoblox, F5,','26','11','23','0','8',to_date('22-JÚL.  -06','RR-MON-DD'),'611117');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('68','Oracle Business Systems Analyst','We are seeking an Oracle Business Systems Analyst for our Direct Client. Location: Burbank, CAContract-to-Hire Opportunity – Excellent Benefits Description: Client is looking for highly motivated and energetic individual to join their Oracle Applications team.  The incumbent will work with business teams, Oracle developers, database administrators, business analysts, Oracle fusion middleware teams.   Duties/Responsibilities:Develop, implement and support Business solutions in Oracle R12 E-Business Suite environment particularly in  P2P, General Ledger, Asset Management, Projects modulesWork with Oracle Support for knowledge and issue resolutionSupport month end Period close activities.Support reconciliation between sub-ledgers and General Ledger.Create test scripts, lead and perform system testing.  Support user acceptance testing and go live.Assure adherence to all IT controls and maintain alignment with IT StrategiesManage application lifecycles including release planning (enhancement/upgrade), maintenance (bug fix and routine patching)Performs other duties as assigned or requested Requirements: A Bachelor''s Degree in Computer Science or related field is preferred.7 + years of experience as a functional analyst in Oracle Applications 11i, R12Expert in General Ledger, Asset Management, ProjectsVery good knowledge in AME, Workflow, Sub-ledger Accounting, iSupplier, iExpensesWorking knowledge in other Oracle modules and Purchasing integration with Vertex a plusExpert in applic','3','7','13','1','13',to_date('22-DEC.  -04','RR-MON-DD'),'371428');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('69','Sr. EDI Business Analyst','VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgESummaryServe as the liaison between the IT community and LTL field users. Identify and analyze business needs/requirements and assist in the design, training, testing and implementation of solutions. Function as the subject matter expert on operations on self-directed project development teams and independently for applications support. Educate IT personnel on how users perform their duties and how operations function. Ensure tasks are completed on a timely basis and conform to specifications, processes and standardized best practices. Position requires some travel. Responsibilities Work directly with all interested parties to elicit and document functional and non-functional requirements that meet business needs providing creative solutions to challenges facing the business.Capture requirements as agile stories and expand stories into narratives to ensure a standard team understanding of the requirements.Work through conflicting requirements to build consensus.Guide prioritization of requirements based on business value, risk, architectural significance, and other drivers.Conduct team reviews of requirement documents, design documents, and work products.Effectively communicate business needs to technical people and communicate and simplify complex technical information for non-technical people.Think and act strategically, grasping and communicating the big picture.Ensure the team''s work efforts al','20','37','9','0','5',to_date('22-SZEPT.-22','RR-MON-DD'),'695585');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('70','Scientific Software Specialist and BA','Keywords / Required Skills:Scientific Software, Business Analyst, Drug Development, biotech, pharma, data extraction, visualization SQL, R, Spotfire, user training material development Req#: 4493616 Scientific Sotware Specialist (and Business Analyst with Visualization)Our client an International Biotech company based in South San Francisco is a seeking a contract resource for the role of Scientific Software Specialist Duties: This position supports the ongoing development of a number of scientific and operational software systems enabling drug development at our client, a large international biotech / pharma firm in South San Francisco.  The position reports into the Development Sciences function, but works closely with the corporate IT group to analyze, design, test, implement, train, and document new software systems. Responsibilities include: Perform business analysis to clarify needs and scope new features Work collaboratively with end users, corporate IT, and the vendor to implement new features Author clear requirements and design documentation Work with end users to define associated business process to meet their needs Author clear and concise user manuals, SOPs, and training documents Perform testing in conjunction with the vendor, corporate IT, and end users Create robust and effective data visualizations using SQL, R, and Spotfire Work hands-on with end users and IT to identify, troubleshoot, and resolve technical and process issues Skills and Requirements: Experi','16','25','17','0','11',to_date('22-OKT.  -16','RR-MON-DD'),'610455');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('71','Linux Engineer','Genesis10 is currently seeking a Product Specific Technologist with our client in the financial industry in their New York, NY location. This is a 12 month + contract position. Description:   * High Server Patch project is major effort to remediate security patch level on Grid /Quartz LINUX Infrastructure and deploy recurring patching solution * We are hiring this position to work closely with business technology group, application owners and operations teams to establish and coordinate deployment of automated recurring patching solution * This sophisticated platform requires very specialized skills and this engineer will provide solution, design, development, and implementation and be responsible for co-ordination to facilitating the migration of this platform Responsibilities:   * Requirement analysis of the project * Technical recommendations for automated patching * End to end technical plan for patching * Co-ordination of execution of automated recurring plan Requirements:   * Experience with J2EE, Java, Python, C++ programming, shell script * Strong understanding and working experience of Linux Operating system * Good understanding of Network /Server Infrastructure spanning multiple sites * Experience with J2EE, Java, Python, C++ programming, shell script * Good communication skills, self-motivated, positive attitude and ability to work in a global team environment * Strong troubleshooting skills and application Administration/Support skills * Experience in engineering/','6','71','20','1','15',to_date('22-JÚN.  -21','RR-MON-DD'),'473239');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('81','Senior Technical Writer','SENIOR TECHNICAL WRITER REQUIREMENT #16-00879RECRUITER: KADE HYNESJOB LOCATION: CAMDEN, NJ JUNE 7, 2016 Project Description: A resource is required to manage the capture of process documentation (workflows, work instructions, operating procedures) during facilitated work sessions of the project team. This individual will manage all documentation for training and change mgmt. This individual will also be responsible for arranging working sessions across various support groups to complete the initiative. The work and/or project that will be performed: Documentation & Requirements Facilitation: Standard Operating Procedures, Work Instructions, Issue Solutions, Support Matrix Instructions, Process Flows Required Skills: Ability to capture information from working sessions and individual interviews and to develop into the working documents for the organization Must be skilled in Technical Writing, Process Mapping, Facilitation Must be Proficient in Word, Excel, Visio and familiar with OneDrive & SharePoint This 4+ month position starts ASAP. Please E-MAIL your resume (attachment to email) with rate and availability to Kade: kade@alphaconsulting.com','28','24','5','0','25',to_date('22-SZEPT.-13','RR-MON-DD'),'602764');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('82','Sr. Quality Assurance Test Analyst','Genesis10 is actively seeking Sr. QA Test Analyst in support of our client, a Fortune 25 financial institution. These contract to hire positions are located in Plano, TX. All candidates must be able to work on a W2 basis. No third party candidates will be considered. Summary:   Conducts end-to-end testing on applications and technology, to ensure that business, technical, functional requirements are being met throughout the SDLC. Executes test scripts based upon test strategy/plans in an effort to identify defects prior to production. Tests may be manual, automated or both. May also include Production Certification which requires manual/automated scripts be executed to certify production health and/or identify post-production defects. Responsibilities:   Test Management * Plan, lead, and manage end-to-end test execution to ensure deliverables are on target and business, technical, functional requirements are met. * Understand end-to-end application flow, associated systems, stakeholders and process touch points. * Assign / allocate resources to work during appropriate timelines to meet deliverable dates. * Provide test estimates (and re-estimates) to the team at each appropriate phase. * Ensure compliance of documentation, entry/exit criteria, and role clarity. * Point of contact and escalation for all offshore test related issues.Test Planning * Review all documentation including Business Requirement Documents (BRD), Design documents, Technical Designs (HLD &LLD) or SRS. * P','47','46','7','0','18',to_date('22-OKT.  -04','RR-MON-DD'),'564258');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('83','Business Systems Analyst III','VanderHouwen has more jobs you may like!  Find them here: http://bit.ly/1RIQfgE PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.SummaryOur client is looking for a Business Systems Analyst III to join their team.Responsibilities Project planning and communication support - preparing communication materials for project steering committee and Leadership groups.Business Requirements gathering and documentation.Business process analysis, documentation and redesign as needed - including new business and document management processes using PW, as well as PW helpdesk/support flows, external flows, etc.Test planning, including test case identification and as needed test scrip development.Training planning and delivery support, including training materials documentation.Post implementation support as needed.','10','25','11','0','14',to_date('22-OKT.  -02','RR-MON-DD'),'321194');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('84','Automated Test Engineer','Automated Test Engineer 3-5 years of automated testing experience is required. 100% automation, so heavy on Java with Cucumber and Selenium desired. Must have Selenium experience with mobile and web. Communication skills are important but should be able to follow direction and be comfortable in a managed team environment. Agile experience or knowledge is preferred. Video streaming experience is big plus.','17','65','3','0','24',to_date('22-DEC.  -08','RR-MON-DD'),'650619');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('85','Senior Drupal Developer','PTG has a new opportunity in MD!We need your expertise as a Drupal Back End / Module developer who will work in tandem with  UX, and development teams.    With strong communications skills with ability to articulate ideas with others in the team  Required skills:         15 plus years in IT and software development;         6-10 year*s experience working on Drupal projects;         Extensive and diverse background creating custom PHP modules within the Drupal framework.         Strong background in one or more of Drupal*s major themes, i.e. Zen, Omega, etc.         Understanding of browser/client-side, particularly jQuery.         Mastery of Drupal''s key contrib modules, i.e. CTools, Views, Rules, etc.         Familiarity with Drupal*s ''hook'' system for modifying contributed modules remotely -- from functions     written in custom modules;         Background in ''site building'': to be good at vetting Contributed modules from Drupal.org, installing and configuring modules for ''sandbox'' projects;         Command line competence in Linux to be able to work with sandbox instances. This includes editing server files, navigating server folders, modifying permissions and other such actions         Familiarity with GIT         Familiarity with DB and DB Modeling * in particular MySQL         Full Stack* development capability Must have:        Experience in Public Sector environments        Experience working in cloud environments        W2, available for full-time','24','26','25','1','3',to_date('23-JAN.  -01','RR-MON-DD'),'202385');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('86','Senior Devops Engineer (Contract)','Sr Devops EngineerYour job is to understand the daily activities of our development teams and deliver solutions to make them more efficient. Listening to individuals across development, understanding their activities, and constantly thinking about ways to make it more efficient Collaborate with other Senior engineers to drive architecture of CI/CD systems. Hands on involvement in implementation of CI/CD systems. Participate in evaluating and recommending tools and technologies.Desired Skills and Experience: Focus on DevOps CI and CD solutions using various DevOps tools and frameworks Build scalable and resilient services / tools in both private and public cloud Use containers. Expertise in using containers in app build and deployment Experience in designing, building using CI tools (Teamcity/Jenkins) Familiarity with Vagrant, Mesos, Kubernetes, PaaS, Cloud infrastructure (preferred AWS) Familiarity with Log Management solutions (ELK, Splunk, Sumologic, etc) Working knowledge of build systems like Ant, Gradle and Maven. Experience coding software using object-oriented techniques (in order of preference, Java, .Net, C++, Python, other) Hands-on coding/scripting experience with bash, Groovy, python or similar Exposure to leading projects with track record of successful delivery 4 to 6 years of related DevOps experience. BA/BS in Computer Science, Computer Information Systems or related technical field. (In lieu of degree, relevant work experience). Solid communication skillsBonu','50','45','12','0','4',to_date('22-DEC.  -17','RR-MON-DD'),'425055');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('87','Capacity Planning Engineer - 11350','Capacity Planning Engineer - 11350 Our client is an entertainment behemoth located in the heart of the world’s entertainment capital.  They are a technology driven company with billions of dollars spent on their delivery infrastructure.  The client urgently requires Systems Architects who will architect infrastructure that scales seamlessly and will meet the growth of their services.  Responsibilities:Analyze the current network and systems architecture for high performance, availability and redundancy and provide guidance on capacity optimizationWork on BMC BCO Capacity planning tool to evaluate current and future state of network and systems and provide guidance and recommendations regarding future capacity growth.Analyze requirements from the business and determine when to scale up and scale down the infrastructureCompile data from various tools (CMDB) to aggregate the data and present this to executives across the organization.Interface with vendors to resolve technical issues with their equipmentWork with various system vendors on evaluating system capacity in the video distribution network and provide recommendations. Systems include routers, switches, firewalls, load balancers, content caches etc.Engage with project teams on major initiatives to understand traffic volumes, work flows and hardware requirements to plan for adequate capacity Requirements:Requires BS/BA in related discipline (i.e., Computer Science, Information Systems) and 3-5 years of experience in relat','53','50','4','0','22',to_date('22-AUG.  -24','RR-MON-DD'),'213964');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('88','Data Center Virtualization Architect','Data Center Virtualized Networking Architect ResponsibilitiesThis is more of a true Data Center Engineer role as part of the Advanced Engineering (AE) team within our client.  Required Attributes for Data Center Virtualized Networking Architect Engineer: Solid Cisco network and Data Center architectural design and hands-on engineering experience Solid knowledge of and experience Virtualization Networking, NFV, Nuage, NSX and UCS Solid knowledge of and experience with BGP and ISIS. Strong knowledge of and experience with the implementation of Cisco Nexus data center switches, including the latest designs trends such as Leaf and Spine and *   Design, testing, and implementation of the datacenter network service to partition the data-centerRequirements Bachelors is preferred, Associates or equivalent combination of work experience is required CCIE Datacenter or Routing and Switching certification preferred, but not req*d 5+ years of experience designing and implementing Virtualized Networking and UCS.  ','27','48','14','0','2',to_date('22-JÚL.  -07','RR-MON-DD'),'338106');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('89','Procurement System Manager','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you. SummaryOur client is looking for a Procurement System Manager for their new SaaS solution Coupa as they roll out the solution globally.  ResponsibilitiesProvide subject matter expertise on core Coupa functionality and configuration.Identify opportunities and recommend possible solutions to address business needs and issues.Establish and manage Coupa change management processes, testing, and governance in line with industry best practices.Serve as day to day point of contact with Coupa on upcoming major and minor releases.Manage and foster relationships with internal and external partners.Qualifications3+ years of professional experience in SaaS change management.3+ years of professional experience in managing SaaS vendor relationships.Coupa certification or previous experience with Coupa preferred.Previous experience in procure to pay business processes a plus.Strong leadership skills; ability to lead cross-functional business and technical teams.Expert analytical skills; ability to quickly grasp complex business concepts and formulate recommendations for resolution or improvement.Skilled presenter/trainer possessing strong w','40','48','22','0','17',to_date('22-AUG.  -01','RR-MON-DD'),'227232');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('72','Front end-UI developer/UI-Web designer','Front end-UI developer/UI-Web designer job opportunity at a top-financial services company located in NYC * Midtown 6 * 12 months with high potential for FTE conversion. AN ONLINE PORTFOLIO IS REQUIRED TO APPLY TO THIS JOB  Contact oleon@fahrenheitit.com846 582 1467 Looking for CANDIDATES LOCATED IN THE TRI-STATE AREA ONLY If qualified and currently considering new job opportunities let*s set up a time to discuss other details at your earliest convenience. Job details: This job is a combination of front end development (css, html, javascript) as well as user interface/web design As far as design * looking for someone who can show artistic/creative samples of user interfaces the candidate has worked in.  Presentation layers are critical [think colors, fonts, easy-to-read language, easy-to-follow design]  Looking for someone who can create interactive charts, graphs for reporting purposes where users can view dashboards, charts, graphs of analytical data (experience with one of the following D3, Angular js, or Node js.  This team is responsible for presenting technical data through graphs, charts *commercial quality* data visualization for a large audience of stakeholders & users.  ','31','69','19','0','1',to_date('22-DEC.  -12','RR-MON-DD'),'211685');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('73','IT Ops Support','SF City, 3+ months contract with extension based on performance If you''ve enjoyed supporting IT operations before you''d be familiar with this role. The difference could be that here you will have a lot more authority over the superb processes you create and implement. You will be assisting the CIO administratevily with all the nuances and excitement of IT operations. Sample duties:Assist with tracking of legal related documents, invoice recon, licenses, etcAssist with budgets, presentations, audits, user reviews, etc Qualifications:Excellent (advanced) skills in Excel, Word, Power Point Organized and detail orientedAble to task switch as needed to reflect changing priorities','14','73','6','0','7',to_date('22-JÚN.  -06','RR-MON-DD'),'680295');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('74','Senior Product Manager, Pricing - Fulfillment By Amazon','Global FBA is looking for a passionate, talented product manager to develop pricing recommendations for the global business. The ideal candidate has outstanding business acumen and judgment, intense curiosity, excellent analytical abilities, strong technical skills, superior written and verbal communication skills, and the ability to influence cross-functional teams. He/she will have a strong bias toward data driven decision making. He/she will be a self-starter, comfortable with ambiguity and juggling multiple projects, able to think big and be creative (while paying careful attention to detail), and will enjoy working in a fast-paced dynamic environment. He/she will work closely with Marketing, Operations, and Finance teams around the world.The scope for this role includes the following: Identify, develop, manage, and execute analyses to uncover areas of opportunity and present written business recommendations that will help shape the future of FBA. Drive development of quantitative models necessary for the evaluation and implementation of new pricing strategies. Collaborate with product managers to develop pricing recommendations for new features or services. Manage fee development and implementation, including long term project planning and development resource allocation. Report key insights and trends, using statistical rigor to simplify and inform the larger team of noteworthy story lines. Collaborate with finance and product management as a leader of quantitative anal','22','63','16','0','10',to_date('22-SZEPT.-29','RR-MON-DD'),'459051');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('75','Infrastructure Production Developer','Description:   Our client''s Infrastructure Production group in delivers a wide range of technologies. The team builds out common services that every department can use and consume to monitor, visualize and diagnose their applications and infrastructure. This team is also the forefront in implementing modern technology ideology within the organization and assist all of the teams with implementation, automation and design. The Production Engineering team is a new team, and is one of the most fast-paced and soon to be widely used across the entire company. You will have the ability to be a part of a large cultural shift within the organization. If you like large scale systems, billions of data points a day, automating all of the things, hacking on open source software and making a cultural impact, ask us where to sign up. Responsibilities:   * Design, architect, automate and deliver large scale production ready services for employees to consume. * Build internal tools to monitor, visualize and diagnose all aspects of applications & hardware in our client''s stack. * Work closely with our client''s product and platform teams with architecture, design and scaling challenges they may have. * Help teams replace legacy software and design patterns with modern technologies. * Develop and maintain documentation, training and SLAs for managed infrastructure. Requirements:   * Minimum 2 - 3 years of experience building similar systems * Experience with large scale data processing * Previou','38','71','21','1','21',to_date('22-DEC.  -24','RR-MON-DD'),'501222');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('76','C#.NET Client/Server Developer','This position is an outstanding contract opportunity for a talented .NET Developer with one of our exciting clients. Work on client/server applications, web, and testing tools. Will work as part of a team updating existing applications as well as the development of new applications to enable automated testing. Position requires 3+ years recent experience developing with the .Net Framework using C# and Object Oriented Design patterns in Windows Form and/or Windows Presentation Foundation applications. 1+ year of experience with SQL (prefer Microsoft SQL Server and T-SQL) with the ability to develop database objects such as stored procedures. 1+ year of verifiable experience developing multithreaded/multiprocessing applications is needed (not necessarily in C#).1+ years of experience with WCF and Team Foundation Server (TFS) is also required. Knowledge of ASP.Net, XML, and Unit Testing (Test Driven Development) are a plus. Knowledge tests in multitasking and Windows client/server application development will be part of the selection process. Excellent written and verbal communication skills are a MUST. Desired skills: .NET Framework, C#, OOD, SQL, T-SQL, ASP.Net, XML, Team Foundation Server, Unit Testing, Multitasking.','1','60','18','0','19',to_date('22-DEC.  -21','RR-MON-DD'),'789893');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('77','Business Systems Analyst','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.ResponsibilitiesPartner with business teams to identify, define, and document requirements to support project and business objectivesConduct and/or participates in the analysis of client business processes and functional requirementsPerform data and process analysis to understand key source systems and using knowledge of application features and functions to assess scope and impact of business needsCollaborate with users, development, and QA teams throughout the project lifecycleAct as client proxy during development and testingIdentify and documents workflow, process diagrams, information resources, and system specificationsParticipate in the analysis and definition of efficient, cost effective solutions that support business processes and functional requirementsSuccessfully design and facilitate requirements elicitation sessions including use of interviews, document analysis, workshops, surveys, business process outcome modeling, personas, user centric design, task and workflow analysisQualifications Proven track record creating innovative product ideas and concepts that meet business and product strategies based on rigorou','45','76','2','0','12',to_date('22-NOV.  -27','RR-MON-DD'),'598070');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('78','Software Infrastructure C++ Developer','Description:   The Software Infrastructure department develops the foundation on which our client''s developers build their applications - libraries that interface with a wide range of technologies, programmable real-time data processing pipelines, deployment systems and development tools. They are technologists who live and breathe high performance, well-factored, scalable, testable code that reacts quickly to new business initiatives. Our client''s developers are valued as technical experts and go-to resources throughout the company. Their users and managers are highly technical people. Within the group, all developers have responsibility for the full software development lifecycle, from requirements gathering and coding to deployment and maintenance. Requirements:   We are looking for dedicated and driven software developers with strong technical and programming skills, excellent problem solving ability and appreciation for the scope and impact of their work. The ideal candidate possesses strong knowledge of operating system fundamentals, as well as experience in the design of libraries and software systems. The candidate can expect to be writing well tested, robust, and performance critical code in a cross platform environment. * 3+ years of production level C++ development experience * 3+ years of experience with object-oriented design, data structures and algorithms Preferred Skills:   * Multithreading experience * Solid understanding of data structures and algorithms * L','48','15','24','1','20',to_date('22-OKT.  -26','RR-MON-DD'),'352259');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('79','Account Manager','VanderHouwen has more jobs you may like! Find them here: http://bit.ly/1RIQfgESummaryVanderHouwen & Associates, Inc. is rapidly expanding in the Dallas/Fort Worth area!! We are seeking a Business Development/Account Management professional with strong staffing industry experience to join our team. This is a great opportunity to make an impact in a branch supported by a highly successful firm with an established reputation. VHA focuses on long-term employment for our staff so you must be a highly motivated, and dedicated individual. We operate in a fast-paced and competitive market where a goal-oriented, team approach is essential to everyone''s success. If you are an experienced Account Manager, who has the determination to be part of a dynamic team please submit your resume. We are seeking candidates who have a strong technical background and/or understanding of various technical positions. Qualifications Strong business development and account management background in the staffing industry highly preferred.Experience in creating successful staffing and hiring solutions for a variety of industries and company sizes.2+ years of experience initiating and maintaining long-lasting client relationships, and negotiating service contracts and fees.Ability to proactively promote candidates to support our customer base.Strong analytical and organizational skills to be comfortable with multi-tasking in a fast-paced, competitive environment. Must be a goal-oriented and a team player wit','54','65','10','1','6',to_date('22-NOV.  -26','RR-MON-DD'),'544037');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('80','Technical Recruiter','Genesis10 has a full-time opportunity for a creative and resourceful technical recruiter in New York city. Description:   We are looking for a middle to senior level Technical Recruiter for information technology professionals in a perm-placement environment. Responsibilities:   * Understand the capabilities, experience, skills, and motivations of talented candidates * Connect those characteristics to clients'' business and technology needs * Be familiar with the requirements of diverse business and technical specialties * Build credibility and recommend the right staffing or service solutions Qualifications:   * Previous IT recruiting experience in a perm-hire or agency setting * Knowledge of different sourcing techniques for varied requirements * Experience using social media for professional recruiting * Perception and judgment in reviewing resumes and profiles * Talent for matching candidates and requirements * Skill in using behavioral interviewing techniques * Experience in full life cycle recruiting from source to close * A desire to create ongoing professional connections with candidates * Participation in professional associations and groups * A commitment to building relationships outside business hours * The ability to tell good stories that help make the sale If you are a qualified candidate interested in this opportunity, please apply. About Genesis10:   Genesis10 is a privately held company founded in 1999 to provide talent and solutions that power our clients'' b','2','22','1','0','9',to_date('22-AUG.  -17','RR-MON-DD'),'462763');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('58','Manager - GFS','Global Financial Systems (GFS) is looking for a driven, results-oriented leader to lead teams building the next generation of systems to automate and optimize critical financial processes. Our ideal candidate thrives in a fast-paced environment, relishes working with big data, enjoys the challenge of highly complex business contexts that are typically being defined in real-time. Above all else, the successful candidate will be a passionate builder of talent and teams.In this role you will be responsible for leading a team of functional analysts, engineers, and technical program managers to create world-class finance systems that support Amazon''s global footprint. You must be willing to insist on the highest standards for quality, maintainability, and performance. The systems we own are responsible for trillions of financial events and payment flows that would rank among the largest countries in the world by GDP. You will ensure that engineering best practices are followed and that software is designed to be highly-available, dynamically scalable, and resilient to continuity threats. You will own the goals and roadmap of the your team, along with the strategic direction of your software and shape of your organization. You will demonstrate strong leadership as you control your own destiny in Amazon''s ownership oriented culture.Our team operates ERP and custom software platforms that are among the largest in the world by volume and complexity, and a successful candidate will be ','4','36','11','0','14',to_date('22-SZEPT.-26','RR-MON-DD'),'724763');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('59','Java Full Stack Engineer (Angular JS is must)','Required Skills                                   1.      6-9 years of experience in software development.2.      Experience working with MVC based front-end library Angular JS3.      Strong expertise in Java/J2EE, Spring , Hibernate.4.      Experience with SQL/NoSQL databases.5.      Responsible for module design / high architecture.6.      Participate in customer interaction, code review and follow-up.7.      Work closely with the development team to optimize and improve the e-commerce platform to grow subscription business. This involved identifying opportunities , developing requirements and co-ordinating with QA. ','7','17','3','0','24',to_date('22-OKT.  -01','RR-MON-DD'),'205795');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('60','Windows Administrator','Windowns (SAN, Security) virtual environment, DR, excersise testing, documentation, scription work we need done, and severy server upgrades 08 to 12.  Stong Windows confi experinece is a must.  Want some Project Management experience.  Want some TSM or VIM (backing up virtual env), exp administering virutal servers.Top three things we want this person to have:  1. Windows skills, 2. ability to write documentation 3. will need to wear several hats in this role, small company feel. It''s a plus to have the networking stuff... cisco.  Only have 1 person doing the networking right now.Experience with the installation, configuration, administration, and support of Windows 2008 / 2012 Server is required. Project management and documentation skills as well as Disaster Recovery / Business Continuity planning and testing experience is preferred. Additional experience with administering virtual servers, scripting, server patching (Shavlik), system monitoring and alert management (SolarWinds), Cisco ASA firewalls and Catalyst switches is desired The ideal candidate will be able to work well in a team environment and learn new technologies quickly.  ','51','2','25','1','3',to_date('22-DEC.  -09','RR-MON-DD'),'333788');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('61','Software Engineer (Algorithm)','Position:   Software Engineer (Algorithm)Duration:  6+ MonthsLocation:  Bridgewater, NJResponsibilities:The candidate is expected to play research and development.Under the supervision of a senior scientist/researcher areas of advanced computer vision/media processing technologyQualifications / Requirements:Ph.D or Master degree in relevant discipline/field, such as EE or CSStrong programming skills in C / C++ for both Windows and LinuxGood programming skills in Java and Python is a plusAmple hands-on experience with OpenCVExperiences with Android programming is also a plus.3+ years algorithm R&D experiences processing, and related fields with proven track recordGood communication skills, both verbal and writtenan active role in computer vision technology or project leader to conduct research / development work in thetechnology.CS is a mustStrong plus in the areas of computer vision, information retrieval, machine learning, media record.End-to-end advantages in telecom network infrastructure, position in the All-IP convergence age.Our products and solutions through communication.  /////*****Any query please call on 408 550 1287****//////','9','61','12','0','4',to_date('22-DEC.  -15','RR-MON-DD'),'432541');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('62','Sr. JavaScript Developer','PLEASE JOIN OUR TALENT NETWORK: http://bit.ly/vhatalentnetwork  Joining the Talent Network with VanderHouwen & Associates (VHA) will enhance your job search and application experience. Job listings are mobile-friendly and easy to review, share, or apply. Whether you choose to just leave us your information or apply, we look forward to connecting with you.  SummaryOur client is looking for an expert Sr. JavaScript Developer with experience on AWS (Amazon Web Services). Qualifications Required 5+ years'' full-time professional software developer experience. 3+ years* experience on node.js (JavaScript), Expert-level knowledge.2+ years* experience on AWS (EC2, Lambda, ECS, S3 AWS API GW).Qualifications Highly Preferred BS in computer science or related discipline.Experience with Docker and/or AWS ECS service.Experience with REST API and design (SWAGGER).Experience with GIT configuration management tool.Successfully delivered at least one node.js based application into production environment.Experience Working in a collaborative Agile Software Development (SCRUM).Track record of delivering solutions under tight schedules. Strong oral and written skills in English. Qualifications Preferred Working knowledge of Java. Worked on both Windows and Linux development. Experience on IOT solutions. Knowledge of retail applications. Experience with RFID. Experience deploying Node.js applications on client and/or IOT platforms.','32','53','4','0','22',to_date('22-NOV.  -25','RR-MON-DD'),'298586');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('90','Sr. Information Risk Management Analyst','SummaryIn the Information Risk Management, Risk Professional Sr. Analyst role, you''ll execute with IT leadership to build, deliver and operate an information security and risk management assessment strategy that is integrated into the fabric of company DNA. You will be involved in developing a risk management program that is driven by the value and classification of information and working with the data stewards to align the support and participation in the mitigation of information risk for the company. Your primary responsibilities will be to assist leadership in building and executing the process and tracking information risk decisions across multiple internal functions. You will partner with Global Process Leaders (GPL*s), Global Technology Leaders (GTL*s), Product Engines and internal Governance teams such as Legal, Corporate Audit and Tech in designing processes and controls that effectively mitigate information security risk. This opportunity requires knowledge and experience related to information security disciplines, risk management techniques and effective communication and presentation skills. You must have a strong desire to operate as a leader and comfort working in an ambiguous and fast paced environment where your ability to define the future sets the pace for delivery. Strong speaking, writing and influencing skills are required as the opportunity to present verbally or in written form to IT and business leadership is frequent. Knowledge of IT internal contro','43','27','15','0','16',to_date('22-NOV.  -28','RR-MON-DD'),'761131');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('91','Software Development Engineer','Amazon''s Website Request Handling team designs, creates, and owns the critical software layer accepting, filtering, and routing all web traffic from the public Internet to its many websites. We use this software to route and manage traffic, detect and block robot and security threats, and enable Amazon''s businesses to quickly and safely launch new websites and new countries.Our team is starting exciting new projects to take Amazon to the next level in scale and security; if you love making critical high performance software focused on networking, data processing, and security, we have the job for you.The ideal candidate is a champion of engineering excellence: raising the bar on quality, consistency, maintainability, performance, security and all the other things that make great software great. In addition, he/she should contribute elegant, practical code that solves some of the most difficult problems in the project.The opportunity to make an impact in this role is only limited by the personal capacity of the candidate!  Bachelor’s Degree or better in Computer Science or related field, or 5+ years relevant work experience 3+ years professional experience in software development Computer Science fundamentals in object-oriented design, data structures, and algorithms Computer Science fundamentals in networking and operating systems Proficiency in C and at least one high-level programming language such as Java, C++, C#   Have written high performance software using networking p','25','6','8','0','23',to_date('22-JÚN.  -21','RR-MON-DD'),'441574');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('92','Account Coordinator II','Genesis10 is seeking Construction Coordinators in Austin, TX! Our client''s projects, like our users, span the globe and require its employees to keep the big picture in focus. As a member of the Construction Project Coordinator Team, you assist in working with internal customers to usher projects through the entire project lifecycle. This includes managing project schedules and clearly communicating goals to project stakeholders, while ensuring projects progress and meet their deadlines. Our client is striving to innovate Fiber-to-the Home by providing Gig speed internet to its end users. As the MxU Construction Coordinator, you are responsible for assisting the team in the day to day activities of moving our client''s MxU projects from sales to engineering and through the completion of construction. You will have a demonstrated passion for project management with an entrepreneurial spirit and a passion for client management. Responsibilities:   - Represent the Client Fiber Construction Coordinator program to users and external partners, providing outstanding support and relationship building in all interactions. - Work closely with owners/property managers from sales close and site survey through engineering and installation including contracts, scheduling, and escalations. - Answer project specific design related engineering question to external clients when appropriate - Maintain an ongoing relationship with properties, even post-installation - Handle and track escalations,','42','61','23','0','8',to_date('22-JÚL.  -27','RR-MON-DD'),'362941');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('93','Technical Lead Supply Chain - 12241','Our client is one of largest retailers in the world.  Yet their IT department is nimble and dynamic, and works with cutting edge technologies.  Their Information Technology Department has an opening for a Technical Lead with experience leading applications design and integration of Retail Buying and Demand Planning for FMCG distribution centers. This position is located in Pleasanton, California. Responsibilities: The most commonly used applications in this area currently are INFOREM, iTrade, Axway Gateway, and Oracle B2B combined with in-house developed capabilities.Lead projects, allocate and manage resources.Oversee the work of less experienced staff.Provide technical leadership, coach and mentor team members.Lead troubleshooting and root cause determination and proactively identify opportunities to fix issues.Must be able to make sound decisions based on incomplete information, under pressure and maintain project focus.Developing strong working relationships at levels in the business and IT community to ensure overall project satisfaction.Requirements:3+ years of Analysis/Design of Retail Buying and Demand Planning systems.5+ years of Retail or Supply Chain applications development experience.6+ years of programming experience including experience integrating applications across diverse technical platforms.Strong experience with application server (WebSphere, WebLogic) and database technologies (Oracle, DB2, SQL Server).Strong knowledge of UNIX/AIX, Windows, and Mainframe','41','75','13','0','13',to_date('22-NOV.  -11','RR-MON-DD'),'288713');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('94','C++ Software Developer for Multi-Asset Risk System','Our client''s R&D group works on some of the most fascinating and influential technical challenges in business and finance. Their multi-asset risk platform deals with large portfolios consisting of cross asset derivatives - interest rate, credit, FX, equity, and fixed income. The platform supports millions of calculations that drive various analytics such as VAR, CVA, CSA, and margin calculations. They are growing their team and are looking for dedicated and driven software developers with strong technical and programming skills, excellent problem solving ability and appreciation for the scope and impact of their work. A successful candidate will have to solve large scale distributed computation problems to manage millions of calculations bringing together billions of data points every day in an efficient and fault-tolerant fashion. Experience with big databases (Hbase, Cassandra), stream processing (Storm/Kafka), and distributed load balancing/scheduling is desirable. A background in finance and derivatives is a plus, but not a requirement. Strong communication skills and the ability to do well in a collaborative environment are paramount. You will... * Design, code, implement, and test new features of the platforms(mostly C++) * Work with product managers to translate and understand product specifications accurately * Manage projects, including estimation, scheduling, milestone tracking, risk management, and project status reporting The ideal candidate has... * A passion for','34','34','9','0','5',to_date('22-NOV.  -01','RR-MON-DD'),'773908');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('95','Senior MySQL DBA','Fahrenheit IT is seeking a Database Administrator (DBA) to execute on database strategies and take responsibility for database integrity, architecture, modeling, security, and performance tuning for our MySQL databases. This person will play a key role in managing and improving the health and stability of our MySQL instances. This person will will display proficiencies in MySQL administration as well as basic Linux administration in a 24x7 production environment.Responsibilities Basic Database administration - install, configure, upgrade, and migrate existing databases Serve as an escalation point for any defined database issues regarding performance, security, and ongoing maintenance Automate various DBA tasks Optimization of database performance Devise and implement key constraints to ensure database integrity Work with developers and system engineers to troubleshoot and optimize queries and performance bottlenecks for current and future products and services Assist in formalizing and updating database policies, procedures, and technical standards, including disaster recovery planningMinimum Requirements: MySQL DBA experience in a 24x7 production environment. 3-6 years of database management/administration and performance tuning experience Strong proficiency with Linux with experience performing basic administrative tasks Experience implementing multi-master replication (Galera experience is a plus) Experience with version control; specifically Git and GitHub. Mastery of on','13','69','17','1','11',to_date('22-OKT.  -07','RR-MON-DD'),'281462');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('96','Manager of IS Network Engineers','This is a Full Time position for a Manager of IS Network Engineers in Albany, NY Job Description: This position will have the responsibility to manage and oversee Company''s Network Department. This includes the local and wide area networks, as well as, the day-to-day (24x7x365) network operations. The successful candidate will have expert hands-on technical knowledge of Cisco enterprise networking technologies in a multi-site enterprise including but not limited to; core switching, Nexus fabric, ASA firewalls, edge and core routing, managed wireless, vLANs, DMZs, network load balancing , etc. They will possess expert knowledge of core server technologies including the complete virtualization layer platform (SAN storage, fiber channel networks, virtualization software, DR replication, high availability configurations, etc. This position coordinates and ensures organization-wide technology systems are well managed/administered to provide required services to the organization. The manager will be responsible for establishing policies, standards, practices, and security measures to assure effective and consistent information and operations and maintaining the appropriate level of documentation. They will optimize the performance and availability of the network and end-user infrastructures through the application of best practices such as performance monitoring, capacity planning and trend analysis and recommends improved methodologies. The successful candidate must be possess exe','29','16','20','0','15',to_date('22-DEC.  -01','RR-MON-DD'),'634545');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('97','(US)-Program Manager Senior','Responsible for managing one or more highly complex IT program(s) consisting of multiple projects. The program manager will be managing a transformation initiative to migrate an existing a business onto a new platform to support the Pensions Buyout business. The program manager will be responsible for managing a team of business and IT stakeholders located in multiple locations. The scope of work is comprised of a large functional enhancement effort, along with data conversion, and image migration activities. Drives the program strategy, supporting business case and various enterprise wide high-level project plans. Ensures integration of projects and adjusts project scope, timing, and budgets as needed, based on the needs of the business. Responsible for delivering all projects contained in the IT project portfolio on time, within budget and meeting the strategic and business requirements. Responsible for tracking key project milestones and recommending adjustments to Project Managers. Communicates the program strategy, direction and changes with IT leadership, business leadership and IT business consultants (onshore and offshore). Partners with senior leadership of the business community to identify and prioritize opportunities for utilizing IT to achieve the goals of the program and business objectives. This is a single or multiple incumbent(s) position that typically exists in a small to medium size enterprise with multiple project managers, project leaders and/or project ','49','48','19','0','1',to_date('22-JÚN.  -21','RR-MON-DD'),'732633');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('98','Business Analyst - Mortgage/Equiting Lending, Lean Six Sigma Green Belt/Black Belt','Job Description: Seeking a Business Process Analyst with industry and functional experience in process re- engineering. Will manage one specific track of the business process re-engineering or improvement efforts as part of a large scale project. Will work with a cross-functional team to re-design business process to align with new technology implementation or business strategy.At the direction of the Business Transformation Leader, assist in establishing clear objectives and deliverables of converting technologies, the look and design of the new platform for the track that supports the business. Schedule and run all phase reviews and track reviews in support of the business process Leader/DirectorTrack progress, report status and make necessary corrections to achieve all track goalsManage risks and issues through effective contingency plans and proper escalation. Organize and lead team meetings and maintain schedule. Analyze and report actual performance vs. business case goals. Work in a self directed environment. Present to track management on program status.Required Skills: Mortgage/Equiting Lending, Lean Six Sigma Green Belt/Black Belt. Don''t hesitate! Submit your resume today. SMCI is an EEO employer. All qualified applicants will receive consideration without regard to race, color, religion, sex, pregnancy, national origin, disability, age, genetic information, veteran status, sexual orientation and identity, AIDS/HIV, medical condition, political activities or affilia','18','20','6','0','7',to_date('22-JÚL.  -14','RR-MON-DD'),'559345');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('99','DHMSM Operational Medicine Interface Developer','TAD PGS, INC. is currently seeking a DHMSM Operational Medicine Interface Developer for one of our clients in Vienna, VA.**Per Government Sector, U.S. Citizenship is required Company Description: Our client designs, develops, and sustains offerings that empower diplomatic missions, support war fighter requirements, and advance exploration from the ocean floor to outer space. They maintain leadership positions in supply chain management, hardware integration, and global network integration. They do all this with the constant and deliberate commitment to ethical performance and integrity that has marked their company since its founding. Job Description: Provide support to MHS GENESIS system external interface design, development, integration, test, troubleshooting, and sustainment. Participate in planning and requirements analysis, design, technical review and implementation for new interfaces. Support creation of Interface Control Documents. Provide support to Rhapsody developers and coders. Perform Unit Testing of completed code modules. Develop Assembly Test plans and scripts, and provide support to Assembly Test as necessary. Provide support to integration engineers to complete integration of new interfaces to MHS GENESIS system. Major Responsibilities:Provide engineering support to External Interface Team.Support the full system engineering life-cycle, including requirements analysis, design, development, integration, test, and implementation.Involves substantial knowledge','35','25','16','1','10',to_date('22-AUG.  -31','RR-MON-DD'),'585123');
Insert into C##ADATB.ALLAS (ID,ALLAS_NEVE,ALLAS_LEIRASA,MUNKAKOR_ID,HIRDETO_ID,KAPCSOLAT_ID,DIAK_VALLALHATJA,HELYSZIN_ID,KEZDES_IDOPONTJA,BEREZES) values ('100','Information Technology Architect','Our client, one of the world''s leading professional services organizations, is seeking an Information Technology Architect.   Location: Alpharetta, GA or Secaucus, NJ Position Type: Contract   - As a senior infrastructure architect - Data Analytics (Management Service) we are looking for someone who has broad knowledge is most of the areas. -We we are using the Tableau, Spotfire , R, MS PowerBI in our environment. - We have applications designed using start of the art technology hosted in an enterprise grade data centers. - Review functional and nonfunctional requirements for new systems and enhancements, to identify gaps and inconsistencies, and translate these into requirements for infrastructure build-out. - Architect Infrastructure solutions with no single points of failure.  - Including architecting failover solutions across multiple data centers. - Lead new technology integration via requirements analysis, design, and implementation. - Make recommendations and support implementations of new tools and technologies. - Engage with firm''s operations teams and third party vendors on an as needed basis. - Oracle, SQL , .NET, Java, Windows, Linux, IIS, Websphere , Exchange, Lync, VMWare, Citrix, SAN, NAS, Converged network  - Act as the primary technical support resource to projects. - Assist in providing analyses of new and different technologies and in recommending efficient and cost-effective solutions to meet specific technical or business requirements. - Coordinate the ac','15','42','21','1','21',to_date('22-JÚN.  -26','RR-MON-DD'),'732514');
REM INSERTING into C##ADATB.DIAK_FELHASZNALO
SET DEFINE OFF;
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('1','117','12',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('2','120','14',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('3','121','13','6');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('4','123','10',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('5','126','11',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('6','127','15',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('7','128','11',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('8','129','9',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('9','131','9',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('10','132','2',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('11','133','14',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('12','135','7',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('13','137','10','9');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('14','139','10',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('15','144','2','5');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('16','145','10',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('17','148','1',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('18','153','9','13');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('19','155','12',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('20','159','10','27');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('21','160','4',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('22','166','2','14');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('23','168','4',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('24','170','8',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('25','171','1','20');
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('26','173','8',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('27','176','3',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('28','177','12',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('29','178','11',null);
Insert into C##ADATB.DIAK_FELHASZNALO (ID,FIOKADAT_ID,ISKOLA_ID,VALLALAT_ID) values ('30','181','5','28');
REM INSERTING into C##ADATB.DIAKSZOVETKEZET
SET DEFINE OFF;
Insert into C##ADATB.DIAKSZOVETKEZET (ID,NEV) values ('1','Diák-Meló Szövetkezet');
Insert into C##ADATB.DIAKSZOVETKEZET (ID,NEV) values ('2','Diák-Mind Szövetkezet');
Insert into C##ADATB.DIAKSZOVETKEZET (ID,NEV) values ('3','Fürgeláb Szövetkezet');
Insert into C##ADATB.DIAKSZOVETKEZET (ID,NEV) values ('4','Dolgos Diák Szövetkezet');
Insert into C##ADATB.DIAKSZOVETKEZET (ID,NEV) values ('5','DiákJobs Szövetkezet');
REM INSERTING into C##ADATB.DIAKSZOVETKEZETNEL_VAN
SET DEFINE OFF;
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','1');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','2');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','3');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','4');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','5');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','6');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','7');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','8');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','9');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','10');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','11');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','12');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','13');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','14');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','15');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','16');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','17');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','18');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('5','19');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','20');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','21');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','22');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','23');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('4','24');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','25');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','26');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('3','27');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('2','28');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','29');
Insert into C##ADATB.DIAKSZOVETKEZETNEL_VAN (DIAKSZOVETKEZET_ID,DIAK_FELHASZNALO_ID) values ('1','30');
REM INSERTING into C##ADATB.EGYEB_FELTETELEK
SET DEFINE OFF;
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('1','0','3','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('2','1','1','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('3','0','5','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('4','1','2','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('5','1','3','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('6','1','4','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('7','0','4',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('8','0','1','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('9','0','3',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('10','1','1',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('11','0','3','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('12','0','5','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('13','1','1','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('14','0','1',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('15','1','0','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('16','1','3','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('17','0','5','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('18','1','0','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('19','1','3',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('20','1','4',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('21','0','0','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('22','0','2','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('23','0','0','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('24','0','0','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('25','1','0','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('26','0','4','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('27','0','2','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('28','1','4','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('29','0','2','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('30','0','3','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('31','0','4','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('32','0','4','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('33','0','5','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('34','1','5',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('35','1','1','Legalább egy előző munkahely');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('36','1','5','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('37','0','1','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('38','0','5',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('39','0','2','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('40','1','4','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('41','1','3','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('42','0','1','Aktív hallgatói jogviszony');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('43','1','0',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('44','1','2',null);
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('45','0','4','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('46','0','3','Érvényes számlaszám');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('47','0','1','Szakképesítés');
Insert into C##ADATB.EGYEB_FELTETELEK (ID,KELL_JOGSI,MUNKATAPASZTALAT_EV,EGYEB_FELTETELEK) values ('48','1','3','Aktív hallgatói jogviszony');
REM INSERTING into C##ADATB.FIOKADATOK
SET DEFINE OFF;
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('164','schwaang@gmail.com','aDJ3uEbwVK','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('165','hahiss@aol.com','eZjA8XKNSV','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('166','goresky@optonline.net','4vALJzuEFt','3','86','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('167','pemungkah@me.com','YPXEM6zD2u','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('168','matsn@msn.com','P3U8KgHcDq','3','30','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('169','hoyer@yahoo.com','WfES9VkLAc','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('170','dburrows@optonline.net','DTge3CWBSU','3','100','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('171','symbolic@mac.com','7dLjWNhH2b','3','11','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('172','andrei@yahoo.com','LDxygrm7fp','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('173','zeller@icloud.com','7X428WNTKw','3','99','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('174','moinefou@msn.com','2vTLWkwaVm','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('175','thaljef@att.net','kjN3p4yGHv','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('176','pdbaby@yahoo.ca','jcdGEKqYP7','3','18','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('177','pedwards@yahoo.ca','P2rS8WFfKn','3','52','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('178','aibrahim@me.com','QqHB6nbcD3','3','60','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('179','mallanmba@me.com','QnMqJ7HvmB','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('180','rgarcia@optonline.net','ph6KQWeaF4','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('181','jimmichie@verizon.net','hN64u5arLD','3','25','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('1','admin@admin.com','admin',null,null,'1');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('2','heroine@outlook.com','yseYHG8v2B','2','83','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('3','panolex@sbcglobal.net','7MNp25f3nA','2','100','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('4','alias@icloud.com','4C3qZv9ENS','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('5','weidai@gmail.com','qRpTbUC6BX','2','3','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('6','elflord@sbcglobal.net','Cn6Dt2cTj4','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('7','yzheng@yahoo.com','zgXaxf6nNe','2','48','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('8','stevelim@aol.com','Q3fdhDgNCL','2','40','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('9','houle@att.net','Kg8Fs2D9n5','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('10','dinther@msn.com','UgYG3eFSaM','2','20','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('11','lstein@icloud.com','8ZFRExvbAk','2','85','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('12','thaljef@msn.com','JCaE4GABcw','2','9','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('13','gboss@icloud.com','szYFLSrR7D','2','2','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('14','campbell@outlook.com','JGH5mQj9tF','2','35','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('15','muadip@outlook.com','Kfejy4mnvq','2','92','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('16','portele@comcast.net','gr6KV5b2j3','2','31','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('17','geeber@verizon.net','4KvsjkrEhP','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('18','munson@outlook.com','jFugYB5TrV','2','41','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('19','mglee@msn.com','rC3xdptWUN','2','91','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('20','sravani@comcast.net','8ANMCgYwBX','2','4','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('21','brbarret@gmail.com','B7DZSFhLa3','2','15','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('22','donev@aol.com','PFe6tGBVRL','2','69','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('23','nasor@att.net','Y2ywEDPRav','2','1','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('24','rfoley@aol.com','QfBL9vRrhS','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('25','njpayne@comcast.net','nW5v9QYR2p','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('26','mgemmons@optonline.net','Q2rc79RLMK','2','10','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('27','rwelty@live.com','HPZtdN4w5D','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('28','sartak@yahoo.ca','MT2PUcuRre','2','79','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('29','dialworld@hotmail.com','Su5Havx8wp','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('30','johnbob@verizon.net','YuLDs9c7zb','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('31','luvirini@sbcglobal.net','LPvTnJC6HK','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('32','jbailie@optonline.net','2uJcFRrh5Q','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('33','danneng@live.com','nHGKZq8P5D','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('34','conteb@aol.com','VTLmF5eBsN','2','93','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('35','kewley@sbcglobal.net','cSF78YvyZe','2','24','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('36','suresh@comcast.net','Jc4DgFmd6j','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('37','denism@yahoo.ca','2DgxzvtLR9','2','8','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('38','jonas@outlook.com','ZqKTuA9S6m','2','38','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('39','munson@aol.com','LdFwtK7aZY','2','46','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('40','donev@icloud.com','K6CXvDWhuq','2','78','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('41','aibrahim@me.com','DhgrPUw7ab','2','53','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('42','balchen@att.net','mjR8FrptJQ','2','44','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('43','improv@yahoo.com','nLHcVpsx5y','2','58','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('44','mchugh@icloud.com','AQ93Zba7hH','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('45','vmalik@msn.com','wAJy7SkHaC','2','43','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('46','thomasj@yahoo.ca','NnE8J3CfkG','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('47','thrymm@att.net','sKkQr38FmH','2','72','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('48','eidac@aol.com','zsBVt3dFDH','2','34','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('49','bartlett@yahoo.com','z7xTg5yHsq','2','97','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('50','rkobes@msn.com','nf8uCWAwLK','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('51','fairbank@mac.com','8VbsgqChQz','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('52','jonathan@gmail.com','NhKU7FLgWv','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('53','kramulous@aol.com','f6wymY52ek','2','51','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('54','muzzy@comcast.net','5Kc4EprFMZ','2','6','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('55','spadkins@yahoo.com','j6zHr9RXyA','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('56','petersko@gmail.com','aL9ZjNDdcG','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('57','pspoole@gmail.com','ex3NsBdptu','2','80','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('58','jdhildeb@icloud.com','zWqU7r385M','2','26','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('59','jeteve@live.com','wEHhUMuxD2','2','87','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('60','kayvonf@att.net','fsnNV3mrKz','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('61','parents@outlook.com','L8f5kKXwpx','2','42','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('62','zilla@yahoo.com','TfRrUCaXF6','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('63','mbrown@icloud.com','N54jRFc2ZE','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('64','hikoza@optonline.net','UrLE4kVYtn','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('65','curly@live.com','cPCGBu2xFQ','2','16','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('66','crowl@yahoo.ca','94kvZm5eS3','2','37','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('67','djpig@yahoo.com','bxP8f5yWs2','2','5','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('68','gozer@yahoo.ca','v7wj9qDt4F','2','59','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('69','bartlett@optonline.net','2Jv6nt8Dbm','2','95','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('70','panolex@gmail.com','NPXvf2wqsU','2','62','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('71','mosses@icloud.com','XK5CMb2cQs','2','61','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('72','jandrese@sbcglobal.net','CVmY2bgNHQ','2','63','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('73','bastian@hotmail.com','bywUGdZgE8','2','19','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('74','rwelty@yahoo.ca','sjJT8zdY26','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('75','aracne@msn.com','DJ5cLuaZx3','2','7','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('76','bescoto@sbcglobal.net','HX5w34CWbQ','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('77','magusnet@verizon.net','y9n8CmBA25','2','74','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('78','duncand@optonline.net','RKMU5YymEs','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('79','goresky@sbcglobal.net','pdUQr8Rjwt','2','89','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('80','jonathan@gmail.com','tYPEn6yzXZ','2','55','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('81','dawnsong@gmail.com','eFGSRz42pn','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('82','jusdisgi@outlook.com','7QbeFqhH4M','2','82','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('83','aschmitz@gmail.com','BrMzKtb5aN','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('84','kmiller@gmail.com','yEfxDNLkV6','2','88','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('85','mkearl@verizon.net','9nuZ3EfKFC','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('86','chance@hotmail.com','PLvmTtqHs6','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('87','fmerges@msn.com','pLcGhakAN5','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('88','fallorn@yahoo.com','v5zTtywgC6','2','39','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('89','bigmauler@verizon.net','QEGA5VSb7K','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('90','dsugal@mac.com','kAbWhU4gKQ','2','54','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('91','shrapnull@live.com','tUg2eMnQGj','2','98','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('92','makarow@gmail.com','AY2Rfyh7WZ','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('93','cfhsoft@optonline.net','3JdEZC7g2H','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('94','crowl@yahoo.com','7tTvnEpsx9','2','75','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('95','mcnihil@sbcglobal.net','NKSshByL6f','2','32','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('96','hllam@aol.com','7MpReWSzuJ','2','45','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('97','laird@me.com','CaqDudx3cV','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('98','qrczak@sbcglobal.net','CsWJRbg4zd','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('99','scarlet@verizon.net','d5Qmwr3xn4','2','22','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('100','ivoibs@aol.com','4SVzTkQC8j','2','23','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('101','fmerges@mac.com','ve7kjcnMQA','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('102','gamma@msn.com','fP6EU83vAg','2','12','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('103','maradine@mac.com','Y9yJUpMEvq','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('104','rmcfarla@sbcglobal.net','e4zPJKshrc','2','65','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('105','crusader@live.com','wQba5DKqPZ','2','94','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('106','bmorrow@sbcglobal.net','RVP5npMCvE','2','76','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('107','gmcgath@verizon.net','pmF4q2MetY','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('108','rmcfarla@sbcglobal.net','2HkqQYWZgR','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('109','houle@comcast.net','NX8gzDfMFv','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('110','mbrown@live.com','HwymTeV38d','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('111','durist@msn.com','5dKywtUnxN','2','50','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('112','dpitts@yahoo.ca','xrFWkbvKR8','2','77','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('113','bartlett@aol.com','nCzMjtp83E','2','29','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('114','odlyzko@comcast.net','Le4dJN7pPH','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('115','lstein@yahoo.com','gCkMDBQpq9','2','33','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('116','keiji@aol.com','TqQ9W3NsSU','2','96','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('117','dogdude@live.com','KRgWsL9YXv','3','64','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('118','jesse@outlook.com','fEhtm87zHd','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('119','rmcfarla@att.net','G7TV8uD34E','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('120','burns@comcast.net','rKL4gNAX3W','3','70','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('121','joglo@gmail.com','M4YFCv3bXG','3','66','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('122','farber@sbcglobal.net','54jmFpGxM2','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('123','kudra@aol.com','7RJCr85mwx','3','27','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('124','erynf@comcast.net','9YB64EUgRP','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('125','arachne@icloud.com','BFUD7usndj','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('126','cantu@sbcglobal.net','kgvMW6LVC9','3','57','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('127','scarlet@hotmail.com','xcemtY5Ggs','3','21','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('128','microfab@msn.com','pVZgYHQ2Mn','3','56','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('129','ilikered@aol.com','st3jvHMpZB','3','71','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('130','sburke@live.com','ZHhwtKrq7F','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('131','bockelboy@yahoo.com','Tf2rGMNWPw','3','84','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('132','overbom@att.net','7cSXFqQkaG','3','14','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('133','kiddailey@icloud.com','L7BtqTQjWp','3','13','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('134','jadavis@mac.com','5wxRbsJfQA','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('135','wagnerch@comcast.net','ZxsRywQv28','3','90','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('136','lamprecht@att.net','WuJEAH3US9','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('137','formis@yahoo.com','3sEbHpfjqr','3','36','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('138','crowemojo@att.net','yGsuhfa4Tr','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('139','jfinke@aol.com','LVwfS36Jhr','3','47','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('140','rtanter@mac.com','n9fzLXUmuY','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('141','pemungkah@icloud.com','3WpXH5DyfG','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('142','aibrahim@optonline.net','hmNH8MyWgF','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('143','rcwil@msn.com','UqjPDyQXf2','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('144','sisyphus@optonline.net','ZBVkXsH3GL','3','67','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('145','nimaclea@hotmail.com','aeU24WSdFT','3','73','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('146','eurohack@att.net','G4UJQpgRYr','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('147','pkplex@verizon.net','8pRqegf3SU','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('148','jbailie@yahoo.com','q3rm7yHgpu','3','81','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('149','stomv@comcast.net','PLgy5dTp3f','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('150','timtroyr@me.com','WZj3JG2xKm','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('151','tmccarth@hotmail.com','2K5AxJHmha','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('152','eabrown@mac.com','DyAd6YHqG9','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('153','cyrus@mac.com','KtaRL4AEhP','3','49','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('154','jfmulder@yahoo.com','sD28mT36By','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('155','dunstan@gmail.com','T8vHZeCp9j','3','68','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('156','bester@mac.com','tQPUjyRT9F','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('157','plover@att.net','TP2yHYgCW6','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('158','isotopian@yahoo.ca','qc3rjW8Hew','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('159','pkilab@att.net','sTz5e7849w','3','28','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('160','vlefevre@comcast.net','Vz8wXS9Q6N','3','17','0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('161','janneh@mac.com','MNJbs6wQ2C','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('162','kassiesa@live.com','Epn3dGw9zN','1',null,'0');
Insert into C##ADATB.FIOKADATOK (ID,EMAIL,JELSZO,FIOK_TIPUSA,SZEMELYES_ADATOK_ID,ADMIN_E) values ('163','fluffy@verizon.net','UGW6QH7gap','1',null,'0');
REM INSERTING into C##ADATB.HELYSZIN
SET DEFINE OFF;
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('1','Magyarország','Budapest','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('2','Magyarország','Debrecen','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('3','Magyarország','Szeged','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('4','Magyarország','Pécs','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('5','Magyarország','Sopron','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('6','Magyarország','Szombathely','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('7','Magyarország','Kecskemét','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('8','Magyarország','Siófok','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('9','Magyarország','Miskolc','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('10','Magyarország','Győr','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('11','Magyarország','Szolnok','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('12','Magyarország','Kaposvár','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('13','Magyarország','Veszprém','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('14','Magyarország','Békéscsaba','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('15','Magyarország','Székesfehérvár','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('16','Magyarország','Baja','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('17','Magyarország','Cegléd','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('18','Magyarország','Csongrád','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('19','Magyarország','Gyula','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('20','Magyarország','Esztergom','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('21','Magyarország','Dunaújváros','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('22','Magyarország','Dunakeszi','1');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('23','Magyarország','Érd','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('24','Magyarország','Hatvan','0');
Insert into C##ADATB.HELYSZIN (ID,ORSZAG,VAROS,TAVOLROL_VEGEZHETO_E) values ('25','Magyarország','Hódmezővásárhely','0');
REM INSERTING into C##ADATB.HIRDETO
SET DEFINE OFF;
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('1','4','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('2','6','22');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('3','9','1');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('4','17','4');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('5','24','10');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('6','25','14');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('7','27','26');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('8','29','1');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('9','30','20');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('10','31','16');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('11','32','10');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('12','33','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('13','36','12');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('14','44','8');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('15','46','21');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('16','50','29');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('17','51','25');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('18','52','1');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('19','55','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('20','56','7');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('21','60','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('22','62','25');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('23','63','27');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('24','64','7');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('25','74','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('26','76','22');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('27','78','13');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('28','81','24');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('29','83','30');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('30','85','4');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('31','86','24');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('32','87','12');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('33','89','2');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('34','92','25');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('35','93','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('36','97','26');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('37','98','28');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('38','101','1');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('39','103','19');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('40','107','6');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('41','108','23');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('42','109','11');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('43','110','26');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('44','114','7');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('45','118','28');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('46','119','29');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('47','122','10');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('48','124','9');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('49','125','25');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('50','130','5');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('51','134','19');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('52','136','30');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('53','138','22');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('54','140','7');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('55','141','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('56','142','3');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('57','143','17');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('58','146','20');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('59','147','19');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('60','149','4');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('61','150','12');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('62','151','26');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('63','152','26');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('64','154','23');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('65','156','2');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('66','157','29');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('67','158','17');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('68','161','27');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('69','162','24');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('70','163','20');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('71','164','24');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('72','165','7');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('73','167','19');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('74','169','17');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('75','172','30');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('76','174','19');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('77','175','18');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('78','179','21');
Insert into C##ADATB.HIRDETO (ID,FIOKADATOK_ID,VALLALAT_ID) values ('79','180','22');
REM INSERTING into C##ADATB.ISKOLA
SET DEFINE OFF;
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('1','Állatorvostudományi Egyetem','2024');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('2','Bolyai János Gimnázium','2023');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('3','Kandó Kálmán Szakközépiskola','2025');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('4','Állatorvostudományi Egyetem','2026');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('5','Szegedi Tudományegyetem','2023');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('6','Szegedi Tudományegyetem','2026');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('7','Bolyai János Gimnázium','2024');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('8','Szegedi Tudományegyetem','2022');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('9','Kandó Kálmán Szakközépiskola','2023');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('10','Állatorvostudományi Egyetem','2027');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('11','Állatorvostudományi Egyetem','2022');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('12','Bolyai János Gimnázium','2024');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('13','Szegedi Tudományegyetem','2022');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('14','Kandó Kálmán Szakközépiskola','2025');
Insert into C##ADATB.ISKOLA (ID,NEV,VARHATO_BEFEJEZES) values ('15','Állatorvostudományi Egyetem','2026');
REM INSERTING into C##ADATB.JELENTKEZOK
SET DEFINE OFF;
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('14','4');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('93','49');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('13','11');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('37','29');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('64','38');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('71','60');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('65','11');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('15','62');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('7','45');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('9','25');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('56','56');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('63','28');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('39','68');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('73','34');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('18','18');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('36','21');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('73','19');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('97','51');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','31');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('57','24');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('75','67');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('72','49');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('15','45');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('48','71');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('22','42');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('29','67');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('31','27');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('19','68');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('11','35');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('72','71');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('35','54');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('53','28');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('65','56');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('34','55');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('12','4');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('9','64');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('3','18');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('63','19');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('82','37');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('69','55');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('97','68');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('96','42');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('57','44');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('1','43');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('52','17');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('28','38');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('8','2');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('78','6');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('86','46');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('21','22');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('61','30');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('18','71');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('37','71');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','25');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('52','42');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('50','18');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('39','7');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('88','52');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('30','14');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('60','68');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('59','35');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('13','2');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('83','29');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('47','52');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('44','39');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('93','67');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('43','70');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('5','20');
Insert into C##ADATB.JELENTKEZOK (ALLAS_ID,NORMAL_FELHASZNALO_ID) values ('88','56');
REM INSERTING into C##ADATB.KAPCSOLAT
SET DEFINE OFF;
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('1','Gáspár Mihály','gasparmihaly@gmail.com','0620516675');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('2','Veres Kálmán','vereskalman@gmail.com','06202649994');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('3','Kelemen Ferenc','kelemenferenc@gmail.com','06201604695');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('4','Fülöp Rajmund','fuloprajmund@gmail.com','06304753949');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('5','Pataki Bálint','patakibalint@gmail.com','06309066828');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('6','Tamás Márkó','tamasmarko@gmail.com','06309218250');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('7','Molnár István','molnaristvan@gmail.com','6302078039');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('8','Faragó Levente','faragolevente@gmail.com','061481971');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('9','Fehér Ákos','feherakos@gmail.com','06708856138');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('10','Balázs Károly','balazskaroly@gmail.com','06706989492');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('11','Székely Flórián','szekelyflorian@gmail.com','0670574882');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('12','Vass Ádám','vassadam@gmail.com','06705772249');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('13','Takács Gergő','takacsgergo@gmail.com','06709270015');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('14','Molnár Dalma','molnardalma@gmail.com','06203598815');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('15','Novák Lilla','novaklilla@gmail.com','06206235157');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('16','Kis Georgina','kisgeorgina@gmail.com','06202595982');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('17','Biró Dorka','birodorka@gmail.com','062091156');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('18','Takács Réka','takacsreka@gmail.com','06301539788');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('19','Fülöp Regina','fulopregina@gmail.com','06301192779');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('20','Gáspár Ágnes','gasparagnes@gmail.com','06302852781');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('21','Jakab Dominika','jakabdominika@gmail.com','06305355355');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('22','Egyed Kíra','egyedkira@gmail.com','06705656529');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('23','Pintér Éva','pintereva@gmail.com','06706718125');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('24','Vincze Sára','vinczeSara@gmail.com','06704373270');
Insert into C##ADATB.KAPCSOLAT (ID,NEV,EMAIL,TELEFONSZAM) values ('25','Halász Fruzsina','halaszfruzsina@gmail.com','06701544194');
REM INSERTING into C##ADATB.MUNKAKOR
SET DEFINE OFF;
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('1','Fizikai','Érettségi',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('2','Fizikai','Érettségi','27');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('3','Fizikai','Érettségi','21');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('4','Fizikai','Érettségi','46');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('5','Fizikai','Érettségi','47');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('6','Fizikai','8 Általános',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('7','Fizikai','8 Általános','1');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('8','Fizikai','8 Általános','22');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('9','Fizikai','8 Általános','31');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('10','Fizikai','8 Általános','15');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('11','Fizikai','8 Általános','38');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('12','Fizikai','8 Általános','10');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('13','Fizikai','8 Általános','37');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('14','Irodai','8 Általános','35');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('15','Irodai','8 Általános',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('16','Irodai','8 Általános','7');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('17','Irodai','Érettségi',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('18','Irodai','Érettségi','4');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('19','Irodai','Érettségi','2');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('20','Irodai','Érettségi','26');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('21','Irodai','Érettségi','8');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('22','Irodai','Érettségi','43');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('23','Irodai','Érettségi','16');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('24','Irodai','Diploma','44');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('25','Irodai','Diploma',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('26','Irodai','Diploma','41');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('27','Irodai','Diploma','33');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('28','Irodai','Diploma','34');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('29','Irodai','Diploma','39');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('30','Fizikai','Diploma','12');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('31','Fizikai','Diploma',null);
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('32','Fizikai','Diploma','18');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('33','Fizikai','Diploma','9');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('34','Fizikai','Diploma','6');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('35','Fizikai','Diploma','11');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('36','Fizikai','Diploma','45');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('37','Fizikai','Diploma','28');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('38','Fizikai','Diploma','23');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('39','Fizikai','Diploma','32');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('40','Fizikai','Diploma','17');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('41','Fizikai','Diploma','14');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('42','Fizikai','8 Általános','24');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('43','Fizikai','8 Általános','36');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('44','Fizikai','8 Általános','40');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('45','Fizikai','8 Általános','5');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('46','Fizikai','8 Általános','29');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('47','Irodai','Érettségi','20');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('48','Irodai','Érettségi','42');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('49','Irodai','Érettségi','30');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('50','Irodai','Diploma','13');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('51','Irodai','Diploma','19');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('52','Irodai','Diploma','3');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('53','Irodai','Diploma','25');
Insert into C##ADATB.MUNKAKOR (ID,ALLAS_TIPUSA,SZUKSEGES_VEGZETTSEG,EGYEB_FELTETELEK_ID) values ('54','Irodai','Diploma','48');
REM INSERTING into C##ADATB.NORMAL_FELHASZNALO
SET DEFINE OFF;
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('1','2','50',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('2','3','55','22');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('3','5','39','21');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('4','7','83',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('5','8','8',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('6','10','5',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('7','11','11','12');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('8','12','81',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('9','13','51','3');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('10','14','95',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('11','15','67',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('12','16','72','19');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('13','18','35','28');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('14','19','42',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('15','20','82','20');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('16','21','25',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('17','22','24','25');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('18','23','82',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('19','26','64','14');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('20','28','47',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('21','34','39',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('22','35','10','28');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('23','37','49',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('24','38','56','1');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('25','39','93','18');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('26','40','72',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('27','41','36','6');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('28','42','70',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('29','43','36',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('30','45','59','5');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('31','47','64','30');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('32','48','14','20');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('33','49','9',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('34','53','20','17');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('35','54','11','9');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('36','57','64','11');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('37','58','78',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('38','59','8','4');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('39','61','24','25');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('40','65','84','21');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('41','66','12','7');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('42','67','12',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('43','68','65','25');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('44','69','91','27');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('45','70','28',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('46','71','93','22');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('47','72','17','10');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('48','73','37',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('49','75','47','10');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('50','77','49','29');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('51','79','78',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('52','80','55','11');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('53','82','24','13');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('54','84','21',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('55','88','58','5');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('56','90','63','25');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('57','91','44',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('58','94','37','1');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('59','95','37','26');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('60','96','20','17');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('61','99','70',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('62','100','78',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('63','102','69','11');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('64','104','43',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('65','105','76','1');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('66','106','70','14');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('67','111','64',null);
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('68','112','21','25');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('69','113','68','22');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('70','115','55','4');
Insert into C##ADATB.NORMAL_FELHASZNALO (ID,FIOKADATOK_ID,VEGZETTSEG_ID,VALLALAT_ID) values ('71','116','56','18');
REM INSERTING into C##ADATB.REGISZTRALT_ALLASOK
SET DEFINE OFF;
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('6','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('10','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('11','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('14','3');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('22','1');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('27','2');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('37','1');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('45','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('57','4');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('60','1');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('64','4');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('68','1');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('71','4');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('75','1');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('78','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('79','5');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('85','2');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('95','3');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('99','2');
Insert into C##ADATB.REGISZTRALT_ALLASOK (ALLAS_ID,DIAKSZOVETKEZET_ID) values ('100','2');
REM INSERTING into C##ADATB.SZEMELYES_ADATOK
SET DEFINE OFF;
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('1','Váradi Alexander',to_date('70-ÁPR.  -26','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('2','Kocsis Márk',to_date('74-DEC.  -11','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('3','Király Péter',to_date('76-AUG.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('4','Takács Gergely',to_date('77-JÚN.  -06','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('5','Fekete Dénes',to_date('79-MÁRC. -18','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('6','Bogdán Benjamin',to_date('80-JAN.  -16','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('7','Szőke Máté',to_date('81-JÚL.  -03','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('8','Szűts Szilveszter',to_date('82-NOV.  -10','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('9','Nemes Benjámin',to_date('83-JAN.  -28','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('10','Balogh Géza',to_date('84-NOV.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('11','Miksa Barnabás',to_date('86-JAN.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('12','Papp Adrián',to_date('87-JÚL.  -27','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('13','Fekete András',to_date('93-JAN.  -27','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('14','László Bence',to_date('93-JÚL.  -29','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('15','Apród Ádám',to_date('93-AUG.  -12','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('16','Faragó Kornél',to_date('93-NOV.  -29','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('17','Szekeres Károly',to_date('94-JÚL.  -01','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('18','Sándor Patrik',to_date('94-NOV.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('19','Szücs Dénes',to_date('95-FEBR. -06','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('20','Váradi Barna',to_date('96-MÁRC. -21','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('21','Kende Albert',to_date('96-SZEPT.-15','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('22','Mezei Alex',to_date('97-JÚN.  -23','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('23','Balogh Adrián',to_date('00-AUG.  -03','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('24','Barna Ádám',to_date('01-FEBR. -08','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('25','Tamás Vilmos',to_date('01-MÁRC. -28','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('26','Zobor Benedek',to_date('72-OKT.  -16','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('27','Bálint Máté',to_date('73-SZEPT.-29','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('28','Apród Dominik',to_date('74-SZEPT.-19','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('29','Fehér Noel',to_date('75-AUG.  -21','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('30','Illés Olivér',to_date('78-JÚL.  -10','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('31','Balog Gergely',to_date('78-AUG.  -27','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('32','Fazekas Tibor',to_date('79-JAN.  -19','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('33','Balogh Donát',to_date('79-NOV.  -22','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('34','Veres Milán',to_date('79-DEC.  -14','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('35','Csonka Renátó',to_date('80-DEC.  -28','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('36','Lukács Levente',to_date('84-JÚL.  -12','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('37','Bogdán Szilveszter',to_date('85-FEBR. -18','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('38','Dudás Kálmán',to_date('89-SZEPT.-22','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('39','Virág Vince',to_date('91-AUG.  -17','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('40','Simon Benjámin',to_date('92-MÁRC. -18','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('41','Tamás Szilveszter',to_date('92-JÚN.  -28','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('42','Soós István',to_date('95-FEBR. -05','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('43','Papp Benjámin',to_date('95-AUG.  -20','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('44','Szekeres Károly',to_date('95-NOV.  -25','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('45','Orsós Gábor',to_date('96-ÁPR.  -22','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('46','Halász Ferenc',to_date('97-SZEPT.-14','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('47','Szabó Róbert',to_date('99-MÁRC. -22','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('48','Vörös Lajos',to_date('99-DEC.  -25','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('49','László Viktor',to_date('00-MÁJ.  -27','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('50','Sípos Balázs',to_date('00-JÚN.  -05','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('51','Csatár Patrícia',to_date('72-ÁPR.  -16','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('52','Egyed Borbála',to_date('76-OKT.  -29','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('53','Török Erzsébet',to_date('77-JAN.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('54','László Kitti',to_date('77-ÁPR.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('55','Major Laura',to_date('78-JÚL.  -31','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('56','Németh Vanda',to_date('79-OKT.  -09','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('57','Bálint Viktória',to_date('79-NOV.  -08','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('58','Király Cintia',to_date('83-AUG.  -26','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('59','Pap Éva',to_date('83-SZEPT.-24','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('60','Biró Petra',to_date('83-OKT.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('61','Szalai Fanni',to_date('83-DEC.  -23','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('62','Balázs Adrienn',to_date('85-JÚN.  -09','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('63','Apród Nóra',to_date('85-AUG.  -03','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('64','Kapolcs Anita',to_date('86-SZEPT.-18','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('65','Hegedüs Éva',to_date('88-MÁRC. -28','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('66','Máté Adél',to_date('92-MÁJ.  -06','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('67','Magyar Gréta',to_date('92-AUG.  -11','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('68','Székely Ivett',to_date('94-MÁJ.  -24','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('69','Egyed Judit',to_date('95-JAN.  -15','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('70','Németh Virág',to_date('95-JÚN.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('71','Pap Zita',to_date('95-SZEPT.-26','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('72','Fodor Dorottya',to_date('96-NOV.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('73','Juhász Anna',to_date('98-NOV.  -13','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('74','Székely Bettina',to_date('00-MÁJ.  -10','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('75','Fekete Petra',to_date('00-JÚN.  -10','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('76','Király Zsófia',to_date('70-AUG.  -23','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('77','Jónás Rebeka',to_date('73-JAN.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('78','Kovács Noémi',to_date('73-DEC.  -30','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('79','Antal Flóra',to_date('74-DEC.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('80','Barta Veronika',to_date('75-OKT.  -23','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('81','Faragó Petra',to_date('75-NOV.  -09','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('82','Balla Mercédesz',to_date('76-ÁPR.  -05','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('83','Fülöp Dóra',to_date('78-ÁPR.  -14','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('84','Török Anna',to_date('81-OKT.  -10','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('85','Pataki Vivien',to_date('82-JÚN.  -17','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('86','Szekeres Klaudia',to_date('83-AUG.  -26','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('87','Balázs Lili',to_date('84-ÁPR.  -15','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('88','Gál Barbara',to_date('84-AUG.  -17','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('89','Fazekas Regina',to_date('85-ÁPR.  -16','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('90','Orsós Dalma',to_date('85-ÁPR.  -18','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('91','Antal Zita',to_date('85-NOV.  -24','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('92','Pál Nikolett',to_date('86-AUG.  -23','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('93','Simon Vivien',to_date('87-MÁJ.  -07','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('94','Szalai Natália',to_date('89-SZEPT.-29','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('95','Váradi Evelin',to_date('92-AUG.  -20','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('96','Kerekes Virág',to_date('94-ÁPR.  -09','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('97','Oláh Réka',to_date('95-AUG.  -31','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('98','Barta Bernadett',to_date('95-NOV.  -04','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('99','Jónás Dorina',to_date('97-ÁPR.  -14','RR-MON-DD'));
Insert into C##ADATB.SZEMELYES_ADATOK (ID,NEV,SZULETESI_DATUM) values ('100','Orosz Mária',to_date('98-ÁPR.  -19','RR-MON-DD'));
REM INSERTING into C##ADATB.VALLALAT
SET DEFINE OFF;
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('1','Digital Intelligence Systems, LLC','Chantelle Workman','664283306','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('2','University of Chicago/IT Services','Zaine Powers','376467583','5');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('3','Galaxy Systems, Inc.','Kingston Easton','125007618','5');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('4','TransTech LLC','Eddison Fields','132876152','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('5','Matrix Resources','Kyal Mora','340995392','4');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('6','Yash Technologies','Evie-Mai Dean','948377827','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('7','Noble1','Ameena Arellano','734234738','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('8','Bluebeam Software, Inc.','Misbah Brookes','387060163','1');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('9','Genesis10','Amira Dennis','276888031','5');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('10','VanderHouwen & Associates, Inc.','Alena Ahmed','109582896','5');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('11','Maxonic, Inc.','Iona Sutherland','920635916','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('12','CSI (Consultant Specialists Inc.)','Mary Tillman','231829834','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('13','Eastridge Workforce Solutions','Umayr Duggan','734650775','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('14','Collabera','Alayah Stevens','132932128','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('15','Fahrenheit IT Staffing & Consulting','Cecilia Hudson','898213739','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('16','Avesta Computer Services','Samantha Moody','650629952','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('17','Amazon','Calista Head','361453390','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('18','ReqRoute, Inc','Willow Bull','638187944','2');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('19','Turnberry Solutions','Lucinda Dawson','751963708','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('20','Alpha Recruitment','Eshan Osborne','690987693','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('21','Etouch Systems Corp','Emelia Lancaster','564598055','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('22','Centizen','Payton Luna','620070215','1');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('23','Mygo Consulting','Cristian Bentley','24232819','3');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('24','Alpha Consulting Corp.','Tyler-Jay Singleton','819990547','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('25','Ascent','Ismaeel Pearce','936106096','2');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('26','Amerit Consulting','Meerab Rudd','216242848','4');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('27','Tellus Solutions','Teri Herman','804244313','0');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('28','Stratitude Inc','Carson Henderson','153775101','1');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('29','Xoriant Corporation','Ember Garner','678025933','1');
Insert into C##ADATB.VALLALAT (ID,NEVE,TULAJDONOS,JEGYZETT_TOKE,ERTEKELES) values ('30','iSpace, Inc','Mckenzie Huber','328038583','0');
REM INSERTING into C##ADATB.VEGZETTSEG
SET DEFINE OFF;
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('1','Egyetem, BSC','Bridgeport International Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('2','Technikum','Carmel Acadmey');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('3','Egyetem, MSC','Country Kids Club');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('4','Egyetem, MSC','Eagle Hill School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('5','Technikum','Easton Country Day School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('6','Egyetem, BSC','Fairfield County Sda School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('7','Szakközépiskola','Fraser Woods Montessori School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('8','Egyetem, BSC','Giant Steps Connecticut');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('9','Egyetem, BSC','Housatonic Valley Waldorf School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('10','Gimnázium','Landmark Preschool');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('11','Egyetem, BSC','Abercorn International School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('12','Gimnázium','Landmark Preschool');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('13','Szakközépiskola','Our Lady Of Grace Nursery School & Kindergarten');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('14','Egyetem, BSC','Our Lady Star Of The Sea School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('15','Egyetem, MSC','Pierrepont School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('16','Gimnázium','St Catherine Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('17','Egyetem, MSC','St Jude School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('18','Egyetem, BSC','St Mary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('19','Gimnázium','St Theresa School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('20','Technikum','St Vincent''s Special Needs Services');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('21','Egyetem, MSC','The Canaan Ridge School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('22','Technikum','The Greenwich Japanese School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('23','Egyetem, MSC','The Stanwich School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('24','Egyetem, BSC','Trinity Catholic Middle');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('25','Technikum','Villa Maria Education Center');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('26','Gimnázium','Whitby School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('27','Egyetem, BSC','Wooster School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('28','Egyetem, MSC','Little Wonders Of Baybrook Baptist');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('29','Technikum','Llano Christian Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('30','Gimnázium','Logos Preparatory School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('31','Egyetem, MSC','Macedonian Christian Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('32','Technikum','Mainland Christian Academy Inc.');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('33','Technikum','Marble Falls First Baptist Christian School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('34','Egyetem, BSC','Masterpiece Bilingual Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('35','Egyetem, BSC','Mesorah High School For Girls');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('36','Egyetem, BSC','Midland Classical Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('37','Egyetem, MSC','Montessori Country Day School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('38','Gimnázium','Montessori School Of Sugar Land');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('39','Egyetem, BSC','Morning Star Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('40','Egyetem, BSC','Mosaic Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('41','Technikum','All Saints Catholic School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('42','Gimnázium','American School For The Deaf');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('43','Egyetem, BSC','Brunswick School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('44','Technikum','Catholic Academy Of Bridgeport/st Raphael Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('45','Szakközépiskola','Christian Heritage School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('46','Egyetem, BSC','Christian Life Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('47','Gimnázium','Eagle Hill - Southport');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('48','Egyetem, MSC','Fairfield College Preparatory');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('49','Egyetem, BSC','Fairfield Country Day School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('50','Egyetem, MSC','Great Beginnings Montessori School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('51','Szakközépiskola','Greens Farms Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('52','Gimnázium','Greenwich Catholic School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('53','Gimnázium','Hudson Country Montessori School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('54','Egyetem, MSC','Immaculate High School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('55','Gimnázium','Immanuel Lutheran School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('56','Gimnázium','Kolbe Cathedral High School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('57','Technikum','Mooreland Hill School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('58','Technikum','Notre Dame Catholic High School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('59','Technikum','Pear Tree Point School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('60','Technikum','St Andrew Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('61','Technikum','St Ann Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('62','Szakközépiskola','St Augustine Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('63','Szakközépiskola','St Augustine School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('64','Egyetem, MSC','St Catherine Of Siena School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('65','Egyetem, BSC','St Cecilia Elementary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('66','Gimnázium','St Christopher School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('67','Egyetem, BSC','St Gregory The Great School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('68','Gimnázium','St James School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('69','Egyetem, BSC','St Joseph Elementary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('70','Gimnázium','St Joseph High School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('71','Egyetem, MSC','St Joseph School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('72','Technikum','St Lawrence Elementary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('73','Gimnázium','St Mary Elementary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('74','Egyetem, BSC','St Rose Of Lima School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('75','Szakközépiskola','St Thomas Aquinas Elementary School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('76','Egyetem, MSC','The Children''s School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('77','Egyetem, BSC','The Long Ridge School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('78','Egyetem, MSC','The Mead School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('79','Egyetem, BSC','The Montessori School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('80','Szakközépiskola','Trinity Catholic High School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('81','Egyetem, MSC','Assumption Early Learning Ce');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('82','Szakközépiskola','Avon Old Farms School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('83','Technikum','Ben Bronz Academy');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('84','Szakközépiskola','Clinical Day School - Manchester Memorial Hospital');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('85','Gimnázium','Community Child Guidance Clinic');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('86','Gimnázium','Enfield Montessori School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('87','Szakközépiskola','Ethel Walker School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('88','Szakközépiskola','Gengras Center/univ Of St Joseph');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('89','Egyetem, BSC','Hartford Area Sda School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('90','Egyetem, BSC','Hebrew High School Of New England');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('91','Egyetem, MSC','Heritage Christian School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('92','Egyetem, MSC','Intensive Education Academy In');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('93','Egyetem, BSC','Kingswood-oxford School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('94','Egyetem, MSC','Miss Porter''s School');
Insert into C##ADATB.VEGZETTSEG (ID,NEV,INTEZMENY) values ('95','Technikum','Montessori School Greater Hartford');
--------------------------------------------------------
--  DDL for Index ALLAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."ALLAS_PK" ON "C##ADATB"."ALLAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIAK_FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."DIAK_FELHASZNALO_PK" ON "C##ADATB"."DIAK_FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIAKSZOVETKEZET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."DIAKSZOVETKEZET_PK" ON "C##ADATB"."DIAKSZOVETKEZET" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EGYEB_FELTETELEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."EGYEB_FELTETELEK_PK" ON "C##ADATB"."EGYEB_FELTETELEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FIOKADATOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."FIOKADATOK_PK" ON "C##ADATB"."FIOKADATOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HELYSZIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."HELYSZIN_PK" ON "C##ADATB"."HELYSZIN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIRDETO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."HIRDETO_PK" ON "C##ADATB"."HIRDETO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISKOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."ISKOLA_PK" ON "C##ADATB"."ISKOLA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KAPCSOLAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."KAPCSOLAT_PK" ON "C##ADATB"."KAPCSOLAT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUNKAKOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."MUNKAKOR_PK" ON "C##ADATB"."MUNKAKOR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NORMAL_FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."NORMAL_FELHASZNALO_PK" ON "C##ADATB"."NORMAL_FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEMELYES_ADATOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."SZEMELYES_ADATOK_PK" ON "C##ADATB"."SZEMELYES_ADATOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VALLALAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."VALLALAT_PK" ON "C##ADATB"."VALLALAT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VEGZETTSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."VEGZETTSEG_PK" ON "C##ADATB"."VEGZETTSEG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALLAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."ALLAS_PK" ON "C##ADATB"."ALLAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIAK_FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."DIAK_FELHASZNALO_PK" ON "C##ADATB"."DIAK_FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIAKSZOVETKEZET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."DIAKSZOVETKEZET_PK" ON "C##ADATB"."DIAKSZOVETKEZET" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EGYEB_FELTETELEK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."EGYEB_FELTETELEK_PK" ON "C##ADATB"."EGYEB_FELTETELEK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FIOKADATOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."FIOKADATOK_PK" ON "C##ADATB"."FIOKADATOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HELYSZIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."HELYSZIN_PK" ON "C##ADATB"."HELYSZIN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIRDETO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."HIRDETO_PK" ON "C##ADATB"."HIRDETO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ISKOLA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."ISKOLA_PK" ON "C##ADATB"."ISKOLA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KAPCSOLAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."KAPCSOLAT_PK" ON "C##ADATB"."KAPCSOLAT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MUNKAKOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."MUNKAKOR_PK" ON "C##ADATB"."MUNKAKOR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index NORMAL_FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."NORMAL_FELHASZNALO_PK" ON "C##ADATB"."NORMAL_FELHASZNALO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SZEMELYES_ADATOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."SZEMELYES_ADATOK_PK" ON "C##ADATB"."SZEMELYES_ADATOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VALLALAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."VALLALAT_PK" ON "C##ADATB"."VALLALAT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VEGZETTSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##ADATB"."VEGZETTSEG_PK" ON "C##ADATB"."VEGZETTSEG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ALLAS
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."ALLAS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."ALLAS" MODIFY ("ALLAS_NEVE" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."ALLAS" ADD CONSTRAINT "ALLAS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIAK_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" MODIFY ("FIOKADAT_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" ADD CONSTRAINT "DIAK_FELHASZNALO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIAKSZOVETKEZET
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZET" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZET" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZET" ADD CONSTRAINT "DIAKSZOVETKEZET_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIAKSZOVETKEZETNEL_VAN
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" MODIFY ("DIAKSZOVETKEZET_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" MODIFY ("DIAK_FELHASZNALO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EGYEB_FELTETELEK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."EGYEB_FELTETELEK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."EGYEB_FELTETELEK" ADD CONSTRAINT "EGYEB_FELTETELEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FIOKADATOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."FIOKADATOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."FIOKADATOK" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."FIOKADATOK" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."FIOKADATOK" MODIFY ("ADMIN_E" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."FIOKADATOK" ADD CONSTRAINT "FIOKADATOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HELYSZIN
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."HELYSZIN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."HELYSZIN" ADD CONSTRAINT "HELYSZIN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HIRDETO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."HIRDETO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."HIRDETO" MODIFY ("FIOKADATOK_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."HIRDETO" MODIFY ("VALLALAT_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."HIRDETO" ADD CONSTRAINT "HIRDETO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ISKOLA
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."ISKOLA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."ISKOLA" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."ISKOLA" ADD CONSTRAINT "ISKOLA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JELENTKEZOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."JELENTKEZOK" MODIFY ("ALLAS_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."JELENTKEZOK" MODIFY ("NORMAL_FELHASZNALO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KAPCSOLAT
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."KAPCSOLAT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."KAPCSOLAT" ADD CONSTRAINT "KAPCSOLAT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MUNKAKOR
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."MUNKAKOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."MUNKAKOR" ADD CONSTRAINT "MUNKAKOR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NORMAL_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" MODIFY ("FIOKADATOK_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" ADD CONSTRAINT "NORMAL_FELHASZNALO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGISZTRALT_ALLASOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."REGISZTRALT_ALLASOK" MODIFY ("ALLAS_ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."REGISZTRALT_ALLASOK" MODIFY ("DIAKSZOVETKEZET_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SZEMELYES_ADATOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."SZEMELYES_ADATOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."SZEMELYES_ADATOK" ADD CONSTRAINT "SZEMELYES_ADATOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VALLALAT
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."VALLALAT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."VALLALAT" MODIFY ("NEVE" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."VALLALAT" ADD CONSTRAINT "VALLALAT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VEGZETTSEG
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."VEGZETTSEG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##ADATB"."VEGZETTSEG" ADD CONSTRAINT "VEGZETTSEG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALLAS
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."ALLAS" ADD CONSTRAINT "ALLAS_FK1" FOREIGN KEY ("MUNKAKOR_ID")
	  REFERENCES "C##ADATB"."MUNKAKOR" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."ALLAS" ADD CONSTRAINT "ALLAS_FK2" FOREIGN KEY ("HIRDETO_ID")
	  REFERENCES "C##ADATB"."HIRDETO" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."ALLAS" ADD CONSTRAINT "ALLAS_FK3" FOREIGN KEY ("KAPCSOLAT_ID")
	  REFERENCES "C##ADATB"."KAPCSOLAT" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."ALLAS" ADD CONSTRAINT "ALLAS_FK4" FOREIGN KEY ("HELYSZIN_ID")
	  REFERENCES "C##ADATB"."HELYSZIN" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIAK_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" ADD CONSTRAINT "DIAK_FELHASZNALO_FK1" FOREIGN KEY ("FIOKADAT_ID")
	  REFERENCES "C##ADATB"."FIOKADATOK" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" ADD CONSTRAINT "DIAK_FELHASZNALO_FK2" FOREIGN KEY ("ISKOLA_ID")
	  REFERENCES "C##ADATB"."ISKOLA" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."DIAK_FELHASZNALO" ADD CONSTRAINT "DIAK_FELHASZNALO_FK3" FOREIGN KEY ("VALLALAT_ID")
	  REFERENCES "C##ADATB"."VALLALAT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIAKSZOVETKEZETNEL_VAN
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" ADD CONSTRAINT "DIAKSZOVETKEZETNEL_VAN_FK1" FOREIGN KEY ("DIAKSZOVETKEZET_ID")
	  REFERENCES "C##ADATB"."DIAKSZOVETKEZET" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."DIAKSZOVETKEZETNEL_VAN" ADD CONSTRAINT "DIAKSZOVETKEZETNEL_VAN_FK2" FOREIGN KEY ("DIAK_FELHASZNALO_ID")
	  REFERENCES "C##ADATB"."DIAK_FELHASZNALO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FIOKADATOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."FIOKADATOK" ADD CONSTRAINT "FIOKADATOK_FK1" FOREIGN KEY ("SZEMELYES_ADATOK_ID")
	  REFERENCES "C##ADATB"."SZEMELYES_ADATOK" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HIRDETO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."HIRDETO" ADD CONSTRAINT "HIRDETO_FK1" FOREIGN KEY ("FIOKADATOK_ID")
	  REFERENCES "C##ADATB"."FIOKADATOK" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."HIRDETO" ADD CONSTRAINT "HIRDETO_FK2" FOREIGN KEY ("VALLALAT_ID")
	  REFERENCES "C##ADATB"."VALLALAT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JELENTKEZOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."JELENTKEZOK" ADD CONSTRAINT "JELENTKEZOK_FK1" FOREIGN KEY ("ALLAS_ID")
	  REFERENCES "C##ADATB"."ALLAS" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."JELENTKEZOK" ADD CONSTRAINT "JELENTKEZOK_FK2" FOREIGN KEY ("NORMAL_FELHASZNALO_ID")
	  REFERENCES "C##ADATB"."NORMAL_FELHASZNALO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUNKAKOR
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."MUNKAKOR" ADD CONSTRAINT "MUNKAKOR_FK1" FOREIGN KEY ("EGYEB_FELTETELEK_ID")
	  REFERENCES "C##ADATB"."EGYEB_FELTETELEK" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NORMAL_FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" ADD CONSTRAINT "NORMAL_FELHASZNALO_FK1" FOREIGN KEY ("FIOKADATOK_ID")
	  REFERENCES "C##ADATB"."FIOKADATOK" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" ADD CONSTRAINT "NORMAL_FELHASZNALO_FK2" FOREIGN KEY ("VEGZETTSEG_ID")
	  REFERENCES "C##ADATB"."VEGZETTSEG" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."NORMAL_FELHASZNALO" ADD CONSTRAINT "NORMAL_FELHASZNALO_FK3" FOREIGN KEY ("VALLALAT_ID")
	  REFERENCES "C##ADATB"."VALLALAT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REGISZTRALT_ALLASOK
--------------------------------------------------------

  ALTER TABLE "C##ADATB"."REGISZTRALT_ALLASOK" ADD CONSTRAINT "REGISZTRALT_ALLASOK_FK1" FOREIGN KEY ("ALLAS_ID")
	  REFERENCES "C##ADATB"."ALLAS" ("ID") ENABLE;
  ALTER TABLE "C##ADATB"."REGISZTRALT_ALLASOK" ADD CONSTRAINT "REGISZTRALT_ALLASOK_FK2" FOREIGN KEY ("DIAKSZOVETKEZET_ID")
	  REFERENCES "C##ADATB"."DIAKSZOVETKEZET" ("ID") ENABLE;
