DROP TABLE IF EXISTS iskola;
CREATE TABLE iskola(
   id                INTEGER  NOT NULL PRIMARY KEY 
  ,nev               VARCHAR(50) NOT NULL
  ,varhato_befejezes INTEGER  NOT NULL
);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (1,'Állatorvostudományi Egyetem',2024);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (2,'Bolyai János Gimnázium',2023);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (3,'Kandó Kálmán Szakközépiskola',2025);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (4,'Állatorvostudományi Egyetem',2026);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (5,'Szegedi Tudományegyetem',2023);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (6,'Szegedi Tudományegyetem',2026);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (7,'Bolyai János Gimnázium',2024);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (8,'Szegedi Tudományegyetem',2022);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (9,'Kandó Kálmán Szakközépiskola',2023);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (10,'Állatorvostudományi Egyetem',2027);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (11,'Állatorvostudományi Egyetem',2022);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (12,'Bolyai János Gimnázium',2024);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (13,'Szegedi Tudományegyetem',2022);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (14,'Kandó Kálmán Szakközépiskola',2025);
INSERT INTO iskola(id,nev,varhato_befejezes) VALUES (15,'Állatorvostudományi Egyetem',2026);
