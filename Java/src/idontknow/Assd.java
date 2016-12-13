package idontknow;

public class Assd {

	public static void Triangle1(String args[]) {

		int x = 0;
		x = Integer.parseInt(args[0]); // ����������args[0]������ֵ������x

		System.out.println("ݔ��������飺     " + x);

		for (int i = 0; i < x; i++) {
			for (int j = 0; j < x - i; j++) {
				System.out.print(" "); // ͨ��forѭ���������ո�
			}
			for (int j = 0; j < 2 * i + 1; j++) {
				System.out.print("*"); // ͨ��forѭ��������*
			}

			System.out.println(); // ÿ�н�������
		}

	}

	public static void Triangle2(String args[]) {

		int x = 0;
		x = Integer.parseInt(args[0]); // ����������args[0]������ֵ������x
		System.out.println("ݔ��������飺     " + x);

		for (int i = 0; i < x; i++) {
			for (int j = 0; j < i + 1; j++) {
				System.out.print(" "); // ͨ��forѭ���������ո�
			}
			for (int j = 0; j < 2 * (x - i) - 1; j++) {
				System.out.print("*"); // ͨ��forѭ��������*
			}
			System.out.println(); // ÿ�н�������
		}

	}

	public static void main(String[] args) {

		System.out.println("1��ʵ��������������");
		Assd.Triangle1(args); // ���÷���Triangle1

		System.out.println();

		System.out.println("2��ʵ�ĵ�������������");
		Assd.Triangle2(args); // ���÷���Triangle2

	}
}
