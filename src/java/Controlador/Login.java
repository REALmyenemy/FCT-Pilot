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

	private Conectar con;
	private Connection conn;
	
			
			
	private void loginFail (HttpServletRequest request, HttpServletResponse response, String errmesage)
	{
		try
		{
			conn.close();
			HttpSession s=request.getSession();
			s.setAttribute("loginerr", errmesage);
			s.removeAttribute("loginUser");
			response.sendRedirect("login.jsp");
		}
		catch (SQLException E)
		{
			
		} catch (IOException ex) {
			
		}
		
	}


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("error.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		con = new Conectar();
		ResultSet rset;
		String user;
		try {
			conn=con.getConn();
			PreparedStatement getUser=conn.prepareStatement("select * from users where id=?");
			user = request.getParameter("usu");
			getUser.setString(0, user);
			rset=getUser.executeQuery();
			
			if (rset.next()&&rset.getString("id").equals(user))
			{
				con.closeResultset(rset);
				login(user,request,response);
			}
			else //Puede que esté intentando entrar con el mail
			{
				con.closeResultset(rset);
				getUser=conn.prepareStatement("select id from users where email=?");
				getUser.setString(0, user);
				if (rset.next()) //Solo permitiré usar el mismo mail para la primera iteración del mail
				{
					String userid=rset.getString("id");
					con.closeResultset(rset);
					login(userid,request,response);
				}
				else
				{
					con.closeResultset(rset);
					loginFail(request,response,"No estás registrado");
				}
			}
			
			
		}
		catch (SQLException ex)
		{
			
		}
	}
	
	private void login (String user, HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String password=request.getParameter("pass");
			HttpSession session = request.getSession();
			PreparedStatement ps = conn.prepareStatement("select id from usuarios where password=? and id=?"); //Sí, vuelvo a buscar con los datos al revés, por seguridad
			ps.setString(0,password);
			ps.setString(1,user);
			
			ResultSet rs=ps.executeQuery();
			if (rs.next())
			{
				session.setAttribute("loginUser", user);
				response.sendRedirect("index.jsp");
			}
			else
			{
				throw new SQLException(); //Salta al catch
			}
			
		} catch (SQLException ex) {
			loginFail(request,response,"Contraseña equivocada"); // !! Eventualmente cambiaré el mensaje por privacidad
		} catch (IOException ex) {
			try {
				response.sendRedirect("404.jsp");
			} catch (IOException ex1) {
				
			}
		}
	}

	
	@Override
	public String getServletInfo() {
		return "Short description";
	}

}
