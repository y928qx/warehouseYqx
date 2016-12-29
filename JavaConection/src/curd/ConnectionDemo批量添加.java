package curd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class ConnectionDemo批量添加 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ybase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {

		Class.forName(DBDRIVER);
		Connection coon = DriverManager.getConnection(DBURL, DBUSER, DBPWD);

		String sql = "insert into text(name,age,phone,brithplace) values";
		PreparedStatement st = (PreparedStatement) coon.prepareStatement(sql);
		//Statement st=(Statement)coon.createStatement();
		st.addBatch(sql+"('山治',20,123456789,'北海');");  
		st.addBatch(sql+"('娜美',18,123456789,'南海海');"); 
		st.addBatch(sql+"('布鲁克',120,123456789,'新世界');"); 
		st.addBatch(sql+"('罗宾',23,123456789,'北海道');"); 
		
		  //   int cs  = st.executeUpdate();
               int cs[]=st.executeBatch();
		System.out.println("已经更新的数据   ：" + cs.length); // 向sql中添加字段

		st.close();
		coon.close();

	}

}
