package com.swastik;

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

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String sname = request.getParameter("name");
		String semail = request.getParameter("email");
		String spass = request.getParameter("pass");
		String Respass = request.getParameter("re_pass");
		String smobile = request.getParameter("contact");	
	    RequestDispatcher dispatcher = null;
	    if(sname == null || sname.equals("")) {
	    	request.setAttribute("status","invalidname");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(semail == null || semail.equals("")) {
	    	request.setAttribute("status","invalidemail");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(spass == null || spass.equals("")) {
	    	request.setAttribute("status","invalidpassword");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }else if(!spass.equals(Respass)) {
	    	request.setAttribute("status","invalidconfirmpassword");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(smobile == null || smobile.equals("")) {
	    	request.setAttribute("status","invalidmobilenumber");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }else if(smobile.length() >10 || smobile.length() <10) {
	    	request.setAttribute("status","invalidmobilelength");
	    	dispatcher = request.getRequestDispatcher("Registration.jsp");
	    	dispatcher.forward(request, response);
	    }
	    Connection con = null;
	    try {
	    	String insertquery = "insert into studentdb.details(sname,spass,semail,smobile) values(?,?,?,?)";
	    	Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb","root","Database@101");
			PreparedStatement st = con.prepareStatement(insertquery);
			st.setString(1,sname);
			st.setString(2,spass);
			st.setString(3,semail);
			st.setString(4,smobile);
			
			int row = st.executeUpdate();
			dispatcher = request.getRequestDispatcher("Registration.jsp");
			if(row>0) {
				request.setAttribute("status","success");
			}else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
	    	}catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    finally {
	    	try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
	}

}
