package com.java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.java.DatabaseConnection;

@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (!password.equals(confirmPassword)) {
            out.println("<script>alert('Passwords do not match!');</script>");
            out.println("<script>history.back();</script>"); // Quay lại trang trước
            return;
        }

        try {
            // Kết nối CSDL thông qua lớp DatabaseConnection
            Connection conn = DatabaseConnection.initializeDatabase();

            // Câu lệnh SQL để chèn dữ liệu vào bảng register
            String sql = "INSERT INTO user (email, password) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);

            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<script>alert('Dang ký thành công!');</script>");
                out.println("<script>window.location='register.jsp';</script>");
            } else {
                out.println("<script>alert('Dang ký thất bại. Vui lòng thử lại.');</script>");
                out.println("<script>history.back();</script>");
            }

            conn.close();
        } catch (Exception e) {
            out.println("<script>alert('Đã xảy ra lỗi: " + e.getMessage() + "');</script>");
            out.println("<script>history.back();</script>");
        }
    }
}
