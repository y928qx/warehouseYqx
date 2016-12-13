package plus;
import java.io.PrintStream;

public class Write {
	private static char i;

	public static void main(String[] args) {
		// int
		int a, b;
		a = 1;
		b = 2;
		PrintStream pra = System.out;
		pra.println("a+b=" + (a + b) + ";");
		pra.println("a-b=" + (a - b) + ";");

		// float
		pra.println();
		float c, d = (float) 2.0;
		c = 4;
		pra.println("c+d=" + (c + d));

		// char
		pra.println();
		char g, h = i;
		g = 'j';
		pra.println("g+h=" + (g + h));
		pra.println("g" + g + ";");
		pra.println("h" + h + ";");

		// boolean
		pra.println();
		boolean k, l;
		k = true;
		l = false;
		pra.println("k=" + k);
		pra.println("l=" + l);
		pra.println("k=" + k);
		pra.println("l&&k:" + (l && k));
		pra.println("l||k:" + (l || k));

		// string
		pra.println();
		String o, p = "world";
		o = "I love";
		pra.println("o+p  " + o + p + ";");

	}
}