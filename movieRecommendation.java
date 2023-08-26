//import libraries, must have jar file
import java.sql.*;
import java.util.*;

public class movieRecommendation {
    public static void main(String[] args) {
        // instance variables for the connection
        String url = "jdbc:postgresql://localhost:5432/JavaDB";
        String username = "YOUR_PGADMIN_USERNAME";
        String password = "YOUR_PG_ADMIN_PASSWORD";

        // connecting to the database
        try (
                Connection connection = DriverManager.getConnection(url, username, password)) {
            System.out.println("making connection to the database");
            //Just for UI lol
            for (int i = 0; i < 5; i++) {
                System.out.println(".");
                Thread.sleep(500);
            }
            System.out.println("connected to Database");

            Scanner scanner = new Scanner(System.in);
            String response;
            do {
            System.out.println("Enter the title of the book:");
            String bookTitle = scanner.nextLine();

            // Constructing the query using the provided book title
            String query = "SELECT m.Title AS MovieTitle, m.Genre AS Genre " +
                    "FROM Movies m " +
                    "JOIN Books b ON LOWER(m.Genre) = LOWER(b.Genre) " +
                    "WHERE LOWER(b.Title) = LOWER(?)";

            // Preparing and executing the query
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setString(1, bookTitle); // Replacing the '?' with the book title
            ResultSet rs = pstmt.executeQuery();

            boolean hasResults = false; // Flag to check if we have results from the query

            while (rs.next()) {
                hasResults = true;
                System.out.println( rs.getString("MovieTitle") + "\t" + "Genre: " + rs.getString("Genre"));
            }

            if (!hasResults) {
                System.out.println("I'm not sure we read that book yet.");
            }

                System.out.println("Do you want to make another query? (y/n)");
                response = scanner.nextLine().trim().toLowerCase();

            } while (response.equals("y"));

        } catch (SQLException e) {
            System.out.println("Unable to connect to database, make sure the password is correct.");
            e.printStackTrace();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
