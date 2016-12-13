package idontknow;

public class Kong2 {

	public static void main(String[] args) {
		int m = 6;
		for (int i = 1; i <= m; i++) {
			for (int j = 1; j <= m - i; j++) {
				System.out.print(" ");
			}

			for (int k = 1; k <= 2 * i - 1; k++) {
				if (i == 1 || i == m) {
					System.out.println("*");

				}

				else {
					if (k == 1 || k == 2 * i - 1) {
						// System.out.println("*");

					} else {
						System.out.print("*");
						System.out.print(" ");

					}
				}
			}
			System.out.println();
		}
	}
}

// TODO Auto-generated method stub
