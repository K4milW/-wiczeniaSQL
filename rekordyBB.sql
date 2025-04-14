
-- Tabela: country
INSERT INTO country (country, country_short) VALUES
('Francja', 'FR'),
('Portugalia', 'PT'),
('Norwegia', 'NO'),
('Szwecja', 'SE'),
('Ukraina', 'UA'),
('Słowacja', 'SK'),
('Węgry', 'HU'),
('Austria', 'AT'),
('Holandia', 'NL'),
('Grecja', 'GR');

-- Tabela: authors
INSERT INTO authors (first_name, last_name, birth_date, country_id, biography) VALUES
('Olga', 'Tokarczuk', '1962-01-29', 1, 'Polska pisarka i eseistka'),
('Andrzej', 'Sapkowski', '1948-06-21', 1, 'Twórca Wiedźmina'),
('Wisława', 'Szymborska', '1923-07-02', 1, 'Poetka i noblistka'),
('Czesław', 'Miłosz', '1911-06-30', 1, 'Poeta i eseista'),
('Bruno', 'Schulz', '1892-07-12', 1, 'Pisarz i malarz'),
('Bolesław', 'Prus', '1847-08-20', 1, 'Pisarz pozytywistyczny'),
('Eliza', 'Orzeszkowa', '1841-06-06', 1, 'Pisarka epoki pozytywizmu'),
('Tadeusz', 'Różewicz', '1921-10-09', 1, 'Poeta współczesny'),
('Julian', 'Tuwim', '1894-09-13', 1, 'Poeta i satyryk'),
('Maria', 'Konopnicka', '1842-05-23', 1, 'Pisarka, poetka i publicystka');

-- Tabela: books
INSERT INTO books (title, isbn, publication_year, publisher, genre, status_id) VALUES
('Lalka', '9788373271111', 1890, 'PWN', 'Powieść', 1),
('Quo Vadis', '9788373272222', 1896, 'Czytelnik', 'Historyczna', 1),
('Pan Tadeusz', '9788373273333', 1834, 'Znak', 'Epopeja', 1),
('Sklepy cynamonowe', '9788373274444', 1934, 'Literackie', 'Opowiadania', 1),
('Wiedźmin: Ostatnie życzenie', '9788373275555', 1993, 'SuperNOWA', 'Fantasy', 1),
('Prowadź swój pług przez kości umarłych', '9788373276666', 2009, 'Literackie', 'Kryminał', 1),
('Lokomotywa', '9788373277777', 1938, 'Nasza Księgarnia', 'Wiersze', 1),
('Na całym świecie był chaos', '9788373278888', 1969, 'Znak', 'Esej', 1),
('Kamienie na szaniec', '9788373279999', 1943, 'Nasza Księgarnia', 'Reportaż', 1),
('Balladyna', '9788373270001', 1839, 'PWN', 'Dramat', 1);

-- Tabela: authorsBooks
INSERT INTO authorsBooks (author_id, book_id) VALUES
(11, 21),
(12, 25),
(13, 27),
(14, 28),
(15, 24),
(16, 22),
(17, 23),
(18, 26),
(19, 29),
(20, 30);

-- Tabela: user
INSERT INTO [user] (username, password_hash, email, role, status_id) VALUES
('admin2', 'abc123hash', 'admin2@sql.com', 'admin', 3),
('lib3', 'hashlib3', 'lib3@sql.com', 'librarian', 3),
('user9', 'passwdhash9', 'user9@sql.com', 'user', 3),
('user10', 'hash10', 'user10@sql.com', 'user', 3),
('czytelnik1', 'cz1hash', 'czytelnik1@sql.com', 'user', 3),
('czytelnik2', 'cz2hash', 'czytelnik2@sql.com', 'user', 3),
('czytelnik3', 'cz3hash', 'czytelnik3@sql.com', 'user', 3),
('czytelnik4', 'cz4hash', 'czytelnik4@sql.com', 'user', 3),
('czytelnik5', 'cz5hash', 'czytelnik5@sql.com', 'user', 3),
('czytelnik6', 'cz6hash', 'czytelnik6@sql.com', 'user', 3);

-- Tabela: readers
INSERT INTO readers (user_id, first_name, last_name, address, phone, status_id) VALUES
(13, 'Karolina', 'Sosna', 'ul. Cisowa 12', '123123123', 3),
(14, 'Jakub', 'Nowicki', 'ul. Topolowa 4', '321321321', 3),
(15, 'Natalia', 'Mazur', 'ul. Brzozowa 8', '456456456', 3),
(16, 'Marek', 'Baran', 'ul. Dębowa 9', '789789789', 3),
(17, 'Aleksandra', 'Lisowska', 'ul. Modrzewiowa 3', '147147147', 3),
(18, 'Filip', 'Pawlak', 'ul. Jesionowa 2', '258258258', 3),
(19, 'Zuzanna', 'Zięba', 'ul. Wiązowa 5', '369369369', 3),
(20, 'Patryk', 'Lewandowski', 'ul. Klonowa 6', '951951951', 3),
(21, 'Paulina', 'Król', 'ul. Grabowa 7', '753753753', 3),
(22, 'Mateusz', 'Nowosielski', 'ul. Akacjowa 1', '852852852', 3);

-- Tabela: borrowing
INSERT INTO borrowing (book_id, readers_id, due, status_id) VALUES
(11, 11, 14, 1),
(12, 12, 14, 1),
(13, 13, 14, 1),
(14, 14, 14, 1),
(15, 15, 14, 1),
(16, 16, 14, 1),
(17, 17, 14, 1),
(18, 18, 14, 1),
(19, 19, 14, 1),
(20, 20, 14, 1);

-- Tabela: reservation
INSERT INTO reservation (book_id, readers_id, status_id) VALUES
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 11, 1);

-- Tabela: fine
INSERT INTO fine (borrowing_id, amount, status_id) VALUES
(11, 5.00, 1),
(12, 6.00, 1),
(13, 7.00, 1),
(14, 3.50, 1),
(15, 4.20, 1),
(16, 2.75, 1),
(17, 8.30, 1),
(18, 5.55, 1),
(19, 6.60, 1),
(20, 7.77, 1);
