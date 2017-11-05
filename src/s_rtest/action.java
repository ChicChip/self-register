package s_rtest;

public class action {
    private String loginname;
    private String password;
    private String loginer;
    private String name;
    private int age;
    private String id;
    private int phonenumber;
    private String yourillness;
    private String doctorname;
    private String sex;
    private String room;
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLoginer() {
		return loginer;
	}
	public void setLoginer(String loginer) {
		this.loginer = loginer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(int phonenumber) {
		this.phonenumber = phonenumber;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getYourillness() {
		return yourillness;
	}
	public void setYourillness(String yourillness) {
		this.yourillness = yourillness;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}  
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
    
	//登录
	public String login() {
		
		return"";
	}
	
	//医生查询，首页输姓名
	public String doctorQuery() {
		
		return"";
	}
	
	//挂号信息插入数据库
	public String registerInfo() {
		
		return"";
	}
	
	//选择医生，人满失败，人少成功
	public String beMypatient() {
		
		return "";
	}
	
	//根据病情推荐医生 --yourillness
	public String recommend() {
		System.out.println(yourillness);
		return"";
	}
	
	//展示科室医生 --使用首页科室选择（room）
	public String showroomDoc() {
		System.out.println(room);
		return"";
	}
	
}
