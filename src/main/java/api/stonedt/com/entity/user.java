package api.stonedt.com.entity;

public class user {
	
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}
	//序号ID
	private int id;
	//用户账号	
	private String account;
	//用户密码
	private String password;
	//姓名
	private String name;
	//联系方式
	private String phone;
	//角色 1代表管理员、2代表普通员工
	private int role;
	//照片
	private String image;
	//e-mail
	private String email;
	
	//有参
	public user(int id, String account, String password, String name, String phone, int role,
			String image) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.role = role;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
// toString方法
	@Override
	public String toString() {
		return "UserEntity [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name
				+ ", phone=" + phone + ", role=" + role + ", image=" + image + ", email=" + email + "]";
	}
	
	
	

}
