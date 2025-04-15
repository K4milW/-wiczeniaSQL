INSERT INTO country (country, country_short) VALUES 
('Polska', 'PL'),
('Niemcy', 'DE'),
('Francja', 'FR'),
('Hiszpania', 'ES'),
('Włochy', 'IT'),
('USA', 'US'),
('Kanada', 'CA'),
('Wielka Brytania', 'UK'),
('Szwecja', 'SE'),
('Norwegia', 'NO');

INSERT INTO authors (first_name, last_name, birth_date, country_id, biography) VALUES 
('Adam', 'Mickiewicz', '1798-12-24', 1, 'Polski poeta romantyczny.'),
('Joanne', 'Rowling', '1965-07-31', 8, 'Autorka serii o Harrym Potterze.'),
('Stephen', 'King', '1947-09-21', 6, 'Autor horrorów i thrillerów.'),
('Eliza', 'Orzeszkowa', '1841-06-06', 1, 'Pisarka epoki pozytywizmu.'),
('Gabriel', 'Marquez', '1927-03-06', 4, 'Kolumbijski pisarz i dziennikarz.'),
('Ernest', 'Hemingway', '1899-07-21', 6, 'Amerykański powieściopisarz.'),
('Olga', 'Tokarczuk', '1962-01-29', 1, 'Polska noblistka.'),
('Albert', 'Camus', '1913-11-07', 3, 'Francuski filozof i pisarz.'),
('William', 'Shakespeare', '1564-04-26', 8, 'Dramaturg angielski.'),
('Umberto', 'Eco', '1932-01-05', 5, 'Włoski pisarz i filozof.');

INSERT INTO books (title, isbn, publication_year, publisher, genre, available_copies, total_copies, status_id) VALUES 
('Pan Tadeusz', '9788373271890', 1834, 'Ossolineum', 'Epopeja', 3, 5, 1),
('Harry Potter i Kamień Filozoficzny', '9780747532699', 1997, 'Bloomsbury', 'Fantasy', 2, 4, 1),
('Lśnienie', '9780450040184', 1977, 'Doubleday', 'Horror', 1, 3, 1),
('Nad Niemnem', '9788373272149', 1888, 'PIW', 'Powieść', 2, 2, 1),
('Sto lat samotności', '9788437604947', 1967, 'Sudamericana', 'Realizm magiczny', 1, 3, 1),
('Stary człowiek i morze', '9780684801223', 1952, 'Scribner', 'Powieść', 2, 2, 1),
('Bieguni', '9788308058320', 2007, 'Wydawnictwo Literackie', 'Powieść', 2, 2, 1),
('Dżuma', '9780679720218', 1947, 'Gallimard', 'Egzystencjalizm', 1, 2, 1),
('Romeo i Julia', '9780451526861', 1597, 'Penguin', 'Dramat', 2, 3, 1),
('Imię róży', '9780156001311', 1980, 'Bompiani', 'Kryminał', 1, 2, 1);

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

INSERT INTO [user] (username, password_hash, email, [role], status_id) VALUES 
('admin1', 'hash1', 'admin1@example.com', 'admin', 3),
('lib1', 'hash2', 'lib1@example.com', 'librarian', 3),
('user1', 'hash3', 'user1@example.com', 'user', 3),
('user2', 'hash4', 'user2@example.com', 'user', 3),
('user3', 'hash5', 'user3@example.com', 'user', 3),
('user4', 'hash6', 'user4@example.com', 'user', 3),
('user5', 'hash7', 'user5@example.com', 'user', 3),
('lib2', 'hash8', 'lib2@example.com', 'librarian', 3),
('admin2', 'hash9', 'admin2@example.com', 'admin', 3),
('user6', 'hash10', 'user6@example.com', 'user', 3);

INSERT INTO readers (user_id, first_name, last_name, address, phone, status_id) VALUES 
(3, 'Anna', 'Kowalska', 'ul. Długa 12, Warszawa', '123456789', 3),
(4, 'Jan', 'Nowak', 'ul. Krótka 8, Kraków', '234567890', 3),
(5, 'Zofia', 'Wiśniewska', 'ul. Szeroka 3, Gdańsk', '345678901', 3),
(6, 'Tomasz', 'Wójcik', 'ul. Zielona 7, Poznań', '456789012', 3),
(7, 'Maria', 'Kaczmarek', 'ul. Leśna 5, Lublin', '567890123', 3),
(10, 'Krzysztof', 'Kowal', 'ul. Główna 10, Łódź', '678901234', 3),
(8, 'Ewa', 'Zając', 'ul. Jasna 15, Wrocław', '789012345', 3),
(9, 'Michał', 'Mazur', 'ul. Słoneczna 4, Rzeszów', '890123456', 3),
(5, 'Karolina', 'Kwiatkowska', 'ul. Polna 6, Białystok', '901234567', 3),
(4, 'Patryk', 'Lis', 'ul. Kręta 9, Katowice', '012345678', 3);

INSERT INTO borrowing (book_id, readers_id, return_date, due, status, status_id) VALUES 
(1, 1, NULL, 14, 'wypożyczona', 1),
(2, 2, NULL, 14, 'wypożyczona', 1),
(3, 3, NULL, 14, 'wypożyczona', 1),
(4, 4, NULL, 14, 'wypożyczona', 1),
(5, 5, NULL, 14, 'wypożyczona', 1),
(6, 6, NULL, 14, 'wypożyczona', 1),
(7, 7, NULL, 14, 'wypożyczona', 1),
(8, 8, NULL, 14, 'wypożyczona', 1),
(9, 9, NULL, 14, 'wypożyczona', 1),
(10, 10, NULL, 14, 'wypożyczona', 1);

INSERT INTO reservation (book_id, readers_id, status_id) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

INSERT INTO fine (borrowing_id, amount, date_pay, status_id) VALUES 
(1, 5.00, NULL, 1),
(2, 2.50, NULL, 1),
(3, 3.75, NULL, 1),
(4, 4.00, NULL, 1),
(5, 1.50, NULL, 1),
