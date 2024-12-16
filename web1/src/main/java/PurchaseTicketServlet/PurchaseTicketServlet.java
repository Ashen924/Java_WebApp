package PurchaseTicketServlet;

import java.io.IOException;
import java.util.Properties;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.mail.*;
import jakarta.mail.internet.*;

@WebServlet("/PurchaseTicketServlet")
public class PurchaseTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Collect form data
        String name = request.getParameter("ticket-form-name");
        String email = request.getParameter("ticket-form-email");

        // Email content
        String subject = "Thank You for Booking!";
        String message = "Dear " + name + ",\n\nThank you for booking with us!\n\nBest Regards,\nGreenSparkEvents";

        // Email server settings
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Email and app password (use your credentials here)
        final String username = "kaveeshamanusaraniG786@gmail.com";
        final String appPassword = "xveq bydg bwvk ycyb";

        // Create session with authentication
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, appPassword);
            }
        });

        try {
            // Create email message
            Message emailMessage = new MimeMessage(session);
            emailMessage.setFrom(new InternetAddress(username));
            emailMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            emailMessage.setSubject(subject);
            emailMessage.setText(message);

            // Send email
            Transport.send(emailMessage);

            // Redirect to thank you page
            response.sendRedirect("thank_you.jsp");
        } catch (MessagingException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error sending email.");
        }
    }
}
