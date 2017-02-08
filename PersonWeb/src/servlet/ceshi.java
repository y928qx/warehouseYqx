/*package servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

*//**
 * Servlet implementation class ceshi
 *//*
@WebServlet("/ceshi")
public class ceshi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//以下为新添加的内容,主要是连接数据库的方法
	private  static final String DBDRIVER="com.mysql.jdbc.Driver";
	private  static final String DBURL="jdbc:mysql//localhost:3306/personweb";
	private  static final String DBUSER="root";
	private  static final String DBPASSWORD="root";
	
	
	
	


	
	
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public ceshi() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
		
			try {
				Class.forName(DBDRIVER);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		Connection coon = null;
		
			try {
				coon = (Connection) DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
		
			Statement ss;
			try {
				ss = (Statement) coon.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			// TODO Auto-generated catch block
		
		String sql = "select * from personweb;";
		
		ResultSet rs;
		try {
		ResultSet rs = ss.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		try {
			while (rs.next()) {
				String  name = rs.getString("unname");
				int age = rs.getInt("pnwd");
				
				
				HttpSession session = request.getSession();
				String name1 = request.getParameter("uname");
				String pwd = request.getParameter("upass");
				
				if (null != name && null != pwd && name.equals(name1) ) { //&& pnwd.equals(pwd)
					// response.setHeader("refresh", "3;url=loginOK.jsp");//瀹氭椂璺宠浆
					session.setAttribute("userid", name);// 灏嗙敤鎴峰悕淇濆瓨鍦╯ession涓�
					//session.setAttribute("password", pwd);
					ServletContext context = getServletContext();
					response.setHeader("refresh", "3;url=loginOK.jsp");//瀹氭椂璺宠浆
					RequestDispatcher rd = context.getRequestDispatcher("/welcome.jsp");
					rd.forward(request, response);
				}
				
				
				
				System.out.print("name = " + name + "\t\t");
				System.out.print("age = " + age + "\t\t");
				System.out.println();
				System.out.println("----------------------------");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rs.close();
		ss.close();
		coon.close();
		
       
       
       
		

	}
	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
*/