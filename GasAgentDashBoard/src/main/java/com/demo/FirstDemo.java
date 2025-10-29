package com.demo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Connections.*;
 
public class FirstDemo {

	 
		 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
          System.out.println("hello w");
          Connection con = CreateConnections.GetConncection();
           
          try {
        	 
			PreparedStatement stmt =con.prepareStatement("select*from booking");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
