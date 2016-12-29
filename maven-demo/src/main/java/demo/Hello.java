package demo;

import lombok.Getter;
import lombok.Setter;

public class Hello {

	@Setter
	@Getter
	private String Name;

	public Hello() {

	}

	public Hello(String name) {
		super();
		Name = name;
	}

	public String sayHello() {
		if (this.Name !=null) {
			return "hello maven"+"我的名字是"+this.getName();
		}
		
		return "hello maven";
	}

	public static void main(String[] args) {
		System.out.println("hello maven");

	}

}
