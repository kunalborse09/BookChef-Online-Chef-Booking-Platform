package com.r3sys.BookChef;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.db.GetSetValue;
import com.r3sys.db.dbConnection;

/**
 * Servlet implementation class BookChefData
 */
public class BookChefData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookChefData() {
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
		int id=0;
		int	uid = GetSetValue.getUid();
		int cid = GetSetValue.getCid();
		
		String bookingDetails = request.getParameter("bookingDetails");
		String bookingDate = request.getParameter("booking_date");
		String bookingTime = request.getParameter("booking_time");
		
		//Time sqlTime = new Time(new java.util.Date().getTime());
		
		
		Connection con = dbConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into bookings values (?,?,?,?,?,?,?)");
			pstmt.setInt(1, 0);
			pstmt.setInt(2,uid );
			pstmt.setInt(3,cid );
			pstmt.setString(4, bookingDetails);
			pstmt.setString(5, bookingDate);
			pstmt.setString(6, bookingTime);
			pstmt.setString(7, "pending");
			
			int i = pstmt.executeUpdate();
			System.out.println("row count : "+i);
			
			if(i>0)
			{
				response.sendRedirect("c_9_ViewBookingStatus.jsp");
			}
			else
			{
				response.sendRedirect("c_8_BookChef.html");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		doGet(request, response);
	}

}
