package gouzao;

import com.sun.corba.se.spi.orbutil.threadpool.Work;

public class Worker extends Human {
	private String country;

	public Worker(String id, Integer age, String name, String work) {
		super();
		System.out.println("�޲�");
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Worker(String id, Integer age, String name, String work,String country) {
		super(id, age, name, work);
		this.country = country;
		System.out.println("youcande");
	}

	@Override
	public String toString() {
		return super.toString()+ " Worker [country=" + country + "]";
	}

	public static void main(String[] args) {
		Worker worker = new Worker("ID...123",20,"yanqingxiang","worker","china");
		System.out.println(worker);
		// TODO Auto-generated method stub

	}

}
