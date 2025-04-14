INSERT INTO country (country, country_short) VALUES
('Poland', 'PL'),    --1 
('Germany', 'DE'),  -- 2
('USA', 'US'),       --3 
('Italy', 'IT'),     --4 
('Spain', 'ES'),    -- 5 
('Czechia', 'CZ'), --  6
('Japan', 'JP'),    -- 7
('China', 'CN'),    -- 8 
('Brazil', 'BR');   -- 9


INSERT INTO authors (first_name, last_name, birth_date, country_id, biography) VALUES
('Adam', 'Mickiewicz', '1798-12-24', 1, 'Polski poeta '),
('Henryk', 'Sienkiewicz', '1846-05-05', 1, 'Polski pisarz'),
('Joanne', 'Rowling', '1965-07-31', 5, 'Autorka Harry'ego Pottera'),
('Bartsz', 'Maniek', '2000-01-01', 1, 'Autor Dziady'),
('Marek', 'Cwaniak', '1800-02-12', 6, 'Amerykański pisarz'),
('Magdalena', 'Gessler', '1775-12-16', 4, Angielska pisarka')
('Stephen', 'Carry', '1966-09-21', 4, 'Amerykański autor'),
('Marcin', 'Gortat', '1899-07-21', 3, 'Amerykański pisarz'),
('Cristiano', 'Ronaldo', '1985-02-05', 10, 'Portugalski pisarz'),
('Baraka', 'Kusadashi', '1999-05-06', 7, 'Japoński pisarz')


INSERT INTO books (title, isbn, publication_year, publisher, genre, status_id) VALUES
('Jak wytresowac smoka', '9788373274567', 1200, 'WSiP', 'Poemat', 1),
('Gotuj z Mańkiem', '9788373271234', 1896, 'Nowa Era', 'Dramat', 1),
('Harry Potter', '9780747532743', 1997, 'Nowa Era', 'Fantasy', 1),
('Python', '9780451524935', 1949, 'WSiP', 'Dramat', 1),
('Zostań piłkarzem', '9780143039563', 1876, 'WSiP', 'Przygoda', 1),
('Weź się do roboty', '9780141439518', 1813, 'WSiP', 'Romans', 1),
('Idź spać', '9780385121675', 1977, 'Nowa Era', 'Komedia', 1),
('Nic ważnego', '9780684801223', 1952, 'WSiP', 'Przygoda', 1),
('Siedząc na tronie', '9780060883287', 1967, 'WSiP', 'Komedia', 1),
('Gałka oczna', '9780375704024', 1987, 'Nowa Era', 'Romans', 1);

-- Połączenie autorów z książkami (authorsBooks)
INSERT INTO authorsBooks (author_id, book_id) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5),
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9), 
(10, 10);

-- USERS
INSERT INTO [user] (username, password_hash, email, role, status_id) VALUES
('admin1', '12ed324d45f', 'admin1@sql.com', 'admin', 3),
('lib1', 'hdasdsdafsdfds', 'lib1@sql.com', 'librarian', 3),
('user1', '3487r6dgs8', 'user1@sql.com', 'user', 3),
('lib2', '92348gj', 'lib2@sql.com', 'user', 3),
('user3', '256gdv6', 'user3@sql.com', 'user', 3),
('user4', '90sdufvjs9u', 'user4@sql.com', 'user', 3),
('user5', '37chyj592398u', 'user5@sql.com', 'user', 3),
('user6', '52347rgbs', 'user6@sql.com', 'user', 3),
('user7', 'jn3i45f7', 'user7@sql.com', 'user', 3),
('user8', '2y78fgb2374', 'user8@sql.com', 'user', 3);

-- CZYTELNICY
INSERT INTO readers (user_id, first_name, last_name, address, phone, status_id) VALUES
(3, 'Jan', 'Kowalski', 'ul. Kwiatowa 1', '123456789', 3),
(4, 'Anna', 'Nowak', 'ul. Leśna 5', '987654321', 3),
(5, 'Piotr', 'Zalewski', 'ul. Polna 2', '564738291', 3),
(6, 'Marysia', 'Wiśniewska', 'ul. Łąkowa 3', '837263519', 3),
(7, 'Krzysztof', 'Krawczyk', 'ul. Wiosenna 8', '987345123', 3),
(8, 'Magda', 'Maj', 'ul. Zimowa 9', '912837465', 3),
(9, 'Tomasz', 'Lis', 'ul. Politechniki Warszawskiej 4', '654987321', 3),
(10, 'Zofia', 'Bąk', 'ul. Letnia 6', '321789654', 3),
(11, 'Michał', 'Kowal', 'ul. Słoneczna 7', '159357258', 3),
(12, 'Ewa', 'Grabowska', 'ul. Radosna 10', '753159456', 3);

-- WYPOZYCZENIA
INSERT INTO borrowing (book_id, readers_id, due, status_id) VALUES
(1, 1, 14, 1),
(2, 2, 14, 1),
(3, 3, 14, 1),
(4, 4, 14, 1),
(5, 5, 14, 1),
(6, 6, 14, 1),
(7, 7, 14, 1),
(8, 8, 14, 1),
(9, 9, 14, 1),
(10, 10, 14, 1);

-- REZERWACJE
INSERT INTO reservation (book_id, readers_id, status_id) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 1, 1);

-- KARY
INSERT INTO fine (borrowing_id, amount, status_id) VALUES
(1, 5.70, 1),
(2, 10.22, 1),
(3, 7.30, 1),
(4, 6.55, 1),
(5, 8.24, 1),
(6, 9.11, 1),
(7, 4.01, 1),
(8, 3.11, 1),
(9, 6.55, 1),
(10, 2.00, 1)
