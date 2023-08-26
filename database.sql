CREATE TABLE Books(
 	bookid SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	author TEXT NOT NULL,
	genre TEXT NOT NULL
);

CREATE TABLE Movies(
 	movieID SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	director TEXT NOT NULL,
	genre TEXT NOT NULL
);

INSERT INTO Books (Title, Author, Genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Drama'),
('To Kill a Mockingbird', 'Harper Lee', 'Crime'),
('1984', 'George Orwell', 'Dystopia'),
('Brave New World', 'Aldous Huxley', 'Dystopia'),
('Pride and Prejudice', 'Jane Austen', 'Romance'),
('The Adventures of Huckleberry Finn', 'Mark Twain', 'Adventure'),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Thriller'),
('Romeo and Juliet', 'William Shakespeare', 'Romance'),
('The Odyssey', 'Homer', 'Adventure'),
('The Silence of the Lambs', 'Thomas Harris', 'Thriller'),
('The Crucible', 'Arthur Miller', 'Drama'),
('Gone Girl', 'Gillian Flynn', 'Thriller'),
('Wuthering Heights', 'Emily Brontë', 'Romance'),
('Treasure Island', 'Robert Louis Stevenson', 'Adventure'),
('Red Dragon', 'Thomas Harris', 'Thriller'),
('A Streetcar Named Desire', 'Tennessee Williams', 'Drama'),
('In Cold Blood', 'Truman Capote', 'Crime'),
('The Handmaids Tale', 'Margaret Atwood', 'Dystopia'),
('Jane Eyre', 'Charlotte Brontë', 'Romance'),
('Moby Dick', 'Herman Melville', 'Adventure');

INSERT INTO Movies (Title, Director, Genre) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Drama'),
('The Godfather', 'Francis Ford Coppola', 'Crime'),
('Blade Runner', 'Ridley Scott', 'Dystopia'),
('A Clockwork Orange', 'Stanley Kubrick', 'Dystopia'),
('Casablanca', 'Michael Curtiz', 'Romance'),
('Indiana Jones and the Last Crusade', 'Steven Spielberg', 'Adventure'),
('Se7en', 'David Fincher', 'Thriller'),
('Titanic', 'James Cameron', 'Romance'),
('Jurassic Park', 'Steven Spielberg', 'Adventure'),
('Psycho', 'Alfred Hitchcock', 'Thriller'),
('The Green Mile', 'Frank Darabont', 'Drama'),
('Goodfellas', 'Martin Scorsese', 'Crime'),
('The Matrix', 'Lana and Lilly Wachowski', 'Dystopia'),
('Before Sunrise', 'Richard Linklater', 'Romance'),
('The Revenant', 'Alejandro González Iñárritu', 'Adventure'),
('The Sixth Sense', 'M. Night Shyamalan', 'Thriller'),
('Schindlers List', 'Steven Spielberg', 'Drama'),
('Pulp Fiction', 'Quentin Tarantino', 'Crime'),
('Children of Men', 'Alfonso Cuarón', 'Dystopia'),
('The Princess Bride', 'Rob Reiner', 'Adventure');

---QUERY
SELECT * FROM BOOKS;
SELECT * FROM MOVIES;

SELECT m.Title AS MovieTitle, m.Genre AS Genre
FROM Movies m
JOIN Books b ON LOWER(m.Genre) = LOWER(b.Genre)
WHERE LOWER(b.Title) = LOWER('The Great Gatsby');
