package Controlador;

import Modelo.Empresa;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "search", urlPatterns = {"/search"})
public class Search extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Conectar c=new Conectar();
		String firstInput=request.getParameter("name").toUpperCase();
		ArrayList <Empresa> empresas=new ArrayList();
		try {
			c.ejecutar("select * from empresa where upper(nombre) like '%"+"%' or sector like '%"+"%'");
			ResultSet rst=c.getRset();
			Empresa e;
			while (rst.next())
			{
				e=new Empresa();
				e.setId(rst.getInt("id"));
				e.setNombre(rst.getString("nombre"));
				e.setRepresentante(rst.getString("representante"));
				e.setSector(rst.getString("sector"));
				e.setUbicacion(rst.getString("ubicacion"));
				e.setResumen(rst.getString("resumen"));
				e.setImagenPrincipal(rst.getInt("imagenprincial"));
				
				//if (parsearConGogle(e.ubicación,request.getParameter("place"))
					empresas.add(e);
			}
			ArrayList <String> imagenes=new ArrayList();
			for (int i=0;i<empresas.size();i++)
			{
				c.ejecutar("select rutaimagen from imagenes where indice="+empresas.get(i).getImagenPrincipal()); //Importante hacerlo aquí, ya que si no, no considero el parseo
				rst=c.getRset();
				if (rst.next())
					imagenes.add(rst.getString(2));
			}
			request.getSession().setAttribute("results", empresas);
			request.getSession().setAttribute("imgs", imagenes);
			response.sendRedirect("search.jsp");
		} catch (SQLException ex) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
