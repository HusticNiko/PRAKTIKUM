SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS ZBIRKA;
DROP TABLE IF EXISTS SLICICA;
DROP TABLE IF EXISTS UPORABNIKOVA_ZBIRKA;
DROP TABLE IF EXISTS UPORABNIK;
DROP TABLE IF EXISTS MENJAVA;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE ZBIRKA(
ID_ZBIRKA INTEGER NOT NULL,
NAZIV VARCHAR(20) NOT NULL,
ST_VSEH_SLICIC INTEGER NOT NULL,
LETO INTEGER NOT NULL
);
ALTER TABLE ZBIRKA
ADD CONSTRAINT PK_ZBIRKA PRIMARY KEY (ID_ZBIRKA);

CREATE TABLE UPORABNIK(
ID_UPORABNIK INTEGER NOT NULL,
IME VARCHAR(20) NOT NULL,
PRIIMEK VARCHAR(20) NOT NULL,
E_MAIL VARCHAR(20) NOT NULL,
ULICA VARCHAR(20) NOT NULL,
KRAJ VARCHAR(20) NOT NULL,
DRŽAVA VARCHAR(20) NOT NULL
);
ALTER TABLE UPORABNIK
ADD CONSTRAINT PK_UPORABNIK PRIMARY KEY (ID_UPORABNIK);

CREATE TABLE UPORABNIKOVA_ZBIRKA(
ID_UPORABNIKOVA_ZBIRKA INTEGER NOT NULL,
UPORABNIK_IDUPORABNIK INTEGER NOT NULL,
ZBIRKA_IDZBIRKA INTEGER NOT NULL
);
ALTER TABLE UPORABNIKOVA_ZBIRKA
ADD CONSTRAINT PK_UPORABNIKOVA_ZBIRKA PRIMARY KEY (ID_UPORABNIKOVA_ZBIRKA);

ALTER TABLE UPORABNIKOVA_ZBIRKA
ADD CONSTRAINT TK_UPORABNIKOVA_ZBIRKA_ID_ FOREIGN KEY 
(ZBIRKA_IDZBIRKA) REFERENCES ZBIRKA(ID_ZBIRKA);

ALTER TABLE UPORABNIKOVA_ZBIRKA
ADD CONSTRAINT TK_UPORABNIKOVA_ZBIRKA2_ID_ FOREIGN KEY 
(UPORABNIK_IDUPORABNIK) REFERENCES UPORABNIK(ID_UPORABNIK);


CREATE TABLE SLICICA(
ID_SLICICA INTEGER NOT NULL,
NAZIV VARCHAR(20) NOT NULL,
STEVILO INTEGER NOT NULL,
ZBIRKA_IDZBIRKA INTEGER NOT NULL,
UPORABNIKOVA_ZBIRKA_IDUPORABNIKOVA_ZBIRKA INTEGER NOT NULL
);
ALTER TABLE SLICICA
ADD CONSTRAINT PK_SLICICA PRIMARY KEY (ID_SLICICA);

ALTER TABLE SLICICA
ADD CONSTRAINT TK_SLICICA_ID_ FOREIGN KEY 
(ZBIRKA_IDZBIRKA) REFERENCES ZBIRKA(ID_ZBIRKA);

ALTER TABLE SLICICA
ADD CONSTRAINT TK_SLICICA2_ID_ FOREIGN KEY 
(UPORABNIKOVA_ZBIRKA_IDUPORABNIKOVA_ZBIRKA) REFERENCES UPORABNIKOVA_ZBIRKA(ID_UPORABNIKOVA_ZBIRKA);


CREATE TABLE MENJAVA(
ID_MENJAVA INTEGER NOT NULL,
NACIN_MENJAVE ENUM('ZA DENAR','ZA SLICICO') NOT NULL,
CENA FLOAT(5) NOT NULL,
ZBIRKA_IDZBIRKA INTEGER NOT NULL,
UPORABNIK_IDUPORABNIK INTEGER NOT NULL,
SLICICA_IDSLICICA INTEGER NOT NULL
);
ALTER TABLE MENJAVA
ADD CONSTRAINT PK_MENJAVA PRIMARY KEY (ID_MENJAVA);

ALTER TABLE MENJAVA
ADD CONSTRAINT TK_MENJAVA_ID_ FOREIGN KEY 
(ZBIRKA_IDZBIRKA) REFERENCES ZBIRKA(ID_ZBIRKA);

ALTER TABLE MENJAVA
ADD CONSTRAINT TK_MENJAVA2_ID_ FOREIGN KEY 
(UPORABNIK_IDUPORABNIK) REFERENCES UPORABNIK(ID_UPORABNIK);

ALTER TABLE MENJAVA
ADD CONSTRAINT TK_MENJAVA3_ID_ FOREIGN KEY 
(SLICICA_IDSLICICA) REFERENCES SLICICA(ID_SLICICA);

