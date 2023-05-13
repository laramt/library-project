INSERT INTO book_tb (title, author) VALUES ('Água Viva', 'Clarice Lispector');
INSERT INTO book_tb (title, author) VALUES ('A Metamorfose', 'Franz Kafka');
INSERT INTO book_tb (title, author) VALUES ('O Lugar', 'Annie Ernaux');
INSERT INTO book_tb (title, author) VALUES ('Normal People', 'Sally Rooney');

INSERT INTO book_copy_tb (book_id, isbn, publisher, year_published, status) VALUES (1L, '9786555320213', 'Rocco', '2020','CHECKED_OUT');
INSERT INTO book_copy_tb (book_id, isbn, publisher, year_published, status) VALUES (2L, '9786580210008', 'Antofagica', '2019','CHECKED_OUT');
INSERT INTO book_copy_tb (book_id, isbn, publisher, year_published, status) VALUES (2L, '9726485210008', 'Penguin Classicos', '2003','AVAILABLE');
INSERT INTO book_copy_tb (book_id, isbn, publisher, year_published, status) VALUES (3L,'9786589733027', 'Fosforo', '2021','AVAILABLE');
INSERT INTO book_copy_tb (book_id, isbn, publisher, year_published, status) VALUES (4L, '9781984822178', 'Hogarth Press', '2019','AVAILABLE');




INSERT INTO patron_tb (card_number, name, email, phone_number, birth_date) VALUES ('202312345678', 'Anne Doe', 'anne@email.com', '5543999533937', '1999-07-14');
INSERT INTO patron_tb (card_number, name, email, phone_number, birth_date) VALUES ('202312143279', 'Jane Louis', 'jane@email.com', '5543999426936', '1998-04-10');

INSERT INTO hold_tb (book_copy_id, patron_id, checkout, due_date, returned) VALUES (1L, 1L, '2023-05-10','2023-05-17', false);
INSERT INTO hold_tb (book_copy_id, patron_id, checkout, due_date, returned) VALUES (2L, 2L, '2023-05-02','2023-05-09', false);


