package com.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/FirstServletdemo")
public class FirstServletdemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FirstServletdemo() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 
	}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw=response.getWriter();
		pw.print("hello the world");
		response.getWriter().print("there is another way for print on web");
	}

}
