package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Docter;

public class DocterDao {
	private Connection conn;
	
	public DocterDao(Connection conn) {
		super();
		this.conn=conn;
		
	}
	public boolean registerDocter(Docter d) {
		
		boolean f=false;
		try {
			String sql="insert into docter(fullName,dob,qualification,specialist,email,mobNo,password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			 
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Docter> getAllDocter(){ 
		List<Docter> list=new ArrayList<Docter>();
		Docter d=null;
		try {
			String sql="select * from docter order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {				
					d = new Docter();
					d.setId(rs.getInt(1));
					d.setFullName(rs.getString(2));
					d.setDob(rs.getString(3));
					d.setQualification(rs.getString(4));
					d.setSpecialist(rs.getString(5));
					d.setEmail(rs.getString(6));
					d.setMobNo(rs.getString(7));
					d.setPassword(rs.getString(8));
					list.add(d);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Docter getDocterbyId(int id){ 
		
		Docter d=null;
		try {
			String sql="select * from docter where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {				
					d = new Docter();
					d.setId(rs.getInt(1));
					d.setFullName(rs.getString(2));
					d.setDob(rs.getString(3));
					d.setQualification(rs.getString(4));
					d.setSpecialist(rs.getString(5));
					d.setEmail(rs.getString(6));
					d.setMobNo(rs.getString(7));
					d.setPassword(rs.getString(8));
					
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
public boolean UpdateDocter(Docter d) {
		
		boolean f=false;
		try {
			String sql="update docter set fullName=?,dob=?,qualification=?,specialist=?,email=?,mobNo=?,password=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			 
			ps.setString(1, d.getFullName());
			ps.setString(2, d.getDob());
			ps.setString(3, d.getQualification());
			ps.setString(4, d.getSpecialist());
			ps.setString(5, d.getEmail());
			ps.setString(6, d.getMobNo());
			ps.setString(7, d.getPassword());
			ps.setInt(8,d.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
		public boolean deleteDocter(int id) {
			boolean f=false;
			try {
				String sql="delete from docter where id=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, id);
				
				int i=ps.executeUpdate();
				if(i==1) {
					f=true;
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		public Docter login(String email,String password) {
			Docter d=null;
			try {
				String sql="Select * from docter where email=? and password=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					d=new Docter();
					d.setId(rs.getInt(1));
					d.setFullName(rs.getString(2));
					d.setDob(rs.getString(3));
					d.setQualification(rs.getString(4));
					d.setSpecialist(rs.getString(5));
					d.setEmail(rs.getString(6));
					d.setMobNo(rs.getString(7));
					d.setPassword(rs.getString(8)); 
					
				}
				
				
			} catch (Exception e) {
				
			}
			return d;
		}

}
