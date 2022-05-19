# Hotel

DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel default charset utf8mb4;
USE hotel;

CREATE TABLE soba(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    broj INT NOT NULL,
    broj_kreveta INT NOT NULL,
    opis TEXT,
    cijena_nocenja DECIMAL(18,2)
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

CREATE TABLE rezervacija(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    gost INT NOT NULL,
    nocenje INT NOT NULL,
    datum_prijave DATETIME NOT NULL,
    datum_odjave DATETIME
);

CREATE TABLE nocenje(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    soba INT NOT NULL,
    cijena_ukupno DECIMAL(18,2)
);

ALTER TABLE rezervacija ADD FOREIGN KEY (gost) REFERENCES gost(sifra);
ALTER TABLE rezervacija ADD FOREIGN KEY (nocenje) REFERENCES nocenje(sifra);

ALTER TABLE nocenje ADD FOREIGN KEY (soba) REFERENCES soba(sifra);