package curd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class ConnectionDemo添加 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ybase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {

		Class.forName(DBDRIVER);

		Connection coon = DriverManager.getConnection(DBURL, DBUSER, DBPWD);
		Statement st = (Statement) coon.createStatement();
		String sql = "insert into text(name,age,phone,brithplace) values('帽子',12,123456,'安徽') ";
		
		int cs=st.executeUpdate(sql);
		System.out.println("已经更新的数据   ："+cs);                                          //向sql中添加字段
		
		st.close();
		coon.close();

	}

}
