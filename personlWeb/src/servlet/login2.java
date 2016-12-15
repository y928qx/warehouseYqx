package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login2
 */
@WebServlet("/login2")
public class login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param session 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response, ServletRequest session) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  response.getWriter().append("Served at: ").append(request.getContextPath());
		String name=request.getParameter("uname");
		name=new String(name.getBytes("ISO8859_1"),"UTF-8");
		
		String pwd = request.getParameter("upass");
		pwd=new String(pwd.getBytes("ISO8859_1"),"UTF-8");
		if (null != name && null != pwd && "yqx".equals(name) && "123456".equals(pwd)) {
			response.setHeader("refresh", "3;url=loginOK.jsp");//定时跳转
			session.setAttribute("userid", name);//将用户名保存在session中
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
