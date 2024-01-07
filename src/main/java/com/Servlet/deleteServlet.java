package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
			Integer noteid=Integer.parseInt(request.getParameter("note_id"));
			
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.DeleteNotes(noteid);
			
			if(f)
			{
				System.out.println("data delete successfully");
				
				HttpSession session=request.getSession();
				session.setAttribute("updateMsg","data update Successfully");
				response.sendRedirect("Shownotes.jsp");
				
				
			}
			else {
				System.out.println("data not delete");
				HttpSession session=request.getSession();
				session.setAttribute("msg-error","Something went wrong in server");
				response.sendRedirect("Shownotes.jsp");
				
				
			}
			
		
		
		
		
		
	}



}
