package ucstt.classmanagement.Controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.imageio.ImageIO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ImageDisplayServlet")
public class ShowImage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
        String dbURL = "jdbc:mysql://localhost:3306/stu_hub";
        String dbUser = "root";
        String dbPassword = "root";

        String imageId = request.getParameter("id"); // Assuming you have an 'id' parameter to identify the image

        try {
        	Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            String sql = "SELECT * FROM m_user WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, imageId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
            	// Retrieve the image data from the result set
                InputStream imageInputStream = resultSet.getBinaryStream("profile");

                // Read the original image from the database
                BufferedImage originalImage = ImageIO.read(imageInputStream);

                // Define the desired width and height for the resized image
                int targetWidth = 360; // Desired width
                int targetHeight = 360; // Desired height

                // Resize the image
                BufferedImage resizedImage = resizeImage(originalImage, targetWidth, targetHeight);

                // Set the content type based on the image format (e.g., JPEG, PNG, etc.)
                response.setContentType("image/jpg"); // Change to "image/png" if your images are in PNG format

                // Write the resized image to the response output stream
                ImageIO.write(resizedImage, "jpg", response.getOutputStream());

                imageInputStream.close();
            } else {
                response.getWriter().println("Image not found!");
            }

            resultSet.close();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: Unable to display the image.");
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    private BufferedImage resizeImage(BufferedImage sourceImage, int targetWidth, int targetHeight) {
        BufferedImage resizedImage = new BufferedImage(targetWidth, targetHeight, sourceImage.getType());
        Graphics2D graphics2D = resizedImage.createGraphics();
        graphics2D.drawImage(sourceImage, 0, 0, targetWidth, targetHeight, null);
        graphics2D.dispose();
        return resizedImage;
    }
}