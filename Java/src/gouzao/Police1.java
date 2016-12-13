package gouzao;

public class Police1 {
	private String id;
	private String name;
	private String work;
	private Integer age;

	public Police1(String id, String name, String work, Integer age) {// hushcodea
																		// and
																		// equals
		super();
		this.id = id;
		this.name = name;
		this.work = work;
		this.age = age;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Police1)) {
			return false;
		}
		Police1 other = (Police1) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
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

	public static void main(String[] args) {
		Police police1 = new Police("id=123456789", "zhangsan", "police", 35);
		Police police2 = new Police("id=123456789", "zhangsan", "police", 35);
		if (police1 == police2) {
			System.out.println("(police1==police2" + (police1 == police2));

		} else {
			System.out.println("(police1!=police2)" + (police1 != police2));
		}
		if (police1.equals(police2)) {
			System.out.println("(police1.equals.spolice2)" + (police1.equals(police2)));

		} else {
			System.out.println("(!police1.equals.spolice2)" + (!police1.equals(police2)));
		}
	}
	// TODO Auto-generated method stub

}
