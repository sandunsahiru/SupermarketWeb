
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class VerifyOTPServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String sentOtp = (String) session.getAttribute("otp");
        String receivedOtp = request.getParameter("otp");
        String email = (String) session.getAttribute("email"); // Assuming email is stored in session
        String password = (String) session.getAttribute("password"); // Assuming password is stored in session

        if (sentOtp != null && sentOtp.equals(receivedOtp)) {
            // OTP is correct, save the user in the database
            try {
                // Database connection and save user logic
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC", "root", "");
                PreparedStatement ps = connection.prepareStatement("INSERT INTO users (email, password) VALUES (?, ?)");
                ps.setString(1, email);
                ps.setString(2, password); // Consider hashing the password
                ps.executeUpdate();

                // Set user email in session for user session
                session.setAttribute("userEmail", email);

                // Redirect to index page
                response.sendRedirect("index.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle database errors
            }
        } else {
            // OTP is incorrect, redirect back with an error message
            session.setAttribute("otpError", "Incorrect OTP");
            response.sendRedirect("signup.jsp"); // Replace with your OTP page
        }
    }
}
