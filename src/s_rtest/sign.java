package s_rtest;

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
    
    ServletRequest request = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
    
    //注册函数
    public String reg() {
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
    public String Login() {
    	List<String> res = new LinkedList<String>();
		String sql="select * from user where nickname=?";
		String sql1="select * from doctor where doctorname=?";
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
		else
			return "";
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
    
    public String Showdocmessage(){
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
    
    public String Showdocmessagetoday(){
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
    public String Showcare() {
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
