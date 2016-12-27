package fifter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginChecked
 */
@WebFilter(dispatcherTypes = { DispatcherType.REQUEST, DispatcherType.FORWARD, DispatcherType.INCLUDE,
		DispatcherType.ERROR }, servletNames = {
				"LoginServlet" }, urlPatterns = { "/logindengluguo.html", "/loginweidenglu.jsp", "/loginOK.jsp" })
public class LoginChecked implements Filter {

	/**
	 * Default constructor.
	 */
	public LoginChecked() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		System.out.println("LoginChecked  销毁...");
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hsr = (HttpServletRequest) request;
		HttpSession hs = hsr.getSession();
		String unn = (String) hs.getAttribute("userid");

		if ("".equals(unn) || null == unn) {
			System.out.println("用户没有登录，被拦截");

			HttpServletResponse rq = (HttpServletResponse) response;
			rq.sendRedirect("loginweidenglu.html");
			// rq.setHeader("refresh", "0;url=loginweidenglu.html");
		} else {
			System.out.println("用户已经登录，check login放行！");
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("LoginChecked  初始化...");

	}

}
