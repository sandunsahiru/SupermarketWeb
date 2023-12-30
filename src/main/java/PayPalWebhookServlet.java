/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;

public class PayPalWebhookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        try {
            JSONParser parser = new JSONParser();
            JSONObject payload = (JSONObject) parser.parse(request.getReader());
            
    
            String eventType = (String) payload.get("event_type");
            if ("PAYMENT.SALE.COMPLETED".equals(eventType)) {
                
                String userEmail = (String) ((JSONObject) payload.get("payer")).get("email_address");

                
                
                EmailUtility.sendEmail(userEmail, "Purchase Confirmation", "Thank you for your purchase!");
            }
        } catch (Exception e) {
            e.printStackTrace();
       
        }
    }
}
