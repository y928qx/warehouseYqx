package filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class Username1
 */
@WebFilter(dispatcherTypes = {
				DispatcherType.REQUEST, 
				DispatcherType.FORWARD, 
				DispatcherType.INCLUDE, 
				DispatcherType.ERROR
		}, 
                    description = "No1",
					urlPatterns = { "/Username1" }, 
					servletNames = { "MyloginServletDemo" })
public class Username1 implements Filter {

    /**
     * Default constructor. 
     */
    public Username1() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain
		System.out.println("准备执行中...");
		String username = request.getParameter("username");
		if (null == username || username == "") {
			username = "未输入";
		}
		/*String password = request.getParameter("password");
		password = new String(password.getBytes("iso8859-1"), "UTF-8");// 设置输入的用户名，解决中文乱码，设定request对象字符集
		if (null == password || password == "") {
			password = "未输入";
		}*/
		
		
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
