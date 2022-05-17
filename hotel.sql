# Hotel

DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel default charset utf8mb4;
USE hotel;

CREATE TABLE soba(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    broj INT NOT NULL,
    broj_kreveta INT NOT NULL,
    velicina_kreveta VARCHAR(10),
    cijena_nocenja DECIMAL(18,2),
    zauzeta BOOLEAN
);

CREATE TABLE gost(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(50) NOT NULL,
    prezime VARCHAR(50) NOT NULL,
    datum_rodenja DATETIME NOT NULL,
    drzava VARCHAR(50) NOT NULL,
    oib CHAR(11),
    broj_putovnice VARCHAR(50)
);

CREATE TABLE nocenje(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    gost INT NOT NULL,
    soba INT NOT NULL,
    datum_prijave DATETIME NOT NULL,
    datum_odjave DATETIME,
    cijena_ukupno DECIMAL(18,2)
);

ALTER TABLE nocenje ADD FOREIGN KEY (gost) REFERENCES gost(sifra);
ALTER TABLE nocenje ADD FOREIGN KEY (soba) REFERENCES soba(sifra);