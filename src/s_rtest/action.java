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
    
	//��¼
	public String login() {
		
		return"";
	}
	
	//ҽ����ѯ����ҳ������
	public String doctorQuery() {
		
		return"";
	}
	
	//�Һ���Ϣ�������ݿ�
	public String registerInfo() {
		
		return"";
	}
	
	//ѡ��ҽ��������ʧ�ܣ����ٳɹ�
	public String beMypatient() {
		
		return "";
	}
	
	//���ݲ����Ƽ�ҽ�� --yourillness
	public String recommend() {
		System.out.println(yourillness);
		return"";
	}
	
	//չʾ����ҽ�� --ʹ����ҳ����ѡ��room��
	public String showroomDoc() {
		System.out.println(room);
		return"";
	}
	
}
