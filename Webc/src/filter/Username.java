package filter;

import java.io.IOException;

import javax.jws.soap.InitParam;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.core.Config;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet Filter implementation class Username
 */
@WebFilter(
		{"/Username"}
		
		)
public class Username implements Filter {

    /**
     * Default constructor. 
     */
    public Username() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println(" ** 过滤器销毁中.....");
	}
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println(" ** 过滤器执行之前..");
		

		HttpServletRequest req=(HttpServletRequest)request;
	    HttpSession ses=req.getSession();
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
		System.out.println(" ** 过滤器执行结束..");
	}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		 //String initParam=Config.getinitparam
		System.out.println("过滤器初始化..."/*+initParam*/);
		
	
	}
}
