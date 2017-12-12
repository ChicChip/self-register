package s_rtest;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;


public class sign {
    private String nickname;
    private String ID;
    private String password;
    private String realname;
    private String doctorname;
    private String type;
    private String result;
    private int deleterank;
    
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
    private List<String> showdate = new LinkedList<String>();
    private List<String> peopleofdate = new LinkedList<String>();
    //注册函数
    public String reg() throws SQLException {
    	List<String> res = new LinkedList<String>();
		String sql="select * from user where nickname=?";
		String sql1="select * from user where ID=?";
		String sql2="insert into user(nickname,ID,password,realname) values(?,?,?,?)";
		DBlogin con = new DBlogin();
        res = con.Select(sql,nickname);
	    if(res.size()!=0) {
	    	result = "用户已存在";
			return "Fail";
		}
	    res.clear();
	    res = con.Select(sql1,ID);
	    if(res.size()!=0) {
	    	result = "此身份证已注册过";
			return "Fail";
	    }
	    res.clear();
	    if(password.length()<6 || password.length()>32) {
	    	result = "密码在6-32之间";
	    	return "Fail";
	    }
	    if(con.Insert(sql2, nickname, ID, password, realname)==1) {
	    	return "Success";
	    }
	    else
	    	return "Fail";
    }
    
    //登录
    public String Login() throws SQLException {
    	List<String> res = new LinkedList<String>();
		String sql="select * from user where nickname=?";
		String sql1="select * from doctor where doctorname=?";
		String sql2="select * from Admin where name=?";
		DBlogin con = new DBlogin();
		if(type.equals("1")) {
			res.clear();
		    res = con.Select(sql, nickname);
		    if(res.size()==0) {
		    	result = "用户不存在，先注册";
		    	return "Fail";
		    }
		    else {
		        if(res.get(2).equals(password)) {
		        	String id = res.get(1);
		        	String na = res.get(3);
		        	ActionContext.getContext().getSession().put("user", nickname);
		        	session.setAttribute("type", type);
		        	session.setAttribute("ID", id);
		        	session.setAttribute("Name", na);
		        	//session.setAttribute("user", nickname);
		    	    return "Success";
		        }
		        else{
		        	result = "密码错误！";
			    	return "Fail";
		        }
		    }
		}
		else if(type.equals("2")) {
			res.clear();
		    res = con.Select(sql1, nickname);
		    if(res.size()==0) {
		    	result = "用户不存在";
		    	return "Fail";
		    }
		    else {
		        if(res.get(5).equals(password)) {
		    	    session.setAttribute("user", nickname);
		    	    session.setAttribute("type", type);
		    	    session.setAttribute("Name", nickname);
		    	    return "Success";
		        }
		        else{
		        	result = "密码错误！";
			    	return "Fail";
		        }
		    }
		}
		else if(type.equals("3")) {
			res.clear();
		    res = con.Select(sql2, nickname);
		    if(res.size()==0) {
		    	result = "账号不存在";
		    	return "Fail";
		    }
		    else {
		        if(res.get(2).equals(password)) {
		    	    //session.setAttribute("user", nickname);
		    	    //session.setAttribute("type", type);
		    	    return "Admin";
		        }
		        else{
		        	result = "密码错误！";
			    	return "Fail";
		        }
		    }
		}
		else
			return "Fail";
    }
    
    //登出
    public String Signout() {
    	session.removeAttribute("user");
    	session.removeAttribute("type");
    	return "Success";
    }
    
    /*//展示病人消息
    public String Showmymessage() {
    	List<String> res = new LinkedList<String>();
		String sql="select * from user where nickname=?";
		DBlogin con = new DBlogin();
		res = con.Select(sql, nickname);
		session.setAttribute("mymessage",res);
    	return "Success";
    }*/
    
    public String Showdocmessage() throws SQLException{
    	List<String> res = new LinkedList<String>();
    	Date dt = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		String nowdate = sdf.format(dt);
		String sql="select * from patient where urdoctor=? and selecteddate>=? ORDER BY selecteddate,ctime";
		DBlogin con = new DBlogin();
		res = con.Select(sql, nickname,nowdate);
		session.setAttribute("docmessage",res);
    	return "Success";
    }
    
    public String Showdocmessagetoday() throws SQLException{
    	List<String> res = new LinkedList<String>();
    	Date dt = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		String nowdate = sdf.format(dt);
		String sql="select * from patient where urdoctor=? and selecteddate=? order by ctime";
		DBlogin con = new DBlogin();
		res = con.Select(sql, nickname,nowdate);
		session.setAttribute("docmessage",res);
    	return "Success";
    }
    
