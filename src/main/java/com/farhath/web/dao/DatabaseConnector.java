package com.farhath.web.dao;
import java.io.InputStream;
import java.sql.*;
import com.farhath.web.model.SignupModel;
import com.farhath.web.model.homeModel;
import com.farhath.web.model.loginModel;

public class DatabaseConnector extends Connector{
	
	byte[] imagebytes = null;
	public Connection conn;
	
	String url = "jdbc:mysql://localhost:3306/home_finder";
	String user_name = "root";
	String password = "khelahobe";
	
	
	public void connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user_name,password);
			System.out.println("Connected");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConn(){
		return conn;
	}
	
	public int signup(SignupModel sm){
		try {
			
			String query = "INSERT INTO customer(first_name,last_name,gender,address,mobile_no,email_id,credit_card_no,password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setString(1, sm.getFname());
			ps.setString(2, sm.getLname());
			ps.setString(3, sm.getGender());
			ps.setString(4, sm.getAddress());
			ps.setString(5, sm.getPhone());
			ps.setString(6, sm.getEmail());
			ps.setString(7, sm.getCredit_card());
			ps.setString(8, sm.getPassword());
			
			int count = ps.executeUpdate();
			
			return count;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;	
	}
	
	
	public void loginUser(loginModel lm){
		try{
			
			String query = "SELECT password FROM customer WHERE first_name=?";
			PreparedStatement ps = conn.prepareStatement(query);
			
			ps.setString(1, lm.getUsername());
			
			int count = ps.executeUpdate();
			
		}catch (SQLException e){
			e.printStackTrace();
		}
	}
	
	
	public byte[] searchResult(homeModel hm){
		
		try{
			
			if(hm.getArea().equals("") && hm.getBeds()==0 && hm.getBathrooms()==0 && hm.getPrice()==0){
				String query = "";
			}
			else{
				String init_query = "SELECT flat_id FROM flats WHERE address=? AND beds=? AND bathrooms=? AND rent_price=?";
				PreparedStatement ps = conn.prepareStatement(init_query);
				ps.setString(1, hm.getArea());
				ps.setInt(2, hm.getBeds());
				ps.setInt(3, hm.getBathrooms());
				ps.setInt(4, hm.getPrice());
				
				ResultSet rs = ps.executeQuery();
				int flat_id = 0;
				while(rs.next()){
					flat_id = rs.getInt(1);
				}
				
				String query="SELECT images FROM flat_images WHERE flat_id="+flat_id;
				Statement st = conn.createStatement();
				rs = st.executeQuery(query);
				
				while(rs.next()){
					imagebytes = rs.getBytes(1);
				}
			}
			return imagebytes;
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return imagebytes;
	}
	
	public byte[] getImageBytes(){
		return imagebytes;
	}
	
}
