package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;

public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException
	{
		String id=request.getParameter("usu");
		String pass=request.getParameter("pass");
		
		try
		{
			UsuarioControlador uc= new UsuarioControlador();
			uc.setId(id);
			uc.setPass(pass);
			uc.recibir();
			
			
			HttpSession session=request.getSession(true);
			session.setAttribute("loginUser", uc);
			response.sendRedirect("index.jsp");
		}
		catch (Exception e)
		{
			//Fallar: "Usuario:Contraseña no validos"
			HttpSession session=request.getSession(false);
			session.setAttribute("loginerr", "Usuario con esa clave no ha sido encontrado.");
			response.sendRedirect("login.jsp");
		}
		
	}
	

}
