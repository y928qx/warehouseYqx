package Xunhuan;
/*public class Shiyan {

	public static void main(String[] args) {
		for (int i = 0; i <5; i++) {
			for (int j = 0; j <5-i; j++) {
				System.out.print(" ");
			}
			for (int j = 0; j <2*i+1 ; j++) {
				System.out.print("*");
				
			}
			System.out.println();
		}
		// TODO Auto-generated method stub

	}

}
*/
public class Shiyan {

	public static void main(String[] args) {
		for (int i = 0; i < 7; i++) {
			for (int j = 0; j <i+1; j++) {
				System.out.print(" ");
				
			}
			for (int j = 0; j<2*(6-i)+1 ; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
	}
}