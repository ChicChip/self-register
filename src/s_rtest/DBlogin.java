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
    private String dbUrl="jdbc:mysql://127.0.0.1/registation?characterEncoding=utf8";  
    private String dbUser="root";  
    private String dbPassword="shanjidian1";
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
    
    public int Insert(String sql,String nickname,String ID,String password,String realname) {
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
    	return flag;
    }
    
    
    public int Update(String sql,String x,String y) {
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
        	return flag;
    }
    
    public List<String> Select(String sql,String x){
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
        	}
        	catch(SQLException e) {
        		e.printStackTrace();
        	}
    	return SelResult;
    }
}
