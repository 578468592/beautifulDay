package api.stonedt.com.entity;

import java.util.Date;

public class Collection {
	private int id;
	private int newsid;
	private int userid;
	private int hospitalid;
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNewsid() {
		return newsid;
	}
	public void setNewsid(int newsid) {
		this.newsid = newsid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getHospitalid() {
		return hospitalid;
	}
	public void setHospitalid(int hospitalid) {
		this.hospitalid = hospitalid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Collection() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Collection(int id, int newsid, int userid, int hospitalid, Date date) {
		super();
		this.id = id;
		this.newsid = newsid;
		this.userid = userid;
		this.hospitalid = hospitalid;
		this.date = date;
	}
	
	

}
