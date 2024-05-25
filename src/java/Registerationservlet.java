package com.uniquedevloper.registeration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Takeregister")
public class Registerationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	  String username=request.getParameter("username");
	  String password=request.getParameter("password");

	  RequestDispatcher dispatcher=null;
	  Connection con=null;
	  
	  try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","manojgambhire@48"); 
		PreparedStatement pst=con.prepareStatement("insert into login( username,password) values(?,?)");
	
		pst.setString(1, username);
		pst.setString(2, password);
		
		int rowcount=pst.executeUpdate();
		dispatcher=request.getRequestDispatcher("register.jsp");
		if(rowcount>0)
		{
			request.setAttribute("status","success");
			
		}
		else {
			request.setAttribute("status", "failed");
		}
		dispatcher.forward(request, response);
	} catch (Exception e) {
		
		e.printStackTrace();
	} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
	}
	  
	}

}
