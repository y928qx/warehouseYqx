package idontknow;

public class Ass {

	public static void main(String[] args) {
		Integer x = Integer.parseInt(args[0]+"");// ����

		for (int i = 0; i < x; i++) {
			for (int j = 0; j < x - i; j++) {
				System.out.print(" ");
			                                  }
			for (int j = 0; j < 2 * i + 1; j++) {
				System.out.print("*");
			                                      }
 
			System.out.println();
		}

		// TODO Auto-generated method stub

	}

}
