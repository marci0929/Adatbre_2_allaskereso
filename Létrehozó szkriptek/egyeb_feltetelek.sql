DROP TABLE IF EXISTS egyeb_feltetelek;
CREATE TABLE egyeb_feltetelek(
   id                  INTEGER  NOT NULL PRIMARY KEY 
  ,kell_jogsi          BOOLEAN  NOT NULL
  ,munkatapasztalat_ev INTEGER  NOT NULL
  ,egyeb_feltetelek    VARCHAR(50)
);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (1,0,3,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (2,1,1,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (3,0,5,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (4,1,2,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (5,1,3,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (6,1,4,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (7,0,4,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (8,0,1,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (9,0,3,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (10,1,1,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (11,0,3,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (12,0,5,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (13,1,1,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (14,0,1,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (15,1,0,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (16,1,3,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (17,0,5,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (18,1,0,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (19,1,3,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (20,1,4,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (21,0,0,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (22,0,2,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (23,0,0,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (24,0,0,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (25,1,0,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (26,0,4,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (27,0,2,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (28,1,4,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (29,0,2,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (30,0,3,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (31,0,4,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (32,0,4,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (33,0,5,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (34,1,5,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (35,1,1,'Legalább egy előző munkahely');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (36,1,5,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (37,0,1,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (38,0,5,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (39,0,2,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (40,1,4,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (41,1,3,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (42,0,1,'Aktív hallgatói jogviszony');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (43,1,0,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (44,1,2,NULL);
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (45,0,4,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (46,0,3,'Érvényes számlaszám');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (47,0,1,'Szakképesítés');
INSERT INTO egyeb_feltetelek(id,kell_jogsi,munkatapasztalat_ev,egyeb_feltetelek) VALUES (48,1,3,'Aktív hallgatói jogviszony');
