package listenerOnlineCount;

import java.util.TreeSet;
import java.util.Set;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class OnlineListener
 *
 */
@WebListener
public class OnlineListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {
	private ServletContext app = null;

	/**
	 * Default constructor.
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		this.app = arg0.getServletContext();
		this.app.setAttribute("online", new TreeSet());
	}

	public void attributeAdded(HttpSessionBindingEvent arg0) {
		Set all = (Set) this.app.getAttribute("online");
		all.add(arg0.getValue());
		this.app.setAttribute("online", all);

	}

	public OnlineListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent arg0) {
	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent arg0) {
		Set all = (Set) this.app.getAttribute("online");
		all.remove(arg0.getSession().getAttribute("userid"));

	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		Set all = (Set) this.app.getAttribute("online");
		all.remove(arg0.getValue());
		this.app.setAttribute("online", all);

	}
	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */

}
