package com.admin.servlet;

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

@WebServlet("/addDocter")
public class AddDocter extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String fullname=request.getParameter("fullname");
			String dob=request.getParameter("dob");
			String qualification=request.getParameter("qualification");
			String spec=request.getParameter("spec");
			String email=request.getParameter("email");
			String mobno=request.getParameter("mobno");
			String password=request.getParameter("password");
			
			Docter d=new Docter(fullname,dob,qualification,spec,email,mobno,password);
			
			DocterDao dao=new DocterDao(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.registerDocter(d)) {
				session.setAttribute("succMsg", "Docter Added Successfully");
				response.sendRedirect("admin/docter.jsp");
			}else {
				session.setAttribute("errorMsg", "Something wrong on server");
				response.sendRedirect("admin/docter.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
