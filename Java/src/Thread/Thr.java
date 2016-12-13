package Thread;

import java.util.Date;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class Thr {

	@SuppressWarnings("static-access")
	public static void main(String[] args) throws InterruptedException {
		Thread thread = Thread.currentThread();
		System.out.println("是不是後台进程                                             :" + thread.isDaemon());
		System.out.println("这个线程的名称                                              :" + thread.getName());
		System.out.println("thread.hashCode()     :" + thread.hashCode());
		System.out.println("当前时间                                        " + System.currentTimeMillis());
		System.out.println("先睡5秒在说");
		thread.sleep(5000);
		System.out.println("睡的还不错，几点了？");
		System.out.println("当前时间                                      " + System.currentTimeMillis());
		System.out.println("当前的具体时间为                   ：" + new Date());
	}

}
