package com.koreait.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public RegisterDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url, "sikohlee", "6725");
//			System.out.println("연결 성공 : " + conn);
		}catch (Exception e) {
			e.printStackTrace();	
		}
		
	}
	
//  회원정보
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from SMILEPIZZA where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
						return 1;
				}else {
						return 0;
				}
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public int join(RegisterVO vo) {
		try {
			String sql ="insert into SMILEPIZZA (userID, userPassword, userName, userBirth, userPhone) values (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserID());
			pstmt.setString(2, vo.getUserPassword());
			pstmt.setString(3, vo.getUserName());
			pstmt.setString(4, vo.getUserBirth());
			pstmt.setString(5, vo.getUserPhone());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	
}
