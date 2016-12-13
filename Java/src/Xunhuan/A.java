package Xunhuan;
import java.io.PrintStream;

public class A {

	public static void main(String[] args) {
		PrintStream out=System.out;
				int m = 3;
				out.println();
				out.println("do while demo: ");
				do {
					out.println("m = " + m);
					m--;
					out.println("m = " + m);
				} while (m >= -1);

				out.println("do while demo: ");
				do {
					out.println("m = " + m);
					m--;
					out.println("m = " + m);
				} while (m == -1);

	}

}
