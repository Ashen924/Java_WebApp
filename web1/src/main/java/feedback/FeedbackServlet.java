package feedback;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("contact-name");
        String email = request.getParameter("contact-email");
        String company = request.getParameter("contact-company");
        String message = request.getParameter("contact-message");

        String dbURL = "jdbc:mysql://localhost:3306/abc";
        String dbUser = "root";
        String dbPassword = "12345678";

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "INSERT INTO feedback (name, email, company, message) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, company);
            preparedStatement.setString(4, message);

            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<script>alert('Thank you for your feedback!'); window.location.href = 'home.jsp';</script>");
            }

            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error submitting feedback. Please try again later.'); window.location.href = 'home.jsp';</script>");
        }
    }
}
