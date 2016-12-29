package demo;

import static org.junit.Assert.*;

import java.util.jar.Attributes.Name;

import org.junit.Test;

public class HelloTest {
	

	@Test
	public void testSayHello() {
	Hello h=new Hello("毛泽东");
	System.out.println(h.sayHello());
	//assertEquals("hello maven", h.sayHello());
		
		
	}

}
