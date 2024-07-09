package com.r3sys.BookChef;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.db.GetSetValue;
import com.r3sys.db.dbConnection;

/**
 * Servlet implementation class ChefLoginServ
 */
public class ChefLoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChefLoginServ() {
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
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("email="+email+"password="+password);
		
		Connection con = dbConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("select * from chef where email = ? and password = ?");
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			int i=0;
			while(rs.next())
			{
				i=1;
				int cid = rs.getInt(1);
				GetSetValue.setCid(cid);
				System.out.println("Valid User..");			
			}
			if(i>0)
			{
				
				response.sendRedirect("b_2_Dashboard.html");
			}
			else
			{
				response.sendRedirect("b_1_ChefLogin.html");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
