package MovieDAO;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;




public class MovieDAO {
    private Connection getConnection() throws SQLException {
    	  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        // Update with your database connection details
        String url = "jdbc:mysql://localhost:3306/abc";
        String user = "root";
        String password = "12345678";
        return DriverManager.getConnection(url, user, password);
    }
  
    public void addMovie(Movie movie) {
        String query = "INSERT INTO movies (title, description, image) VALUES (?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, movie.getTitle());
            stmt.setString(2, movie.getDescription());
            stmt.setString(3, movie.getImage());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Movie> getAllMovies() {
        List<Movie> movies = new ArrayList<>();
        String query = "SELECT * FROM movies";
        try (Connection conn = getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                String title = rs.getString("title");
                String description = rs.getString("description");
                String image = rs.getString("image");
                movies.add(new Movie(title, description, image));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
}
