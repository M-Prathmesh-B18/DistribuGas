package com.java.controller;

import java.io.IOException;



import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.time.LocalDate;
import java.util.Random;
import com.Connections.*;
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Connection conn;
	public void init() {
		conn=CreateConnections.GetConncection();
		
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter pw=response.getWriter();
         //Random rnd=new Random();
		 
		 //int rndNo= (int) (1_000_000_000L + rnd.nextLong(9_000_000_000L));
		  
		 String name=request.getParameter("name");
		 String reg_no=request.getParameter("regNo");
		 String address=request.getParameter("address");
		 String phone=request.getParameter("phone");
		 double payment=Double.parseDouble(request.getParameter("payment"));
		 LocalDate bookingDate=LocalDate.parse(request.getParameter("bookingDate"));
		 
		 PreparedStatement stmt;
		try {
			stmt = conn.prepareStatement("insert into booking values(?,?,?,?,?,?)");
			
//			stmt.setInt(1, rndNo);
			stmt.setString(1, name);
			stmt.setString(2, reg_no);
			stmt.setString(3, address);
			stmt.setString(4, phone);
			stmt.setDouble(5, payment);
			stmt.setObject(6, bookingDate);
			
			
			
			
		    int result=stmt.executeUpdate();
		    
		    if(result>0) {
		    	System.out.println("row is inserted");
		    }
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			 
		  
		 
		 
	}

}
