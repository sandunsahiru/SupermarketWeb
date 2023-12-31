
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class VerifyOTPServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String sentOtp = (String) session.getAttribute("otp");
        String receivedOtp = request.getParameter("otp");
        String email = (String) session.getAttribute("email"); 
        String password = (String) session.getAttribute("password");

        if (sentOtp != null && sentOtp.equals(receivedOtp)) {
            
            try {
               
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenie?serverTimezone=UTC", "root", "");
                PreparedStatement ps = connection.prepareStatement("INSERT INTO users (email, password) VALUES (?, ?)");
                ps.setString(1, email);
                ps.setString(2, password);
                ps.executeUpdate();

                session.setAttribute("userEmail", email);

                response.sendRedirect("index.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
           
            }
        } else {
            
            session.setAttribute("otpError", "Incorrect OTP");
            response.sendRedirect("signup.jsp"); 
        }
    }
}
