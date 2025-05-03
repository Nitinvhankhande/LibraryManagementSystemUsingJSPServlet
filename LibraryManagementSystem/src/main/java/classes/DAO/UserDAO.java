package classes.DAO;

import java.sql.*;

import java.util.*;

import classes.model.User;

public class UserDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/library_db";
	private static final String USER = "root";
	private static final String PASSWORD = "Archer@1234";
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static void addUser(User emp) throws SQLException {
		String sql = "INSERT INTO users (username, email, password, role) VALUES (?, ? , ? ,?)";
		try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
				PreparedStatement stmt = con.prepareStatement(sql)) {

			stmt.setString(1, emp.getUsername());
			stmt.setString(2, emp.getEmail());
			stmt.setString(3, emp.getPassword());
			stmt.setString(4, emp.getRole());
			stmt.executeUpdate();
		}
	}

	public static User checkLogin(String email, String password) throws SQLException {
	    String sql = "SELECT * FROM users WHERE email=? AND password=?";

	    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
	         PreparedStatement stmt = conn.prepareStatement(sql)) {

	        stmt.setString(1, email);
	        stmt.setString(2, password);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            User user = new User();
	            user.setId(rs.getInt("user_id"));  // ✅ CRITICAL
	            user.setUsername(rs.getString("username"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setRole(rs.getString("role"));
	            return user;
	        }
	    }
	    return null;
	}

	public static List<User> getAllUsers() throws SQLException {
	    List<User> users = new ArrayList<>();
	    String sql = "SELECT * FROM users WHERE role=?";

	    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, "user"); // ✅ Now role is passed from outside

	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                User u = new User();
	                u.setId(rs.getInt("user_id"));
	                u.setUsername(rs.getString("username"));
	                u.setEmail(rs.getString("email"));
	                u.setRole(rs.getString("role"));
	                users.add(u);
	            }
	        }
	    }

	    return users;
	}
	public static void updateUserRole(int userId, String newRole) throws SQLException {
	    String sql = "UPDATE users SET role = ? WHERE user_id = ?";
	    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	        stmt.setString(1, newRole);
	        stmt.setInt(2, userId);
	        stmt.executeUpdate();
	    }
	}
	public static User getUserById(int id) throws SQLException {
	    String sql = "SELECT * FROM users WHERE user_id = ?";
	    
	    try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
	         PreparedStatement stmt = conn.prepareStatement(sql)) {
	         
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            User user = new User();
	            user.setId(rs.getInt("user_id"));
	            user.setUsername(rs.getString("username"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setRole(rs.getString("role"));
	            return user;
	        }
	    }
	    return null;
	}


}