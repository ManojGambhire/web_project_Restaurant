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

@WebServlet("/ReservationTableR")
public class ReservationTableR extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  String no=request.getParameter("no");
		  String name=request.getParameter("name");
		  String phone=request.getParameter("phone");
		  String people=request.getParameter("people");
		  String date=request.getParameter("date");
		  String time=request.getParameter("time");
		  String message=request.getParameter("message");
		  RequestDispatcher dispatcher=null;
		  Connection con=null;
		 
		  
		  
		  
		  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?useSSL=false","root","manojgambhire@48"); 
			PreparedStatement pst=con.prepareStatement("insert into book(no,name,phone,pepole,date,time,message) values(?,?,?,?,?,?,?)");
			pst.setString(1, no);
			pst.setString(2, name);
		    pst.setString(3, phone);
		    pst.setString(4, people);
		    pst.setString(5, date);
		    pst.setString(6, time);
		    pst.setString(7, message);
			int rowcount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("reservation.jsp");
			
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
