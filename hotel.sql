# Hotel

# Stvaranje baze podataka
DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel default charset utf8mb4;
USE hotel;

# Stvaranje tablica
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
    nocenje INT,
    datum_prijave DATETIME NOT NULL,
    datum_odjave DATETIME
);

CREATE TABLE nocenje(
    sifra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    soba INT NOT NULL,
    cijena_ukupno DECIMAL(18,2)
);

# Stvaranje vanjskih ključeva
ALTER TABLE rezervacija ADD FOREIGN KEY (gost) REFERENCES gost(sifra);
ALTER TABLE rezervacija ADD FOREIGN KEY (nocenje) REFERENCES nocenje(sifra);

ALTER TABLE nocenje ADD FOREIGN KEY (soba) REFERENCES soba(sifra);

# Unos podataka
INSERT INTO soba
(sifra, broj, broj_kreveta, opis, cijena_nocenja)
VALUES
(null, 101, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 102, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 103, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 104, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 105, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 106, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 107, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 108, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 109, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 110, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 111, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 112, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 201, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 202, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 203, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 204, 1, 'Krevet za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 90),
(null, 205, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 206, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 207, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 208, 2, 'Dva kreveta za jednu osobu veličine 120x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 110),
(null, 209, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 210, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 211, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130),
(null, 212, 1, 'Krevet za dvije osobe veličine 200x210 cm, klima-uređaj, TV, aparat za kavu, minibar, Wi-Fi', 130);

INSERT INTO gost
(sifra, ime, prezime, datum_rodenja, drzava, oib, broj_putovnice)
VALUES
# 1
(null, 'Marko', 'Kozina', '1990-04-21', 'Republika Hrvatska', '21448854749', null),
# 2
(null, 'Ena', 'Kolar', '1993-02-12', 'Republika Hrvatska', '02314403305', null),

# 3
(null, 'Bruno', 'Mikačić', '1982-07-19', 'Republika Hrvatska', '00867019409', null),
# 4
(null, 'Ines', 'Sabolić', '1983-04-03', 'Republika Hrvatska', '73293058232', null),

# 5
(null, 'Layton', 'Degross', '1995-10-15', 'Sjedinjene Američke Države', null, null),
# 6
(null, 'Demi', 'Degross', '1993-01-19', 'Sjedinjene Američke Države', null, null),

# 7
(null, 'Evgeniy', 'Dmitriev', '1992-09-26', 'Ruska Federacija', null, null),
# 8
(null, 'Polina', 'Dmitrieva', '1989-05-17', 'Ruska Federacija', null, null),

# 9
(null, 'Paris', 'Crotteau', '1983-05-24', 'Kraljevina Belgija', null, 'TA493782'),

# 10
(null, 'Jaroslav', 'Macek', '1975-08-21', 'Češka Republika', null, '99009054'),

# 11
(null, 'Janiyah', 'Bandarra', '1991-08-09', 'Savezna Republika Njemačka', null, 'C01X00T47'),

# 12
(null, 'Renars', 'Zvaigzne','1978-04-07', 'Republika Latvija', null, null);

INSERT INTO rezervacija
(sifra, gost, nocenje, datum_prijave, datum_odjave)
VALUES
# Marko Kozina 1, Ena Kolar 2
(null, 1, null, '2022-05-23', '2022-05-26'),
(null, 2, null, '2022-05-23', '2022-05-26'),

# Bruno Mikačić 3, Ines Sabolić 4
(null, 3, null, '2021-12-12', '2021-12-14'),
(null, 4, null, '2021-12-12', '2021-12-14'),

# Layton Degross 5, Demi Degross 6
(null, 5, null, '2022-06-10', null),
(null, 6, null, '2022-06-10', null),

# Evgeniy Dmitriev 7, Polina Dmitrieva 8
(null, 7, null, '2022-06-15', null),
(null, 8, null, '2022-06-15', null),

# Paris Crotteau 9
(null, 9, null, '2022-02-04', '2022-02-10'),

# Jaroslav Macek 10
(null, 10, null, '2022-05-20', '2022-05-23'),

# Janiyah Bandarra 11
(null, 11, null, '2022-05-24', '2022-05-25'),

# Renars Zvaigzne 12
(null, 12, null, '2022-06-02', null);

# Unos noćenja za ostvarene rezervacije
INSERT INTO nocenje
(sifra, soba, cijena_ukupno)
VALUES
# gost 1, 2
(null, 9, 780),

# gost 3, 4
(null, 10, 520),

# gost 9
(null, 1, 900),

# gost 10
(null, 2, 270),

# gost 11
(null, 13, 90);

# gost 1, 2
UPDATE rezervacija
SET nocenje = 1
WHERE sifra = 1;
UPDATE rezervacija
SET nocenje = 1
WHERE sifra = 2;

# gost 3, 4
UPDATE rezervacija
SET nocenje = 2
WHERE sifra = 3;
UPDATE rezervacija
SET nocenje = 2
WHERE sifra = 4;

# gost 9
UPDATE rezervacija
SET nocenje = 3
WHERE sifra = 9;

# gost 10
UPDATE rezervacija
SET nocenje = 4
WHERE sifra = 10;

# gost 11
UPDATE rezervacija
SET nocenje = 5
WHERE sifra = 11;