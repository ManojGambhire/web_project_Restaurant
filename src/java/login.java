package com.uniquedevloper.registeration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		  String username=request.getParameter("username");
		  String password=request.getParameter("password");
		  Connection con=null;
		  HttpSession session=request.getSession();
		  RequestDispatcher dispatcher=null;
		  try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","manojgambhire@48"); 
				PreparedStatement pst=con.prepareStatement("select * from login where username=? and password=?");
				pst.setString(1, username);
				pst.setString(2, password);
			    ResultSet rs =pst.executeQuery();
			
				if(rs.next())
				{
					session.setAttribute("username",rs.getString("username"));
					dispatcher =request.getRequestDispatcher("main-1.jsp");
					
				}
				else {
					request.setAttribute("status", "failed");
					dispatcher =request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
	}

}
