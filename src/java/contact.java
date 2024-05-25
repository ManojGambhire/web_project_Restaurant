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


@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name=request.getParameter("name");
		  String email=request.getParameter("email");
		  String phone=request.getParameter("phone");
		  String subject=request.getParameter("subject");
		 
		  String message=request.getParameter("msg");
		  RequestDispatcher dispatcher=null;
		  Connection con=null;
		  
		  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","manojgambhire@48"); 
			PreparedStatement pst=con.prepareStatement("insert into contact(name,email,phone,subject,message) values(?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, email);
		    pst.setString(3, phone);
		    pst.setString(4, subject);
		    pst.setString(5, message);
			int rowcount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("contact1.jsp");
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
