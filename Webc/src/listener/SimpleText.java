package listener;

import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener1
 *
 */
@WebListener
public class SimpleText implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public SimpleText() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	System.out.println("ServletContextListener  销毁.....");
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  {
    	//Date da=new Date();
    	String now=new Date().toString();
    //	System.out.println(now+HttpSessionAttributeListener       );
    	
    	
    	System.out.println("ServletContextListener  初始化zhong.....");
    	//System.out.println(da.getYear()+da.getMonth()+da.getDay()+da.getHours()+da.getMinutes()+da.getSeconds()+da.getTime()            );
    	
    	
    }
	
}
