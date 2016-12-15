package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ThreeMethod
 */
@WebServlet("/ThreeMethod")
public class ThreeMethod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreeMethod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String str=""+new Date().getTime();//将时间转为string类型
		request.setAttribute("fromrequest", str);
		HttpSession session=request.getSession();
		session.setAttribute("fromsession", str);
		ServletContext context= getServletConfig().getServletContext();
		context.setAttribute("fromcontext", str);
        context.getRequestDispatcher("/dispkay").forward(request, response);
        
        response.setContentType("text/html;Charset=UTF-8");
        PrintWriter out=response.getWriter();
        out.println("<html>");
        out.println("<head><title>输出范围属性相关的信息</title></head>");
        out.println("<body>");
        out.println("<h3>request的值："+str1+"</h3>");
        out.println("");
        out.println("");
        out.println("");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
