package Controlador;

import Controlador.Excepciones.NotOldEnoughException;
import Controlador.Excepciones.UserNotFoundException;
import Controlador.Excepciones.UsuarioBaneadoException;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioControlador extends Usuario
{

	private static void start()
	{
		try {
			if(c==null||c.getConn().isClosed())
			{
				c=new Conectar();
			}
		} catch (SQLException ex) {
			Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
	public static boolean checkExiste(String username) throws SQLException
	{
		
		start();
		c.ejecutar("select * from usuarios where id='"+username+"'");
		ResultSet rs=c.getRset();
		return rs.next();
	}

	public static GregorianCalendar parseBirthday(String birth)
	{
		GregorianCalendar newDate=new GregorianCalendar();
		/*
		SimpleDateFormat sdf= new SimpleDateFormat("dd MM yyyy");
		try {
			java.util.Date parseDate=sdf.parse(birth);
			newDate.setTime(parseDate);
		} catch (ParseException ex) {
			Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
		}
		*/
		newDate.set(Calendar.YEAR,Integer.parseInt(birth.substring(0,4)));
		newDate.set(Calendar.MONTH,Integer.parseInt(birth.substring(5,7)));
		newDate.set(Calendar.DATE,Integer.parseInt(birth.substring(8,10)));
		
		return newDate;
	}
	private static Conectar c;
	
	public void crear() throws SQLException
	{
		start();
		Connection conn = c.getConn();
		PreparedStatement insert=conn.prepareStatement("insert into usuarios values(?,?,?,?,?,?,?,?)");
		GregorianCalendar thirteen = new GregorianCalendar();
		thirteen.set(Calendar.YEAR, thirteen.get(Calendar.YEAR) - 13);
		GregorianCalendar aux1=new GregorianCalendar();
		aux1.setTimeInMillis(this.getFnacimiento().getTime());

		if (this.getFnacimiento().after(thirteen.getTime()))
		{
			throw new NotOldEnoughException();
		}
		insert.setString(1, this.getId());
		insert.setString(2, this.getNombre());
		insert.setString(3, this.getApellidos());
		insert.setString(4, this.getPass());
		insert.setInt(5, this.getActivo());
		insert.setString(6, this.getRol());
		insert.setDate(7, this.getFnacimiento());
		insert.setString(8, this.getEmail());
		
		insert.executeUpdate();
		
		/*try
		{
			insert.close();
		}
		catch (SQLException e)
		{
			
		}*/
		//conn.commit();
		/*conn.close();*/
	}

	public void recibir() throws UsuarioBaneadoException, UserNotFoundException, SQLException
	{
			this.start();
			Connection conn=c.getConn();
			/*
			//PreparedStatement ps = conn.prepareStatement("select * from usuarios where pass=? and (id=? or correoelectronico=?)");
			PreparedStatement ps = conn.prepareStatement("select * from usuarios where id=?");
			ps.setString(1, this.getId());
			
			/*
			ps.setString(1, this.getPass());
			ps.setString(2, this.getId());
			ps.setString(3, this.getId());
			*//*
			ResultSet rs=ps.executeQuery();
			*/
			/*c.ejecutar("select * from usuarios where pass='"+this.getPass()+"' and (id='"+this.getId()+"' or correoelectronico='"+this.getId()+"')");
			ResultSet rs=c.getRset();
			*/
			
			c.ejecutar("select * from usuarios where id='"+this.getId()+"' or correoelectronico='"+this.getId()+"'");
			ResultSet rs=c.getRset();
			
			if (rs.next())
			{
				this.setActivo(Integer.parseInt(rs.getString("cuentaActiva")));
				if (this.getActivo()!=1)
				{
					throw new UsuarioBaneadoException();
				}
				this.setId(rs.getString("id"));
				this.setNombre(rs.getString("nombre"));
				this.setApellidos(rs.getString("apellidos"));
				this.setPass(rs.getString("pass"));
				this.setRol(rs.getString("rol"));
				this.setFnacimiento(rs.getString(""));
				this.setEmail(rs.getString("correoelectronico"));
			}
			else
				throw new UserNotFoundException();
	}

	
	
}
