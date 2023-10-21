package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UserRegister() {
        super();
       
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String fullname=request.getParameter("fullname");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			User user=new User(fullname,email,password);
			
			UserDao userDao=new UserDao(DBConnect.getConn());
			
			HttpSession session=request.getSession();
			
			
			boolean f=userDao.registrt(user);
			
			if(f) {
				session.setAttribute("sucMsg","register successfull");
				response.sendRedirect("signup.jsp");
				
			}
			else {
				session.setAttribute("errorMsg","Something wrong on server");
				response.sendRedirect("signup.jsp");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
