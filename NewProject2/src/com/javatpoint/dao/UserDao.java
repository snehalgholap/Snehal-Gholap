package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.User;

public class UserDao {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/NewOrphanage1","root","root");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	
	public static List<User> getAllRecords(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from OrphanageListf121");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				
				u.setName(rs.getString("name"));
				u.setChild(rs.getString("child"));
				u.setAddress(rs.getString("Address"));
				u.setContact_no(rs.getInt("ContactNo"));
				u.setEmail_id(rs.getString("Email_id"));
				
				list.add(u);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}

	
	public static User getRecordById(String name){
		User u=null;
		

		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from OrphanageListf121 where name=?");
			ps.setString(1,name);

			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				u=new User();
				
				u.setName(rs.getString("name"));
				u.setChild(rs.getString("child"));
				u.setAddress(rs.getString("Address"));
				u.setContact_no(rs.getInt("ContactNo"));
				u.setEmail_id(rs.getString("Email_id"));


				
				
			}
		}catch(Exception e){System.out.println(e);}
		return u;
	}

	public static User getRecordByName(String name){
		User u=null;
		

		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from OrphanageListf121 where name=?");
			ps.setString(1,name);

			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				u=new User();
				
				u.setName(rs.getString("name"));			
				u.setChild(rs.getString("child"));

				
				
			}	}	
		catch(Exception e){System.out.println(e);}
		return u;
	}

	public static User getRecordg(String name){
		User u=null;
		

		try{
			Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from OrphanageListf121 where name=?");
			ps.setString(1,name);

		ResultSet rs=ps.executeQuery();
			while(rs.next()){
				u=new User();
				
				u.setName(name);
				u.setChild(rs.getString("child"));
			u.setAddress(rs.getString("Address"));
				u.setContact_no(rs.getInt("ContactNo"));
			u.setEmail_id(rs.getString("Email_id"));


				
				
			}
		}catch(Exception e){System.out.println(e);}
		return u;
	}
	public static int save(User u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into SaveAdoptionRequest1(orphanage,first_name,last_name,cno,email_id) values(?,?,?,?,?)");
			ps.setString(1,u.getOrphanage());
			ps.setString(2,u.getfirst_name());
			ps.setString(3,u.getlast_name());
			ps.setString(4,u.getcno());
			ps.setString(5,u.getEmail_id());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int saveOrphanage(User u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into orphanagelistf121(name,child,address,contactno,Email_id) values(?,?,?,?,?)");
			ps.setString(1,u.getName());
			ps.setString(2,u.getChild());
			ps.setString(3,u.getAddress());
			ps.setInt(4,u.getContact_no());
			ps.setString(5,u.getemail());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}

	public static List<User> getAllRecords1(){
		List<User> list=new ArrayList<User>();
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from SaveAdoptionRequest1");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				User u=new User();
				
				u.setOrphanage(rs.getString("orphanage"));
				u.setfirst_name(rs.getString("first_name"));
				u.setlast_name(rs.getString("last_name"));
				u.setcno(rs.getString("cno"));
				u.setEmail_id(rs.getString("email_id"));
				
				list.add(u);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
}
	

