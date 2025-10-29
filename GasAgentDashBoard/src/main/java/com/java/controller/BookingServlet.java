package com.java.controller;

import java.io.IOException;


import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Random;
import com.Connections.*;
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Connection conn;
	public void init() {
		conn=CreateConnections.GetConncection();
		
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter pw=response.getWriter();
		 String name=request.getParameter("name");
		 
		 PreparedStatement stmt;
		try {
			stmt = conn.prepareStatement("select*from booking");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()) {
				pw.println(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			 
		 Random rnd=new Random();
		 
		 long rndNo= 1_000_000_000L + rnd.nextLong(9_000_000_000L);
		 pw.println(rndNo);
		 
		 
	}

}
