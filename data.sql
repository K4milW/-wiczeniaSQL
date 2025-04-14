INSERT INTO country (country, country_short) VALUES
('Canada', 'CA'),    --1 
('France', 'FR'),  -- 2
('Australia', 'AU'),       --3 
('Sweden', 'SE'),     --4 
('Norway', 'NO'),    -- 5 
('Portugal', 'PT'), --  6
('South Korea', 'KR'),    -- 7
('India', 'IN'),    -- 8 
('Mexico', 'MX');   -- 9


INSERT INTO authors (first_name, last_name, birth_date, country_id, biography) VALUES
('Emily', 'Wilson', '1980-03-15', 1, 'Canadian novelist'),
('Lucas', 'Martinez', '1975-11-22', 2, 'French poet'),
('Sophia', 'Chen', '1990-07-08', 3, 'Australian science fiction writer'),
('Oliver', 'Johansson', '1985-09-30', 4, 'Swedish crime novelist'),
('Emma', 'Larsen', '1978-04-12', 5, 'Norwegian children books author'),
('James', 'Silva', '1965-12-18', 6, 'Portuguese historian'),
('Ava', 'Kim', '1995-02-25', 7, 'Korean fantasy writer'),
('Noah', 'Patel', '1982-10-05', 8, 'Indian philosopher'),
('Isabella', 'Garcia', '1970-06-20', 9, 'Mexican journalist'),
('Liam', 'Taylor', '1992-08-14', 1, 'Canadian short story writer');


INSERT INTO books (title, isbn, publication_year, publisher, genre, status_id) VALUES
('Northern Lights', '9781234567890', 2010, 'Arctic Press', 'Fantasy', 1),
('The Last Summer', '9782345678901', 2015, 'Sunny Books', 'Romance', 1),
('Deep Blue Mystery', '9783456789012', 2005, 'Ocean Publications', 'Mystery', 1),
('Mountain Echoes', '9784567890123', 2020, 'Peak Press', 'Adventure', 1),
('Urban Legends', '9785678901234', 2018, 'City Publishing', 'Horror', 1),
('Silent Forest', '9786789012345', 2012, 'Green Leaf', 'Thriller', 1),
('Desert Winds', '9787890123456', 2008, 'Sandstorm', 'Western', 1),
('Island Secrets', '9788901234567', 2016, 'Palm Tree', 'Drama', 1),
('Winter Tales', '9789012345678', 2014, 'Frosty Editions', 'Historical', 1),
('Spring Awakening', '9780123456789', 2019, 'Bloom House', 'Comedy', 1);

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
('sysadmin', 'a1b2c3d4e5f', 'admin@library.org', 'admin', 3),
('libstaff1', 'qwerty12345', 'staff1@library.org', 'librarian', 3),
('reader01', 'pass123word', 'user01@mail.com', 'user', 3),
('libstaff2', 'secure987', 'staff2@library.org', 'librarian', 3),
('reader02', 'myp@ssw0rd', 'user02@mail.com', 'user', 3),
('reader03', 'hello123', 'user03@mail.com', 'user', 3),
('reader04', 'test456', 'user04@mail.com', 'user', 3),
('reader05', 'demo789', 'user05@mail.com', 'user', 3),
('reader06', 'welcome1', 'user06@mail.com', 'user', 3),
('reader07', 'changeit', 'user07@mail.com', 'user', 3);

-- CZYTELNICY
INSERT INTO readers (user_id, first_name, last_name, address, phone, status_id) VALUES
(3, 'David', 'Brown', '123 Maple Street', '5551234567', 3),
(4, 'Sarah', 'Johnson', '456 Oak Avenue', '5552345678', 3),
(5, 'Michael', 'Davis', '789 Pine Road', '5553456789', 3),
(6, 'Jennifer', 'Wilson', '321 Elm Boulevard', '5554567890', 3),
(7, 'Robert', 'Miller', '654 Birch Lane', '5555678901', 3),
(8, 'Lisa', 'Moore', '987 Cedar Court', '5556789012', 3),
(9, 'William', 'Taylor', '135 Spruce Drive', '5557890123', 3),
(10, 'Jessica', 'Anderson', '246 Willow Way', '5558901234', 3),
(11, 'Daniel', 'Thomas', '864 Aspen Circle', '5559012345', 3),
(12, 'Michelle', 'Jackson', '975 Redwood Path', '5550123456', 3);

-- WYPOZYCZENIA
INSERT INTO borrowing (book_id, readers_id, due, status_id) VALUES
(1, 1, 21, 1),
(2, 2, 21, 1),
(3, 3, 21, 1),
(4, 4, 21, 1),
(5, 5, 21, 1),
(6, 6, 21, 1),
(7, 7, 21, 1),
(8, 8, 21, 1),
(9, 9, 21, 1),
(10, 10, 21, 1);

-- REZERWACJE
INSERT INTO reservation (book_id, readers_id, status_id) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 5, 1),
(4, 6, 1),
(5, 7, 1),
(6, 8, 1),
(7, 9, 1),
(8, 10, 1),
(9, 1, 1),
(10, 2, 1);

-- KARY
INSERT INTO fine (borrowing_id, amount, status_id) VALUES
(1, 12.50, 1),
(2, 8.75, 1),
(3, 15.00, 1),
(4, 10.25, 1),
(5, 9.50, 1),
(6, 7.80, 1),
(7, 11.20, 1),
(8, 6.90, 1),
(9, 14.30, 1),
(10, 5.60, 1);
