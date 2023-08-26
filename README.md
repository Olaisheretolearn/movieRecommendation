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
1. Run the `BookRecommendation.java` file.
2. When prompted, enter the title of a book.
3. The application will then display movie recommendations based on the genre of the provided book.

## Stumbling Block & Solution

### Issue:
During the development phase, users consistently received an error stating, "Unable to connect to database, make sure the password is correct."

### Solution:
After thorough debugging, we realized that hardcoding database credentials was a potential pitfall. By externalizing the database configurations and allowing users to input or modify them, we managed to overcome the connection issue. This approach also added an extra layer of security, as credentials were no longer hardcoded.

## Contributions
We welcome contributions! Please feel free to submit pull requests or raise issues to enhance the functionality of this application.

## License
This project is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Acknowledgments
A big shoutout to our contributors and the University of Winnipeg's computer science department for their consistent support and guidance.

