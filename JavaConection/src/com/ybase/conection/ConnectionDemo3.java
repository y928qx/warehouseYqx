package com.ybase.conection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class ConnectionDemo3 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ybase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {

		Class.forName(DBDRIVER);

		Connection coon = DriverManager.getConnection(DBURL, DBUSER, DBPWD);
		Statement st = (Statement) coon.createStatement();
		String sql = "select * from text";
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			String name = rs.getString(2);   //00000
			int age = rs.getInt(3);    //00000
			System.out.print("name :" + name + "\t");
			System.out.println("age :" + age + "\t");
			System.out.println("------------------------------------------------");
		}
		rs.close();
		st.close();
		coon.close();

	}

}
