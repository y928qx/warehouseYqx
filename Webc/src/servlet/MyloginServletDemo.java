package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyloginServletDemo
 */
@WebServlet(description = "测试", urlPatterns = { "/MyloginServletDemo" })
public class MyloginServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyloginServletDemo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>水水水水</title></head>");
		out.println("<body>");
		out.println("<h2>调用了doget()方法</p>");
		out.println("用户输入信息如下：");
		//request.setCharacterEncoding("UTF-8");   //解决中文乱码的第一种方式
		String username = request.getParameter("username");
		username = new String(username.getBytes("iso8859-1"), "UTF-8");//第二种方式， 设置输入的用户名，解决中文乱码，设定request对象字符集
		if (null == username || username == "") {
			username = "未输入";
		}
		String password = request.getParameter("password");
		password = new String(password.getBytes("iso8859-1"), "UTF-8");// 设置输入的用户名，解决中文乱码，设定request对象字符集
		if (null == password || password == "") {
			password = "未输入";
		}
		out.println("<h2>用户名：" + username + "</h2>");
		out.println("<h2>密码：" + password + "</h2>");
		out.println("</body>");
		out.println("</html>");
		/* out.close(); */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
