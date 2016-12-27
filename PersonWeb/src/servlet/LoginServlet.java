package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upass");
		if (null != name && null != pwd && "颜庆翔".equals(name) && "123456".equals(pwd)) {
			// response.setHeader("refresh", "3;url=loginOK.jsp");//定时跳转
			session.setAttribute("userid", name);// 将用户名保存在session中
			//session.setAttribute("password", pwd);
			ServletContext context = getServletContext();
			response.setHeader("refresh", "3;url=loginOK.jsp");//定时跳转
			RequestDispatcher rd = context.getRequestDispatcher("/welcome.jsp");
			rd.forward(request, response);
		} else if(null != name || null != pwd || "颜庆翔".equals(name) || "123456".equals(pwd) ){

			ServletContext context1 = getServletContext();
			RequestDispatcher rd = context1.getRequestDispatcher("/loginFailed.jsp");
			rd.include(request, response);
		}
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
