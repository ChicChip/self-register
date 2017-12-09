package s_rtest;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
 


public class DBConnection {

	private String dbURL = "jdbc:mysql://localhost:3306/registation?characterEncoding=utf8";
	private String dbUser = "root";
	private String dbKey = "shanjidian1";

	public Connection getCon()
	{
		java.sql.Connection Con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		try
		{
			Con = DriverManager.getConnection(dbURL,dbUser,dbKey);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return Con;
		
	}
	public int ope(String sql)
	{
		int flag = 0;
		Connection Con = getCon();
		try
		{
			Statement p = Con.createStatement();
			flag = p.executeUpdate(sql);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	public List<String> select(String sql)
	{
		Connection Con = getCon();
		List<String> l = new LinkedList<String>();
		try
		{
			Statement p = Con.createStatement();
			ResultSet q = p.executeQuery(sql);
			while(q.next())
			{
				for(int i = 1;i<=q.getMetaData().getColumnCount();i++)
					l.add(q.getString(i));
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return l;
		
	}
	
	
}


