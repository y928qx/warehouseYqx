package servlet;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.sun.org.apache.xpath.internal.functions.Function;

/**
 * Servlet implementation class Text
 */
@WebServlet("/Text")
public class Text extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private String uname;
	private String uclass;
	private String ucourse;
	private int ucore;
	
	
	public Text(String uname, String uclass, String ucourse, int ucore) {
		super();
		this.uname = uname;
		this.uclass = uclass;
		this.ucourse = ucourse;
		this.ucore = ucore;
		
		
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUclass() {
		return uclass;
	}

	public void setUclass(String uclass) {
		this.uclass = uclass;
	}

	public String getUcourse() {
		return ucourse;
	}

	public void setUcourse(String ucourse) {
		this.ucourse = ucourse;
	}

	public int getUcore() {
		return ucore;
	}

	public void setUcore(int ucore) {
		this.ucore = ucore;
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Text() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html;charset=UTF-8");
         // response.setCharacterEncoding("UTF-8");
	    HttpSession session=request.getSession();
		String nua = request.getParameter("uname");
		String ucl = request.getParameter("uclass");
		String uco = request.getParameter("ucourse");
		String ucor = request.getParameter("ucore");
	
        session.setAttribute("nua", nua);
        session.setAttribute("ucl", ucl);
        session.setAttribute("uco", uco);
        session.setAttribute("ucor", ucor);
        
       
    /*    ServletContext context = getServletContext();
        RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/exam2/text.jsp");
		rd.forward(request, response);*/
		
		response.setHeader("refresh", "1;url= /Webc/exam2/text.jsp");
		
		//List mylist=(List)request.getAttribute("nua");
		//PrintWriter out = response.getWriter();
/*		out.println("<html>");
		out.println("<head>" + "</head>");
		out.println("<body>");
		out.println("<tr>" + "<td>姓名</td>" +"&nbsp;" +"&nbsp;"+ "<td>班级</td>"+"&nbsp;" +"&nbsp;" + "<td>课程</td>"+"&nbsp;" +"&nbsp;" + "<td>分数</td>"+"&nbsp;" +"&nbsp;" + "</tr>  ");
		out.println("<br/>");
		out.println(nua+"&nbsp;" +"&nbsp;"+ucl+"&nbsp;" +"&nbsp;"+uco+"&nbsp;" +"&nbsp;"+ucor);
		out.println("</body>");
		out.println("</html>");*/
		

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
