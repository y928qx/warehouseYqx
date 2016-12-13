package gouzao;

public class Police {
	private String id;
	private String name;
	private String work;
	private Integer age;

	public Police(String id, String name, String work, Integer age) {
		super();
		this.id = id;
		this.name = name;
		this.work = work;
		this.age = age;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

}
