package com.swastik;

import java.io.IOException;
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


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String semail = request.getParameter("username");
		String spass = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		HttpSession session = request.getSession();
		if(semail == null || semail.equals("")) {
	    	request.setAttribute("status","invalidsmail");
	    	dispatcher = request.getRequestDispatcher("LogIn.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(spass == null || spass.equals("")) {
	    	request.setAttribute("status","invalidspass");
	    	dispatcher = request.getRequestDispatcher("LogIn.jsp");
	    	dispatcher.forward(request, response);
	    }
		try {
			String sql = "select * from studentdb.details where semail = ? and spass = ?";
	    	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb","root","Database@101");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,semail);
			st.setString(2,spass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("sname"));
				dispatcher = request.getRequestDispatcher("Home.jsp");
			}else {
				request.setAttribute("status","failed");
				dispatcher = request.getRequestDispatcher("LogIn.jsp");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
