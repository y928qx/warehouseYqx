package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Qingqiufenpai
 */
@WebServlet("/Qingqiufenpai")
public class Qingqiufenpai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Qingqiufenpai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	response.setContentType("text/html;charset=UTF-8");
	PrintWriter out=response.getWriter();
	out.println("<html>");
	out.println("<head>");
	out.println("<title>ABC公司简介</title>");
	
	out.println("</head>");
	out.println("<body>");
	ServletContext context=getServletContext();
	
	RequestDispatcher rd=context.getRequestDispatcher("/Qa");
	rd.include(request, response);
	out.println("<font size=4 color='red'>");
	out.println("&nbsp;&nbsp;&nbsp;ABc 1meisdhwdjwidhuwidhbeqweqweqwecydfkjdbwudbjhfbwyffuwfsufwufsuw<br/><br/>");
	out.println("ABc meisdhwdjwidhuwidhbcydfkjdbwudbjhfweqweqwbwyffuwfsufwufsuw<br/><br/>");
	out.println("&nbsp;&nbsp;&nbsp;ABc 2meiwewqewsdwdsdwqesdhwdjwidhuwidhbcydfkjdbwudbjhfbwyffuwfsufwufsuw<br/><br/>");
	rd=context.getRequestDispatcher("/Web.html");  //脚位置
	rd.include(request, response);
	out.println("</body>");
	out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
