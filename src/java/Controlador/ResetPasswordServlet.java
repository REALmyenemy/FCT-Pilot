package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "reset_password", urlPatterns = {"/reset_password"})
public class ResetPasswordServlet extends HttpServlet {

	private String host;
    private String port;
    private String email;
    private String name;
    private String pass;
 
	public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        email = context.getInitParameter("email");
        name = context.getInitParameter("name");
        pass = context.getInitParameter("pass");
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
		request.getRequestDispatcher("request_password.jsp").forward(request, response);
	}
	
	
	private String generatePass()
	{
		int min = 33;
		int max = 126;
		int avg = max-min;
		int targetStringLength = 20;
		StringBuilder buffer = new StringBuilder(targetStringLength);
		int ran=45;
		Random random = new Random();
		
		for (int i = 0; i < targetStringLength; i++) {
			while (ran==45||ran==34) // No quiero guiones ni comillas
			{
				ran=random.nextInt(avg)+min;
			}
			buffer.append((char) ran);
		}
		return buffer.toString();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String recipient = request.getParameter("email");
        String subject = "Tu nueva clave ha sido enviada a tu correo";
 
        
        String content = "¡Buenas! ¡Esta es tu nueva clave!: " + generatePass();
        content += "\nDeberías cambiar tu contraseña a una que puedas recordar";
 
        String message = "";
 
        try {
            EmailUtility.sendEmail(host, port, email, name, pass,
                    recipient, subject, content);
            message = "Su contraseña ha sido modificada, por favor, compruebe su email.";
        } catch (Exception ex) {
            ex.printStackTrace();
            message = "Error: " + ex.getMessage();
        } finally {
            request.setAttribute("message", message);
            request.getRequestDispatcher("message.jsp").forward(request, response);
        }
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
