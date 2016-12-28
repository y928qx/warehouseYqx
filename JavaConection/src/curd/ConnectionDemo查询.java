package curd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class ConnectionDemo查询 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ybase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {

		Class.forName(DBDRIVER);
		Connection coon = DriverManager.getConnection(DBURL, DBUSER, DBPWD);

		String sql = "insert into text(name,age,phone,brithplace) values(?,?,?,?)";
		PreparedStatement st = (PreparedStatement) coon.prepareStatement(sql);
		st.setString(1, "乔巴");
		st.setInt(2, 22);
		st.setLong(3, 18297932222L);
		st.setString(4, "新世界");

		int cs = st.executeUpdate();

		// int cs=st.executeUpdate(sql);

		System.out.println("已经更新的数据   ：" + cs); // 向sql中添加字段

		st.close();
		coon.close();

	}

}
