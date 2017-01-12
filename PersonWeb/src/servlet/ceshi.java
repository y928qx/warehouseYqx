package servlet;

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

/**
 * Servlet implementation class ceshi
 */
@WebServlet("/ceshi")
public class ceshi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//以下为新添加的内容,主要是连接数据库的方法
	private  static final String DBDRIVER="com.mysql.jdbc.Driver";
	private  static final String DBURL="jdbc:mysql//localhost:3306/personweb";
	private  static final String DBUSER="root";
	private  static final String DBPASSWORD="root";
       


	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ceshi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//public static Connection getConnection() throws ClassNotFoundException, Exception{
			Connection coon=null;
			Class.forName(DBDRIVER);
			
			coon= (Connection) DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
			
			Statement st = (Statement) coon.createStatement();
			String sql = "select * from yyy";
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				String nameq = rs.getString("unname");
				int ageq = rs.getInt("pnwd");
				/*System.out.print("name :" + name + "\t");
				System.out.println("age :" + age + "\t");
				System.out.println("------------------------------------------------");*/
				
				
				response.setContentType("text/html;charset=UTF-8");
				request.setCharacterEncoding("UTF-8");
				HttpSession session = request.getSession();
				String name = request.getParameter("uname");
				String pwd = request.getParameter("upass");
				
				if (null != name && null != pwd && nameq.equals(name) ) {
					
					session.setAttribute("userid", name);// 灏嗙敤鎴峰悕淇濆瓨鍦╯ession涓?
					ServletContext context = getServletContext();
					response.setHeader("refresh", "3;url=loginOK.jsp");//瀹氭椂璺宠浆
					RequestDispatcher rd = context.getRequestDispatcher("/welcome.jsp");
					rd.forward(request, response);
				}else {
					ServletContext context1 = getServletContext();
					RequestDispatcher rd = context1.getRequestDispatcher("/loginFailed.jsp");
					rd.include(request, response);
				}
				
				
				
			}
			rs.close();
			st.close();
			coon.close();
			return coon;
		}
		
	
		
	
		
		
	//}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
