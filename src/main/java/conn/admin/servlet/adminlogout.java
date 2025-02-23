package conn.admin.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet("adminlogout") 
public class adminlogout extends HttpServlet  {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	session.removeAttribute("adminObj");
	session.setAttribute("succMsg", "Admin Logout Sucessfully");
	resp.sendRedirect("adminlogin.jsp");
	}

}
