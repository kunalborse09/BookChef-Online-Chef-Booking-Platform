package com.r3sys.BookChef;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.db.dbConnection;

/**
 * Servlet implementation class RegisterChef
 */
public class RegisterChef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterChef() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String chef_name = request.getParameter("chef_name");
		String speciality = request.getParameter("speciality");
		String openTime = request.getParameter("openTime");
		String closeTime = request.getParameter("closeTime");
		String address = request.getParameter("address");
		String area = request.getParameter("area");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		Connection con = dbConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into chef values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, 0);
			pstmt.setString(2,chef_name );
			pstmt.setString(3,speciality );
			pstmt.setString(4,openTime );
			pstmt.setString(5, closeTime);
			pstmt.setString(6, address);
			pstmt.setString(7, area);
			pstmt.setString(8, city);
			pstmt.setString(9, pincode);
			pstmt.setString(10, contact);
			pstmt.setString(11, email);
			pstmt.setString(12, password);
			pstmt.setString(13, "pending");
			
			int i = pstmt.executeUpdate();
			System.out.println("row count : "+i);
			
			if(i>0)
			{
				response.sendRedirect("b_1_ChefLogin.html");
			}
			else
			{
				response.sendRedirect("b_3_RegisterChef.html");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		doGet(request, response);
	}

}
