package s_rtest;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class action {
    private String loginname;
    private String password;
    private String loginer;
    private String patientname;
    private int age;
    private String id;
    private String tel;
    private String yourillness;
    private String doctorname;
    private String sex;
    private String room;
    private String direction;
    private int NUMLIMIT = 20;
    private double MAX = 999999999;
    private int limitpatients;
    private String mysql_department_doctor;
    private List<String> targetdoctor = new LinkedList<String>();
    private List<String> department_doctor = new LinkedList<String>();
    ServletRequest request = ServletActionContext.getRequest();
	ServletRequest request2 = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
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
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
    
	//��¼
	public String login() {
		
		return"";
	}
	
	//ҽ����ѯ����ҳ������
	public String doctorQuery() {
		String resultflag = "";
		DBConnection c = new DBConnection();
		String sql_fordoctor = "SELECT * from doctor where doctorname = \"" + doctorname + "\"";
		targetdoctor = c.select(sql_fordoctor);
		if (targetdoctor.size() == 0)
			resultflag = "Fail";
		else
		{
			session.setAttribute("targetdoctor", targetdoctor);	
			resultflag = "Success";
		}
			
		return resultflag;
	}
	
	//�Һ���Ϣ�������ݿ�
	public String registerInfo() {
		DBConnection c = new DBConnection();
		String insertpatient = "INSERT into patient values(\"" + patientname +"\",\"" + id +"\"," + Integer.toString(age) +",\""  
				+ tel + "\",\"" + doctorname + "\",\"" + sex +"\")";
		String mysql_forthisdoctor ="select * from doctor where doctorname = \"" +doctorname+"\"";
		Integer urnum = Integer.parseInt(c.select(mysql_forthisdoctor).get(3));
		session.setAttribute("doctorname", doctorname);
		session.setAttribute("urnum", urnum);
		c.ope(insertpatient);
		return "Success";
	}
	
	//ѡ��ҽ��������ʧ�ܣ����ٳɹ�
	public String beMypatient() {
		//int register_flag = 1;
		String register_flag = "";
		DBConnection c = new DBConnection();
		String sql_fordoctor = "SELECT * from doctor where doctorname = \"" + doctorname + "\"";
		targetdoctor = c.select(sql_fordoctor);
		System.out.println(doctorname);
		System.out.println(targetdoctor.get(0)+targetdoctor.get(1)+targetdoctor.get(2));
		int thislimit = Integer.valueOf(targetdoctor.get(3));
		String thisdoctorname = targetdoctor.get(0);
		if(thislimit >= 20)
			register_flag = "Fail";
			
		else
		{
			thislimit++;
			String updatevolume = "UPDATE doctor SET volume = " + thislimit + " where doctorname = \"" + thisdoctorname + "\"" ;
			c.ope(updatevolume);
			register_flag = "Success";
		}
		
		
		return register_flag;
	}
	
	//���ݲ����Ƽ�ҽ�� --yourillness
	@SuppressWarnings("unchecked")
	public String recommend() {
		DBConnection c = new DBConnection();
//		department_doctor = c.select(mysql_department_doctor);
		department_doctor = (List<String>) ActionContext.getContext().getSession().get("department_doctor");
		//System.out.println(String.format("Hashes is %d", department_doctor.hashCode()));
		LevenshteinDistance l = new LevenshteinDistance();
		double max = 0 ;
		double similar_indicator;
		int targetrankOfdoctor = 0;
		for (int i = 0;i<department_doctor.size();i += 4)
		{
			similar_indicator=l.LevenshteinDistancePercent(yourillness, department_doctor.get(i+2));
			if (similar_indicator>max)
			{
				max = similar_indicator;
				targetrankOfdoctor = i;
			}
		}
		doctorname = department_doctor.get(targetrankOfdoctor);
		session.setAttribute("department_doctor", department_doctor);
		session.setAttribute("doctorname", doctorname);
		session.setAttribute("targetrankOfdoctor", targetrankOfdoctor);
		System.out.println(yourillness);
		System.out.println(department_doctor.get(targetrankOfdoctor));
		return"Success";
	}
	
	//չʾ����ҽ�� --ʹ����ҳ����ѡ��room��
	public String showroomDoc() {
		DBConnection c = new DBConnection();
		ActionContext context = ActionContext.getContext(); // 
		HashMap<String , String> map = new HashMap<String , String>();
		map.put("1", "�ڿ�");map.put("2","���");map.put("3","������");map.put("4","����");
		map.put("5","����ҽѧ��");map.put("6","��ҽ��");map.put("7","������");map.put("8","��ٿ�");
		map.put("9","��Ⱦ��");map.put("10","�п�");map.put("11","���������");
		String chosen_department = map.get(room);
		@SuppressWarnings("unchecked")
		Map<String, List<String>> departments = (Map<String, List<String>>) context.getApplication()
				.getOrDefault("departments", new HashMap<String, LinkedList<String>>());
		if(departments.containsKey(chosen_department))
			department_doctor = departments.get(chosen_department);
		else {
			mysql_department_doctor = "Select * from doctor where department = \"" + chosen_department + "\""; 
			department_doctor = c.select(mysql_department_doctor);
			departments.put(chosen_department, department_doctor);
			context.getApplication().put("department", departments);
		}
		context.getSession().put("department_doctor", department_doctor);
//		System.out.println(department_doctor.hashCode());
		System.out.println(String.format("Hash is %d", department_doctor.hashCode()));
		session.setAttribute("department_doctor", department_doctor);
		//department_doctor = c.select(mysql_department_doctor);
		System.out.println(room);
		return "Success";
	}
	
}
