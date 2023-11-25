package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DBConnection;
import models.User;

public class UserDAO extends DBConnection{


	public boolean createUser(User user) {
		// TODO Auto-generated method stub
		String query = "insert into User_Infor(user_name, email, password) values(?,?,?)";
		try {
			Connection cn = super.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setString(1, user.userName());
			ps.setString(2, user.email());
			ps.setString(3, user.password());
			ps.executeUpdate();
			
			// Đóng kết nối
			ps.close();
			cn.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return false;
		
	}


	public void edit(User user) {
		// TODO Auto-generated method stub
		
	}


	public User getUser(String email) {
	    String sql = "SELECT * FROM User_Infor WHERE email = ?";
	    try (Connection cn = super.getConnection();
	         PreparedStatement pr = cn.prepareStatement(sql)) {
	        pr.setString(1, email);
	        try (ResultSet re = pr.executeQuery()) {
	            if (re.next()) {
	                User user = new User(re.getString(2), re.getString(1), re.getString(3), re.getInt(4));
	                System.out.println(user);
	                return user;
	            } else {
	                // Xử lý trường hợp không tìm thấy người dùng ở đây
	                System.out.println("Không tìm thấy người dùng có userName = " + email);
	                return null;
	            }
	        }
	    } catch (Exception e) {
	        System.out.println("Có lỗi xảy ra");
	        e.printStackTrace();
	    }
	    return null;
	}

}
