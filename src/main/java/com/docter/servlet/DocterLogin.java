package com.docter.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DocterDao;
import com.db.DBConnect;
import com.entity.Docter;
@WebServlet("/docterlogin")
public class DocterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		
		DocterDao dao=new DocterDao(DBConnect.getConn());
		Docter d=dao.login(email, password);
		
		
		if(d !=null) {
			session.setAttribute("userObj",d);
			response.sendRedirect("docter/index.jsp");
		}
		else {
			session.setAttribute("errorMsg","invalid email & password");
			response.sendRedirect("doctor_login.jsp");
		}
		
	}

}
