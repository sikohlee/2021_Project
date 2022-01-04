package com.koreait.Service;

public class RegisterVO {

	private String userID;
	private String userPassword;
	private String userName;
	private String userBirth;
	private String userPhone;
	
	public RegisterVO() { }

	public RegisterVO(String userID, String userPassword, String userName, String userBirth, String userPhone) {
		super();
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	@Override
	public String toString() {
		return "RegisterVO [userID=" + userID + ", userPassword=" + userPassword + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userPhone=" + userPhone + "]";
	}
	
	
	
}
