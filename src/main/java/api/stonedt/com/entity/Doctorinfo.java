package api.stonedt.com.entity;
/**
 * 
 * @author Administrator
 *医生
 */

import java.util.Date;

public class Doctorinfo {
   
	//id
	private int id;
	//医生姓名
	private String doctorname;
	//职称
	private String positionaltitles;
	//科室
	private String office;
	//信息数量
	private int newsnum;
	//更新时间
	private Date updatetime;
	//类型 1代表院领导 2代表专家
	private int type;
	//img医生头像地址
	private String img;
	//医院id
	private int hospitalid;
	//医生介绍
	private String doctorintroduction;
	
	private Hospitalnews Hospitalnewslist;
	
	public Hospitalnews getHospitalnewslist() {
		return Hospitalnewslist;
	}
	public void setHospitalnewslist(Hospitalnews hospitalnewslist) {
		Hospitalnewslist = hospitalnewslist;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getPositionaltitles() {
		return positionaltitles;
	}
	public void setPositionaltitles(String positionaltitles) {
		this.positionaltitles = positionaltitles;
	}
	public String getOffice() {
		return office;
	}
	public void setOffice(String office) {
		this.office = office;
	}
	public int getNewsnum() {
		return newsnum;
	}
	public void setNewsnum(int newsnum) {
		this.newsnum = newsnum;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getHospitalid() {
		return hospitalid;
	}
	public void setHospitalid(int hospitalid) {
		this.hospitalid = hospitalid;
	}
	public String getDoctorintroduction() {
		return doctorintroduction;
	}
	public void setDoctorintroduction(String doctorintroduction) {
		this.doctorintroduction = doctorintroduction;
	}
	
	
	
	
}
