package s_rtest;

import java.util.HashMap;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;  
import java.util.Calendar;  
import java.util.Date; 
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class action {
    private String patientname;
    private int age;
    private String id;
    private String tel;
    private String yourillness;
    private String doctorname;
    private String sex;
    private String room;
    private String direction;
    private String recommendRoom;
    private String timeseg;
    private int rank;
    private String nickname;
    private int deleterank;
    private String selecteddate;
    public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	private int NUMLIMIT = 20;
    private double MAX = 999999999;
    private int limitpatients;
    private String mysql_department_doctor;
    private List<String> targetdoctor = new LinkedList<String>();
    private List<String> showdate = new LinkedList<String>();
    private List<String> department_doctor = new LinkedList<String>();
    ServletRequest request = ServletActionContext.getRequest();
	ServletRequest request2 = ServletActionContext.getRequest();
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession session = req.getSession();
    

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
    
	//登录
	public String login() {
		
		return"";
	}
	
	//医生查询，首页输姓名
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
	
	//挂号信息插入数据库
	public String registerInfo() throws ParseException {
		DBConnection c = new DBConnection();
		System.out.println("info:"+selecteddate+timeseg+rank);
		String mysql_forthisdoctor ="select * from doctor where doctorname = \"" + doctorname + "\"";
		System.out.println(mysql_forthisdoctor);
		System.out.println("if received:"+doctorname+selecteddate+"!!!!"+timeseg);
		//Integer urnum = Integer.parseInt(c.select(mysql_forthisdoctor).get(3));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date dt1 = new Date();
		if (timeseg.equals("上午"))
			 dt1 = sdf.parse(selecteddate+" 08:00");
		else
			 dt1 = sdf.parse(selecteddate+" 14:00");	
		long waittime = (rank-1) * 24 *60 * 1000;
		Date dt2 = new Date(dt1.getTime()+waittime);
		System.out.println(sdf.format(dt2));
		String bookedtime ="";
		bookedtime = sdf.format(dt2);
		session.setAttribute("doctorname", doctorname);
		session.setAttribute("rank", rank);
		session.setAttribute("bookedtime", bookedtime);
		String insertpatient = "INSERT into patient values(\"" + patientname +"\",\"" + id +"\"," + Integer.toString(age) +",\""  
				+ tel + "\",\"" + doctorname + "\",\"" + sex +"\",\"" + String.valueOf(rank)+ "\",\"" + selecteddate + "\",\""+ bookedtime+"\",null)";
		System.out.println(insertpatient);
		c.ope(insertpatient);
		return "Success";
	}
	
	//选择医生，人满失败，人少成功
	public String beMypatient() throws ParseException {
		//int register_flag = 1;
		System.out.println("doctorname1:"+doctorname);
		if(doctorname == null || doctorname.equals(""))
			doctorname = (String) session.getAttribute("doctorname1");
		else
			session.setAttribute(doctorname, "doctorname1");
		if(selecteddate == null || selecteddate.equals(""))
			return "input";
		session.setAttribute("timeseg",timeseg );
		int daysbetween;
		String nowdate ="";
		Date dt = new Date();
		Date dt1 = new Date();
		Date dt2 = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		nowdate = sdf.format(dt);
		dt1 =sdf.parse(nowdate);
		dt2 =sdf.parse(selecteddate);
		daysbetween = (int) ((dt2.getTime() - dt1.getTime()) / (1000*3600*24));
		System.out.println("selecteddate:"+selecteddate);
		System.out.println("nowdate:"+nowdate);
		System.out.println("daysbetween:"+daysbetween);
		if (daysbetween > 5)
			return "overdate";
		String register_flag = "";
		System.out.println("doctorname2:"+doctorname + "date:" + selecteddate);
		DBConnection c = new DBConnection();
		String sql_fordoctor = "SELECT * from workdate where doctorname = \"" + doctorname + "\"";
		System.out.println(sql_fordoctor);
		targetdoctor = c.select(sql_fordoctor);
		System.out.println(targetdoctor.get(0));
		int targetRank;
		if (timeseg.equals("down"))
			targetRank = 2 * daysbetween;
		else
			targetRank = 2 * daysbetween -1 ;
		int thislimit = Integer.valueOf(targetdoctor.get(targetRank));
		String thisdoctorname = targetdoctor.get(0);
		if(thislimit >= 10)
			register_flag = "overpeople";
		else
		{
			thislimit++;
			System.out.println(String.valueOf(thislimit));
			rank = thislimit;
			session.setAttribute("rank",String.valueOf(rank));
			String updatevolume = "UPDATE workdate SET "+ daysbetween + timeseg +" = " + rank + " where doctorname = \"" + thisdoctorname + "\"" ;
			System.out.println(updatevolume);
			c.ope(updatevolume);
			register_flag = "Success";
		}
		
		
		return register_flag;
	}
	
	//根据病情推荐医生 --yourillness
	@SuppressWarnings("unchecked")
	public String recommend() {
		DBConnection c = new DBConnection();
//		department_doctor = c.select(mysql_department_doctor);
		department_doctor = (List<String>) ActionContext.getContext().getSession().get("department_doctor");
		//System.out.println(String.format("Hashes is %d", department_doctor.hashCode()));
		LevenshteinDistance l = new LevenshteinDistance();
		double max = 0 ;
		double similar_indicator;
		int targetrankOfdoctor1 = 0;
		int targetrankOfdoctor2 = 0;
		int targetrankOfdoctor3 = 0;
		double[] similarindex = new double[department_doctor.size()/6];
		int j = 0;
		System.out.println("111111111111111111111111");
		System.out.println(department_doctor.size());
		for (int i = 0;i<department_doctor.size();i += 6)
		{
			similar_indicator=l.LevenshteinDistancePercent(yourillness, department_doctor.get(i+2));
			/*if (similar_indicator>max)
			{
				max = similar_indicator;
				targetrankOfdoctor = i;
			}*/
			similarindex[j++]=similar_indicator;
		}
		for(int i =0 ; i <similarindex.length;i++)
		{
			System.out.println(similarindex[i]);		
		}

		for(int i =0 ; i <similarindex.length;i++)
		{
			if(similarindex[i]>=max)
			{
				max = similarindex[i];
				targetrankOfdoctor1 = i;
			}			
		}
		similarindex[targetrankOfdoctor1] = -1;
		System.out.println("第一次");
		for(int i =0 ; i <similarindex.length;i++)
		{
			System.out.println(similarindex[i]);		
		}
		
		max = 0;
		for(int i =0 ; i <similarindex.length;i++)
		{
			if(similarindex[i]>=max)
			{
				max = similarindex[i];
				targetrankOfdoctor2 = i;
			}			
		}
		similarindex[targetrankOfdoctor2] = -1;
		System.out.println("第2次");
		for(int i =0 ; i <similarindex.length;i++)
		{
			System.out.println(similarindex[i]);		
		}
		max = 0;
		for(int i =0 ; i <similarindex.length;i++)
		{
			if(similarindex[i]>=max)
			{
				max = similarindex[i];
				targetrankOfdoctor3 = i;
			}			
		}
		System.out.println("第3次");
		for(int i =0 ; i <similarindex.length;i++)
		{
			System.out.println(similarindex[i]);		
		}
		
		session.setAttribute("department_doctor", department_doctor);
		//session.setAttribute("doctorname", doctorname);
		session.setAttribute("targetrankOfdoctor1", targetrankOfdoctor1);
		session.setAttribute("targetrankOfdoctor2", targetrankOfdoctor2);
		session.setAttribute("targetrankOfdoctor3", targetrankOfdoctor3);
		System.out.println(targetrankOfdoctor1);
		System.out.println(targetrankOfdoctor2);
		System.out.println(targetrankOfdoctor3);
		System.out.println(yourillness);
	//	System.out.println(department_doctor.get(targetrankOfdoctor));
		return"Success";
	}
	
	//展示科室医生 --使用首页科室选择（room）
	public String showroomDoc() {
		DBConnection c = new DBConnection();
		ActionContext context = ActionContext.getContext(); // 
		HashMap<String , String> map = new HashMap<String , String>();
		map.put("1", "内科");map.put("2","外科");map.put("3","妇产科");map.put("4","儿科");
		map.put("5","康复医学科");map.put("6","中医科");map.put("7","肿瘤科");map.put("8","五官科");
		map.put("9","传染科");map.put("10","男科");map.put("11","精神心理科");
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
		session.setAttribute("room", room);
		//department_doctor = c.select(mysql_department_doctor);
		System.out.println(room);
		return "Success";
	}	
	public String chooseRecommend()
	{
		System.out.println(room);
		return room;
		
	}
	public String showSchedule()
	{
		Date dt = new Date();
		DBConnection c = new DBConnection();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String nowdate = sdf.format(dt);
		String sqlforworkdate = "select * from workdate where doctorname = \""+ nickname +"\"";
		//session.setAttribute("nowdate", nowdate);
		showdate = c.select(sqlforworkdate);
		for(int i = 0;i<=9;i+=2)
		{
			Date dt1 = new Date();
			long waittime = (i/2 + 1) * 24 * 3600 * 1000;
			Date dt2 = new Date(dt.getTime()+waittime);
			showdate.set(i, sdf.format(dt2));
			showdate.set(i+1, sdf.format(dt2));								
		}
		session.setAttribute("showdate", showdate);
		session.setAttribute("nickname", nickname);
		
		return "Success";
		
	}
	public String deleteDate()
	{
		String update ="";
		if(deleterank%2==0)
		{
			update = Integer.toString(deleterank/2 + 1)+"up";
		}
		else
		{
			update = Integer.toString(deleterank/2 +1) + "down";
		}
		String setBusy ="UPDATE workdate SET " + update + "=100 where doctorname =\"" + nickname + "\"" ;
		DBConnection c =  new DBConnection();
		c.ope(setBusy);
		return "Success";
	}
	public String gotoRegister()
	{
		return "Success";
	}

	public String selectaction()
	{
		System.out.print(selecteddate);
		System.out.print("00000000000");
		doctorname = (String)session.getAttribute("doctorname");
		System.out.print("00000000000");
		return "Success";
	}
	public String getSelecteddate() {
		return selecteddate;
	}
	public void setSelecteddate(String selecteddate) {
		this.selecteddate = selecteddate;
	}
	public String getTimeseg() {
		return timeseg;
	}
	public void setTimeseg(String timeseg) {
		this.timeseg = timeseg;
	}

}
