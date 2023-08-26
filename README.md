# Book to Movie Recommendation Program

## Description
This Java application suggests movies to users based on the genre of a book they input. By leveraging a relational database, the program identifies the genre of a given book and then recommends movies from the same genre.

## Prerequisites
- Java Development Kit (JDK)
- PostgreSQL Database
- JDBC driver for PostgreSQL

## Database Setup

Before running the application, ensure you have a PostgreSQL database set up with the following schemas:

```sql
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
('Brave New World', 'Aldous Huxley', 'Dystopia');

INSERT INTO Movies (Title, Director, Genre) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Drama'),
('The Godfather', 'Francis Ford Coppola', 'Crime'),
('Blade Runner', 'Ridley Scott', 'Dystopia'),
('A Clockwork Orange', 'Stanley Kubrick', 'Dystopia');
```

## Usage
1. Run the `movieRecommendation.java` file.
2. When prompted, enter the title of a book.
3. The application will then display movie recommendations based on the genre of the provided book.

## Stumbling Block & Solution

### Issue:
During the development phase, users consistently encountered errors when trying to query the database with specific parameters.

### Solution:
Upon investigating, it became clear that we were using createStatement() method from the connection interface which is not suitable for parameterized queries. After referring to the JDBC documentation, we switched to using prepareStatement() method, allowing us to securely and efficiently handle user input parameters. This change resolved the error and enhanced the reliability of our database interactions.

## Contributions
We welcome contributions! Please feel free to submit pull requests or raise issues to enhance the functionality of this application.

## License
This project is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Acknowledgments
A big shoutout to our contributors and the University of Winnipeg's computer science department for their consistent support and guidance.

