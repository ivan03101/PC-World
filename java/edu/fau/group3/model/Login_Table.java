package edu.fau.group3.model;

public class Login_Table {
	private int userId;
	private String userName;
	private String passWord;
	private String Email;
	
	public Login_Table() {
		
	}
	
	public Login_Table(String userName, String passWord, String Email) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.Email = Email;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	public String getEmail() {
		return Email;
	}
	
	public void setEmail(String Email) {
		this.Email = Email;
	}
}


