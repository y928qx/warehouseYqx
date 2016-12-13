package Enum;


public class Testenum {
	public static void print(Enum1 we) {
		switch (we) {
		case MONDAY:
			System.out.println("今天是周一");
			break;
		case TUESDAY:
			System.out.println("今天是周二");
			break;
		case WENSDAY:
			System.out.println("今天是周三");
			break;
		case TURSDAY:
			System.out.println("今天是周四");
			break;
		case FRIDAY:
			System.out.println("今天是周五");
			break;
		case SATURDAY:
			System.out.println("今天是周六");
			break;
		default:
			System.out.println("今天是周日");
			break;
		}

	}

	public static void print2(Enum2 we) {
		switch (we) {
		case MONDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		case TUESDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		case WENSDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		case TURSDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		case FRIDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		case SATURDAY:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		default:
			System.out.println(we.getSad() + we.getSunsine());
			break;
		}
	}

	public static void main(String[] args) {
		print(Enum1.TUESDAY);
		print(Enum1.SATURDAY);
		System.out.println();
		print2(Enum2.MONDAY);
		print2(Enum2.TUESDAY);
		print2(Enum2.WENSDAY);
		print2(Enum2.TURSDAY);
		print2(Enum2.FRIDAY);
		print2(Enum2.SATURDAY);
		print2(Enum2.SUNDAY);
	}
}
