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
 * Servlet implementation class Add_Portfolio
 */
public class Add_Portfolio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Portfolio() {
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
		
		
		int ID = Integer.parseInt(request.getParameter("ID"));
		String dishes = request.getParameter("dishes");
		String PriviousWork = request.getParameter("PriviousWork");
		String availability = request.getParameter("availability");
		String Rating = request.getParameter("Rating");
		
		
		
		
		Connection con = dbConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into portfolio values (?,?,?,?,?)");
			pstmt.setInt(1, ID);
			pstmt.setString(2,dishes );
			pstmt.setString(3, PriviousWork);
			pstmt.setString(4,availability );
			pstmt.setString(5, Rating);
			
			
			int i = pstmt.executeUpdate();
			System.out.println("row count : "+i);
			
			if(i>0)
			{
				response.sendRedirect("b_2_Dashboard.html");
			}
			else
			{
				response.sendRedirect("b_4_Add_Portfolio.html");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		doGet(request, response);
	}

}
