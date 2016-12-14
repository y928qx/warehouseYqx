package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitCanshu
 */
@WebServlet(urlPatterns = { "/InitCanshu" }, initParams = { @WebInitParam(name = "study", value = "java"),
		@WebInitParam(name = "count", value = "0"), @WebInitParam(name = "school", value = "职业培训学校") })
public class InitCanshu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String myschool = null;
	private String mystudy = null;
	private int count = 0;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InitCanshu() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		myschool = config.getInitParameter("school");
		if (myschool == null) {
			myschool = "";
		}
		mystudy = config.getInitParameter("study");
		if (mystudy == null) {
			mystudy = "";
		}
		String stcount = config.getInitParameter("count");

		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>这是获取初始化参数</title></head>");
		out.println("<body>");
		out.println("<h2>所在学校" + myschool + "</h2>");
		out.println("<h2>所学习的内容" + mystudy + "</h2>");
		count++;
		out.println("<h2>访问次数" + count + "</h2>");
		out.println("</body>");
		out.println("</html>");
		out.close();
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
