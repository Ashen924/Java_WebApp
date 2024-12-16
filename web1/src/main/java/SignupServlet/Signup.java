package SignupServlet;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/sign")
public class Signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        // Database connection variables
        String jdbcURL = "jdbc:mysql://localhost:3306/abc";
        String dbUser = "root";
        String dbPassword = "12345678";

        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String sql = "INSERT INTO users (full_name,email, password) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, full_name);
            statement.setString(2, email);
            statement.setString(3, password);
           // Make sure to hash this password in a real application

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("login.jsp?message=Signup successful! Please login.");
            } else {
                response.sendRedirect("signup.jsp?error=Signup failed. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=Database error.");
        }
    }
}
