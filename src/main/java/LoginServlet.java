
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            // Database connection setup
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC", "root", "");

            // SQL query
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // User exists and login is successful
                HttpSession session = request.getSession();
                session.setAttribute("userEmail", email); // Store user email in session
                // Optionally, store more user information in the session as needed

                response.sendRedirect("index.jsp"); // Redirect to home page
            } else {
                // User does not exist or wrong password
                response.sendRedirect("login.jsp?error=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions
            // Redirect to an error page or show an error message
            response.sendRedirect("login.jsp?error=2");
        }
    }
}
