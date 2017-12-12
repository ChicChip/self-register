package s_rtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class DBlogin {
	private String dbDriver="com.mysql.jdbc.Driver";   
    private String dbUrl="jdbc:mysql://localhost:3306/registration?characterEncoding=utf8";  
    private String dbUser="root";  
    private String dbPassword="317263005";
    DBlogin(){
    	
    }
    
    public Connection ConnectMysql() {
    	Connection connect = null;
    	try {
    		Class.forName(dbDriver);
    	}
    	catch(ClassNotFoundException e){
    		e.printStackTrace();
    	}
    	try {
    		connect = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    	}
    	return connect;
    }
    
    public int Insert(String sql,String nickname,String ID,String password,String realname) throws SQLException {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
    	PreparedStatement add = con.prepareStatement(sql);
    	add.setString(1, nickname);
    	add.setString(2, ID);
    	add.setString(3, password);
    	add.setString(4, realname);
    	flag = add.executeUpdate();
    	}
    	catch(SQLException e) {
    		e.printStackTrace();
    	}
    	con.close();
    	return flag;
    }
    
    
    public int Update(String sql,String x,String y) throws SQLException {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	if(!x.equals("")) {
        		add.setString(1, x);
        		add.setString(2, y);
            }
        	else
        		add.setString(1, y);
        	flag = add.executeUpdate();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	con.close();
        	return flag;
    }
    
    public List<String> Select(String sql) throws SQLException{
    	List<String> SelResult = new LinkedList<String>();
    	Connection con = ConnectMysql();
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	ResultSet rs = add.executeQuery();
        	while(rs.next())  
            {  
                for(int i = 1;i<=rs.getMetaData().getColumnCount();i++){
                SelResult.add(rs.getString(i));}
            } 
        	rs.close();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	con.close();
    	return SelResult;
    }
    
    public List<String> Select(String sql,String x) throws SQLException{
    	List<String> SelResult = new LinkedList<String>();
    	Connection con = ConnectMysql();
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	if (!x.equals(""))
        	    add.setString(1, x);
        	ResultSet rs = add.executeQuery();
        	while(rs.next())  
            {  
                for(int i = 1;i<=rs.getMetaData().getColumnCount();i++){
                SelResult.add(rs.getString(i));}
            }  
        	rs.close();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	con.close();
    	return SelResult;
    }
    
    public List<String> Select(String sql,String x,String y) throws SQLException{
    	List<String> SelResult = new LinkedList<String>();
    	Connection con = ConnectMysql();
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        	if (!x.equals("")&&!y.equals("")) {
        	    add.setString(1, x);
        	    add.setString(2, y);
        	    }
        	ResultSet rs = add.executeQuery();
        	while(rs.next())  
            {  
                for(int i = 1;i<=rs.getMetaData().getColumnCount();i++){
                SelResult.add(rs.getString(i));}
            }  
        	rs.close();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	con.close();
    	return SelResult;
    }
    public int Update(String sql,int x0,int x1,int x2,int x3,int x4,int x5,int x6,int x7,int x8,int x9,int x10,int x11,int x12,int x13,int x14,int x15) throws SQLException {
    	Connection con = ConnectMysql();
    	int flag = 0;
    	try {
        	PreparedStatement add = con.prepareStatement(sql);
        		add.setInt(1, x0);
        		add.setInt(2, x1);
        		add.setInt(3, x2);
        		add.setInt(4, x3);
        		add.setInt(5, x4);
        		add.setInt(6, x5);
        		add.setInt(7, x6);
        		add.setInt(8, x7);
        		add.setInt(9, x8);
        		add.setInt(10, x9);
        		add.setInt(11, x10);
        		add.setInt(12, x11);
        		add.setInt(13, x12);
        		add.setInt(14, x13);
        		add.setInt(15, x14);
        		add.setInt(16, x15);
            
        	flag = add.executeUpdate();
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	con.close();
        	return flag;
    }

    
}
