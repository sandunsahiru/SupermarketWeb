import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class SendOTPServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipient = request.getParameter("email"); 
        String otp = Integer.toString((int) (Math.random() * 9000) + 1000); // Generate OTP


        HttpSession session = request.getSession();
        session.setAttribute("otp", otp);

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true"); 

        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("greenie@gmail.com", "");
            }
        });

        try {
            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress("greenie@gmail.com")); 
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject("Your OTP");
            message.setText("Your OTP is: " + otp);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
         
        }
    }
}
