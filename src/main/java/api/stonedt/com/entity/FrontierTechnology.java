package api.stonedt.com.entity;
/**
 * 前沿技术
 * @author wangyi
 *
 */
public class FrontierTechnology {
	private int id;
	private String title;
	private String introduction;
	private String orignalurl;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getOrignalurl() {
		return orignalurl;
	}
	public void setOrignalurl(String orignalurl) {
		this.orignalurl = orignalurl;
	}
	public FrontierTechnology(int id, String title, String introduction, String orignalurl) {
		super();
		this.id = id;
		this.title = title;
		this.introduction = introduction;
		this.orignalurl = orignalurl;
	}
	public FrontierTechnology() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
