package Enum;

public enum Enum2 {
	MONDAY("��", 1), TUESDAY("ϲ", 2), WENSDAY("��", 3), TURSDAY("��", 4), FRIDAY("��", 5), SATURDAY("��", 6), SUNDAY("��", 7);
	private String sunsine;
	private Integer sad;

	private Enum2(String sunsine, Integer sad) {
		this.sunsine = sunsine;
		this.sad = sad;
	}

	public Integer getSad() {
		return sad;
	}

	public void setSad(Integer sad) {
		this.sad = sad;
	}

	private Enum2(String sunsine) {
		this.sunsine = sunsine;
	}

	public String getSunsine() {
		return sunsine;
	}

	public void setSunsine(String sunsine) {
		this.sunsine = sunsine;
	}
	private Enum2() {
	}
}