    //展示医生时间表
    public String Showschedule() {
    	
    	return "Success";
    }
    
    //展示病人事务
    public String Showcare() throws SQLException {
    	List<String> res = new LinkedList<String>();
		String sql="select * from user where nickname=?";
		String sql1="select * from patient where id=? order by selecteddate";
		DBlogin con = new DBlogin();
		res = con.Select(sql, nickname);
		String id = res.get(1);
		res.clear();
		res = con.Select(sql1, id);
		session.setAttribute("message",res);
    	return "Success";
    }
	public String showSchedule() throws SQLException
	{
		Date dt = new Date();
		DBlogin c = new DBlogin();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//String nowdate = sdf.format(dt);
		String sqlforworkdate = "select * from workdate where doctorname=?";
		System.out.println(sqlforworkdate+nickname);
		//session.setAttribute("nowdate", nowdate);
		showdate = c.Select(sqlforworkdate, nickname);
		peopleofdate = c.Select(sqlforworkdate, nickname);
		System.out.println(showdate.size());
		for(int i = 1;i<=16;i+=2)
		{
			Date dt1 = new Date();
			long waittime = (i+1)/2 * 24 * 3600 * 1000;
			Date dt2 = new Date(dt.getTime()+waittime);
			showdate.set(i, sdf.format(dt2));
			showdate.set(i+1, sdf.format(dt2));								
		}
		session.setAttribute("showdate", showdate);
		session.setAttribute("nickname", nickname);
		session.setAttribute("peopleofdate",peopleofdate);
		
		return "Success";
		
	}
	public String deleteDate() throws SQLException
	{
		String update ="";
		System.out.println(nickname);
		String [] temp = nickname.split("_");
		System.out.println(temp[0]+"    "+temp[1]);
		nickname = temp[0];
		deleterank = Integer.valueOf(temp[1]);
		if(deleterank%2==0)
		{
			update = Integer.toString((deleterank+1)/2)+"down";
		}
		else
		{
			update = Integer.toString((deleterank+1)/2) + "up";
		}
		System.out.println(update+nickname);
		String setBusy ="UPDATE workdate SET " + update + "=100 where doctorname =\"" + nickname +"\"" ;
		System.out.println(setBusy);
		DBConnection c = new DBConnection();
		c.ope(setBusy);
		return "Success";
	}
	public String circledate() throws SQLException
	{
		List<String> res = new LinkedList<String>();
		//List<String> res1 = new LinkedList<String>();
		DBConnection c = new DBConnection();
		String sql="select * from workdate";
		//String sql1="update workdate set 1up=?,1down=?,2up=?,2down=?,3up=?,3down=?,4up=?,4down=?,5up=?,5down=?,6up=?,6down=?,7up=?,7down=?,8up=?,8down=? where doctorname=";
		
		//DBlogin con = new DBlogin();
       // res = con.Select(sql);
		res = c.select(sql);
        //String res2 = "";
        for(int i=0;i<res.size();i+=17) {
        	String sql2="update workdate set 1up="+res.get(i+3)+",1down="+res.get(i+4)+",2up="+res.get(i+5)+",2down="+res.get(i+6)+",3up="+res.get(i+7)+",3down="+res.get(i+8)
        	+",4up="+res.get(i+9)+",4down="+res.get(i+10)+",5up="+res.get(i+11)+",5down="+res.get(i+12)+",6up="+res.get(i+13)+",6down="+res.get(i+14)+",7up="+res.get(i+15)+
        	",7down="+res.get(i+16)+",8up=0,8down=0 where doctorname=\""+res.get(i)+"\"";
        	System.out.println(sql2);
        	c.ope(sql2);
        	//res2 = sql1+"\""+res.get(i)+"\"";
        	//con.Update(res2, Integer.parseInt(res.get(i+2)), Integer.parseInt(res.get(i+3)), Integer.parseInt(res.get(i+4)), Integer.parseInt(res.get(i+5)), Integer.parseInt(res.get(i+6)), Integer.parseInt(res.get(i+7)), Integer.parseInt(res.get(i+8)), Integer.parseInt(res.get(i+9)), Integer.parseInt(res.get(i+10)), Integer.parseInt(res.get(i+11)),Integer.parseInt(res.get(i+12)), Integer.parseInt(res.get(i+13)), Integer.parseInt(res.get(i+14)), Integer.parseInt(res.get(i+15)), Integer.parseInt(res.get(i+16)), 0);
        }
        
		return "Success";
	}
    
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
    
}
