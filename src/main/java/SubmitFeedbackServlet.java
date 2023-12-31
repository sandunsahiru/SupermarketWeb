/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class SubmitFeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String fuserEmail = request.getParameter("fuserEmail");
        String userFeedback = request.getParameter("userFeedback");
        int rating = Integer.parseInt(request.getParameter("rating"));

        Connection con = null;
        PreparedStatement pstmt = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenie?serverTimezone=UTC", "root", "");

            // SQL query to insert data
            String sql = "INSERT INTO feedback (userName, fuserEmail, userFeedback, rating) VALUES (?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, userName);
            pstmt.setString(2, fuserEmail);
            pstmt.setString(3, userFeedback);
            pstmt.setInt(4, rating);

            // Execute the query
            pstmt.executeUpdate();
            con.commit();
            request.getSession().setAttribute("feedbackMessage", "Feedback submitted successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            // Set failure message
            request.getSession().setAttribute("feedbackMessage", "Failed to submit feedback.");
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("feedback.jsp");
    }
}
