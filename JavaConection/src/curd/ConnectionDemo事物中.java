package curd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.Savepoint;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class ConnectionDemo事物中 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/ybase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {

		Class.forName(DBDRIVER);
		Connection coon = DriverManager.getConnection(DBURL, DBUSER, DBPWD);
                             coon.setAutoCommit(false);
                    Savepoint sp=null;
                    try {
		String sql = "insert into text(name,age,phone,brithplace) values";
		PreparedStatement st = (PreparedStatement) coon.prepareStatement(sql);
		//Statement st=(Statement)coon.createStatement();
		st.executeUpdate(sql+"('山治',20,123456789,'北海');");  
		st.executeUpdate(sql+"('娜美',18,123456789,'南海海');"); 
		sp=coon.setSavepoint();
		//以下为手动制造的一个错误....
		st.executeUpdate(sql+"('布鲁克',120,123456789,'新世界');"); 
		st.executeUpdate(sql+"('罗宾',23,123456789,'北海道');"); 
		coon.commit();
		 
			
	
		  
               int cs[]=st.executeBatch();
		System.out.println("已经更新的数据   ：" + cs.length); // 向sql中添加字段

		st.close();
		coon.close();
                	} catch (Exception e) {
            			// TODO Auto-generated catch block
            			e.printStackTrace();
            		}
            		  

	}

}
