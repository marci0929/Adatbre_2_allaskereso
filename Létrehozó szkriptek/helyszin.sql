DROP TABLE IF EXISTS helyszin;
CREATE TABLE helyszin(
   id                   INTEGER  NOT NULL PRIMARY KEY 
  ,orszag               VARCHAR(50) NOT NULL
  ,varos                VARCHAR(50) NOT NULL
  ,tavolrol_vegezheto_e BOOLEAN  NOT NULL
);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (1,'Magyarország','Budapest',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (2,'Magyarország','Debrecen',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (3,'Magyarország','Szeged',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (4,'Magyarország','Pécs',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (5,'Magyarország','Sopron',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (6,'Magyarország','Szombathely',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (7,'Magyarország','Kecskemét',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (8,'Magyarország','Siófok',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (9,'Magyarország','Miskolc',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (10,'Magyarország','Győr',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (11,'Magyarország','Szolnok',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (12,'Magyarország','Kaposvár',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (13,'Magyarország','Veszprém',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (14,'Magyarország','Békéscsaba',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (15,'Magyarország','Székesfehérvár',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (16,'Magyarország','Baja',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (17,'Magyarország','Cegléd',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (18,'Magyarország','Csongrád',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (19,'Magyarország','Gyula',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (20,'Magyarország','Esztergom',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (21,'Magyarország','Dunaújváros',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (22,'Magyarország','Dunakeszi',1);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (23,'Magyarország','Érd',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (24,'Magyarország','Hatvan',0);
INSERT INTO helyszin(id,orszag,varos,tavolrol_vegezheto_e) VALUES (25,'Magyarország','Hódmezővásárhely',0);
