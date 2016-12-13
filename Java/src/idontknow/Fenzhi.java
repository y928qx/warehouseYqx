package idontknow;
import java.io.PrintStream;

public class Fenzhi {

	public static void main(String[] args) {
		PrintStream out = System.out;

		int x = 6;

		if (x == 3) {
			out.println("x=" + x);

		}
		if (x > 5) {
			out.println("x" + x);
		} else {
			// out.println("x="+);
		}
		// TODO Auto-generated method stub
		switch (x) {
		case 7:
			out.println("x=7");
			break;
		case 6:
			out.println("x=6");
			break;
		case 5:
			out.println("x=5");
			break;
		case 4:
			out.println("x=4");
			break;
		case 3:

			out.println("x=3");
			break;
		case 2:

			out.println("x=2");
			break;
		case 1:

			out.println("x=1");
			break;

		default:
			out.println("x" + x);
			break;
		}
	}
}
