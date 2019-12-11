package Controlador;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			Conectar c=new Conectar();
			
		try {
			
			String username=request.getParameter("usu");
			
			String pass=request.getParameter("pass");
			String name=request.getParameter("name");
			String surname=request.getParameter("lastname");
			String birth=request.getParameter("birth");
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm.");
			HttpSession session = request.getSession();
			Date birthdate;
			try {
				birthdate =sdf.parse(birth);
			} catch (ParseException ex) {
				session.setAttribute("loginerr", "Fecha de nacimiento es obligatoria");
				response.sendRedirect("login.jsp");
			}
			String mail=request.getParameter("mail");
			
			if (username==null||pass==null||username.equals(pass)||username.equals("")||pass.equals(""))
			{
				session.setAttribute("loginerr", "Rellena los campos obligatorios");
				response.sendRedirect("login.jsp");
			}
			if (username.length()>34)
			{
				session.setAttribute("loginerr", "Usuario demasiado largo");
				response.sendRedirect("login.jsp");
			}
			
			
			c.ejecutar("select * from usuarios where id='"+username+"'");
			
			ResultSet rs=c.getRset();
			
			if (rs.next())
			{
				session.setAttribute("loginerr", "Usuario ya existente");
				response.sendRedirect("login.jsp");
			}
			else
			{
				PreparedStatement ps = c.getConn().prepareStatement("insert into usuarios values(?,?,?,?,?,?,?,?)");
				ps.setString(0, username);
				ps.setString(1, name);
				ps.setString(2,	surname);
				ps.setString(3, pass);
				ps.setInt	(4,	1);
				ps.setString(5,	"Estudiante");
				ps.setDate(6, (javax.SQL.Date)birthdate.getTime());
				ps.setString(7,mail);
			}
			/*
			c.lanzar("insert into usuarios values('"
				+request.getParameter("rusu")+"','"
				+request.getParameter("rpass")+"','"
				+request.getParameter("name")+"','"
				+request.getParameter("lastname")
				+"',TRUE,"
				+ "'Estudiante','"
				+request.getParameter("birth")+
			"')");
			*/
		} catch (SQLException ex) {
			
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("loginerr", "Acceso anomalo detectado");
		response.sendRedirect("login.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
