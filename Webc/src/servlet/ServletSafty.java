package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSafty
 */
@WebServlet("/ServletSafty")
public class ServletSafty extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	String ame="";//实例对象，多线程共享
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSafty() {
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
        out.println("<head><title>Servlet线程安全问题</title></head>");
        out.println("<body>");
        String username=request.getParameter("username");
       //ame=new String(username.getBytes("iso-8859-1"),"UTF-8");//获取时不是乱码
        try {
			Thread.sleep(2000);//睡眠2s，线程
		}  catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        out.println("<h3>你好 ："+username+"!</h3>");
        out.println("</body>");
        out.println("</html>");
        out.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
