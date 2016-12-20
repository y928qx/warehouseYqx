package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class SessionBind
 *
 */
// @WebListener //注释了
public class SessionBind implements HttpSessionBindingListener {
	private String name;

	/**
	 * Default constructor.
	 */
	public SessionBind() {
		this.setName(name);                  //
		// TODO Auto-generated constructor stub
	}

	public String getName() {                // 生成get和set方法
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
	 */
	public void valueBound(HttpSessionBindingEvent arg0) {
		System.out.println("在session中保存LginUser对象(name=" + this +" ),session id=" + arg0.getSession().getId());

		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
	 */
	public void valueUnbound(HttpSessionBindingEvent arg0) {

		System.out.println("在session中保存LginUser对象(name=" + this +" ),session id=" + arg0.getSession().getId());
		// TODO Auto-generated method stub
	}

}
