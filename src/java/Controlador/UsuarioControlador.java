package Controlador;

import Controlador.Excepciones.NotOldEnoughException;
import Controlador.Excepciones.UsuarioBaneadoException;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
		SimpleDateFormat sdf= new SimpleDateFormat("dd-MMM-yyyy");
		GregorianCalendar newDate=new GregorianCalendar();
		try {
			java.util.Date parseDate=sdf.parse(birth);
			newDate.setTime(parseDate);
		} catch (ParseException ex) {
			Logger.getLogger(UsuarioControlador.class.getName()).log(Level.SEVERE, null, ex);
		}
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
		System.out.println("trece="+thirteen+" calreceived="+this.getFnacimiento()+"!!!!!!BBB");
		if (this.getFnacimiento().after(thirteen.getTime()))
		{
			throw new NotOldEnoughException();
		}
		insert.setString(0, this.getId());
		insert.setString(1, this.getNombre());
		insert.setString(2, this.getApellidos());
		insert.setString(3, this.getPass());
		insert.setInt(4, this.getActivo());
		insert.setString(5, this.getRol());
		insert.setDate(6, this.getFnacimiento());
		insert.setString(7, this.getEmail());
		
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!! AAAAAAAAAAAAAA ESTO va bien");
		insert.executeUpdate();
		try
		{
			insert.close();
		}
		catch (SQLException e)
		{

		}
		conn.commit();
		conn.close();
	}

	public void recibir() throws SQLException, UsuarioBaneadoException
	{
		Connection conn=c.getConn();
		PreparedStatement ps = conn.prepareStatement("select * from usuarios where pass=? and (id=? or email=?)");
		ps.setString(0, this.getPass());
		ps.setString(1, this.getId());
		ps.setString(2, this.getId());
		ResultSet rs=ps.executeQuery();
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
	}

	
	
}
