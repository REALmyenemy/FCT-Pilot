package Controlador;

import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.logging.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Modelo.Usuario;


@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		HttpSession session=request.getSession();
		if (!session.isNew() && request.getSession().getAttribute("loginUser") != null) 
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			UsuarioControlador uc=new UsuarioControlador();
			String username=request.getParameter("usu");
			
			uc.setId(username);
			
			try
			{
				
				if (!UsuarioControlador.checkExiste(username))
				{
					String birth=request.getParameter("birth");
					GregorianCalendar birthdate=UsuarioControlador.parseBirthday(birth);

					if (!birthdate.before(new GregorianCalendar().getTime()))
					{
						uc.setNombre(request.getParameter("name"));	
						uc.setApellidos(request.getParameter("lastname"));	
						uc.setPass(request.getParameter("pass"));	
						uc.setEmail(request.getParameter("mail"));	
						uc.setActivo(1);
						uc.setRol("Estudiante");
						uc.setFnacimiento(new java.sql.Date(birthdate.getTimeInMillis()));
						try
						{
							uc.crear();	
						}
						catch (Exception e)
						{
							System.out.println("Peto 1");
						}

					}
				}
			}
			catch (Exception e)
			{
				System.out.println("Peto 2");
			}

			
			
		}
	}

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
	}

}
