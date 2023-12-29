import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class SendOTPServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipient = request.getParameter("email"); // Get email from request
        String otp = Integer.toString((int) (Math.random() * 9000) + 1000); // Generate OTP

        // Save OTP in session or a temporary datastore
        HttpSession session = request.getSession();
        session.setAttribute("otp", otp);

        // Set up properties for the mail session
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true"); //TLS

        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("your-email@gmail.com", "your-password"); // Replace with your email and password
            }
        });

        try {
            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress("your-email@gmail.com")); 
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject("Your OTP");
            message.setText("Your OTP is: " + otp);

            Transport.send(message);

            // Redirect to OTP input page or send a success response
        } catch (MessagingException e) {
            throw new RuntimeException(e);
            // Handle exception
        }
    }
}
