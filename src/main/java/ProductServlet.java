/*
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class ProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
        // Database connection and fetching products
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/greenie", "root", "");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM products");

            while (resultSet.next()) {
                products.add(new Product(
                        resultSet.getString("name"),
                        resultSet.getString("category"),
                        resultSet.getString("price"),
                        resultSet.getString("imgSrc")
                ));
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Convert product list to JSON
        JSONArray productArray = new JSONArray();
        for (Product product : products) {
            JSONObject productObject = new JSONObject();
            productObject.put("name", product.getName());
            productObject.put("category", product.getCategory());
            productObject.put("price", product.getPrice());
            productObject.put("imgSrc", product.getImgSrc());
            productArray.add(productObject);  
        }

        response.setContentType("application/json");
        response.getWriter().print(productArray.toJSONString());
    }
}
*/