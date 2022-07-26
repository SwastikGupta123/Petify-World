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
 * Servlet implementation class Info
 */
@WebServlet("/Info")
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String iname = request.getParameter("name");
		String icity = request.getParameter("city");
		String iemail = request.getParameter("email");
		String imobile = request.getParameter("mobile");	
	    RequestDispatcher dispatcher = null;
	    if(iname == null || iname.equals("")) {
	    	request.setAttribute("status","invalidname");
	    	dispatcher = request.getRequestDispatcher("Conatct.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(icity == null || icity.equals("")) {
	    	request.setAttribute("status","invalidcity");
	    	dispatcher = request.getRequestDispatcher("Contact.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(iemail == null || iemail.equals("")) {
	    	request.setAttribute("status","invalidemail");
	    	dispatcher = request.getRequestDispatcher("Contact.jsp");
	    	dispatcher.forward(request, response);
	    }
	    if(imobile == null || imobile.equals("")) {
	    	request.setAttribute("status","invalidmobilenumber");
	    	dispatcher = request.getRequestDispatcher("Contact.jsp");
	    	dispatcher.forward(request, response);
	    }else if(imobile.length() >10 || imobile.length() <10) {
	    	request.setAttribute("status","invalidmobilelength");
	    	dispatcher = request.getRequestDispatcher("Contact.jsp");
	    	dispatcher.forward(request, response);
	    }
	    Connection con = null;
	    try {
	    	String insertquery = "insert into studentdb.info(iname,icity,iemail,imobile) values(?,?,?,?)";
	    	Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb","root","Database@101");
			PreparedStatement st = con.prepareStatement(insertquery);
			st.setString(1,iname);
			st.setString(2,icity);
			st.setString(3,iemail);
			st.setString(4,imobile);
			int row = st.executeUpdate();
			dispatcher = request.getRequestDispatcher("Contact.jsp");
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
