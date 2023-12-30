/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class CancelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

        
        try {
            EmailUtility.sendEmail(userEmail, "Purchase Cancelled", "Your purchase has been cancelled.");
         
            response.sendRedirect("cancellationConfirmation.jsp"); 
        } catch (Exception e) {
            e.printStackTrace();
          
        }
    }
}
