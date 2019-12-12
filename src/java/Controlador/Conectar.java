package Controlador;

import java.sql.*;

public class Conectar
{
    private Connection connection;
    private Statement statement;
    private ResultSet rset;
    
    public Conectar()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e) 
        {
        }
        
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fctpilot","fctPilot","fctPilot");
            statement = connection.createStatement();
        } catch (SQLException e) { System.err.println("\n\n\n !!!!! AAAAAAAAA\n\nTe has dejado el driver\n\n"+e.getMessage()+"\n\n\n s'acabó"); }
    }
    
    public Connection getConn()
    {
        return connection;
    }
    
    public void ejecutar(String sql) throws SQLException
    {
        if (statement==null||statement.isClosed())
            statement=connection.createStatement();
        
        rset=statement.executeQuery(sql);
    }
	public void lanzar(String sql) throws SQLException
    {
        statement.executeUpdate(sql);
    }
    public ResultSet getRset()
    {
        return rset;
    }
	
	public boolean closeResultset(ResultSet rst)
	{
		try
		{
			if (!rst.isClosed())
				rst.close();
			return true;
		}
		catch (SQLException e)
		{
			return false;
		}
	}
    
}
