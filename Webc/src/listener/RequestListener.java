package listener;

import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class RequestListener
 *
 */
@WebListener
public class RequestListener implements ServletRequestListener, ServletRequestAttributeListener, AsyncListener {

	/**
	 * Default constructor.
	 */
	public RequestListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see AsyncListener#onComplete(AsyncEvent)
	 */
	public void onComplete(AsyncEvent arg0) throws java.io.IOException {

	}

	/**
	 * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
	 */
	public void requestDestroyed(ServletRequestEvent arg0) {
		System.out.println("request销毁。 http://" + arg0.getServletRequest().getRemoteAddr()
				+ arg0.getServletContext().getContextPath());

		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
	 */
	public void attributeRemoved(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see AsyncListener#onError(AsyncEvent)
	 */
	public void onError(AsyncEvent arg0) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see AsyncListener#onStartAsync(AsyncEvent)
	 */
	public void onStartAsync(AsyncEvent arg0) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
	 */
	public void requestInitialized(ServletRequestEvent arg0) {
		System.out.println("request初始化。 http://" + arg0.getServletRequest().getRemoteAddr()
				+ arg0.getServletContext().getContextPath());
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
	 */
	public void attributeAdded(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see AsyncListener#onTimeout(AsyncEvent)
	 */
	public void onTimeout(AsyncEvent arg0) throws java.io.IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
	 */
	public void attributeReplaced(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
	}

}
