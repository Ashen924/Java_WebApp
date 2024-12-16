package SaveBookingServlet;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.*;

@WebServlet("/Booking")
public class SaveBooking extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("ticket-form-name");
        String email = request.getParameter("ticket-form-email");
        String phone = request.getParameter("ticket-form-phone");
        String ticketType = request.getParameter("ticket-type");
        String ticketNumber = request.getParameter("ticket-form-number");
        String message = request.getParameter("ticket-form-message");

        // Save booking details in the database
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc", "root", "12345678");
             PreparedStatement pstmt = conn.prepareStatement(
                     "INSERT INTO bookings (name, email, phone, ticket_type, ticket_number, message) VALUES (?, ?, ?, ?, ?, ?)")) {

            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC Driver

            // Set the booking details into the query
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, phone);
            pstmt.setString(4, ticketType);
            pstmt.setString(5, ticketNumber);
            pstmt.setString(6, message);

            pstmt.executeUpdate(); // Execute the insertion query

            // Send confirmation email
            sendEmail(email, name, ticketType, ticketNumber);

            response.setContentType("text/html");
            response.getWriter().write("<html><body><h3>Booking Successful!</h3><p>Thank you for your booking, " + name + "!</p></body></html>");
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("<html><body><h3>Booking Failed!</h3><p>Something went wrong. Please try again later.</p></body></html>");
        }
    }

    private void sendEmail(String to, String name, String ticketType, String ticketNumber) {
        final String from = "dhanusaima511@gmail.com"; // Your email address
        final String host = "smtp.gmail.com"; // Gmail SMTP server
        final String password = "nuvx tkrz lvdf skuq"; // App-specific password

        // Set up email server properties
        Properties properties = new Properties();
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Create a session with authentication
        Session session = Session.getInstance(properties, new jakarta.mail.Authenticator() {
            @Override
            protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
                return new jakarta.mail.PasswordAuthentication(from, password);
            }
        });

        try {
            // Create the email message
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject("Booking Confirmation");
            message.setText("Dear " + name + ",\n\nThank you for your booking!\n\nTicket Type: " + ticketType +
                    "\nNumber of Tickets: " + ticketNumber + "\n\nBest Regards,\nABC Cinema");

            // Send the email
            Transport.send(message);
            System.out.println("Email sent successfully.");
        } catch (MessagingException mex) {
            System.err.println("Error sending email: " + mex.getMessage());
            mex.printStackTrace();
        }
    }
}
