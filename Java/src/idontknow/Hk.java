package idontknow;
import java.io.PrintStream;

public class Hk {
	public static void main(String[] args) {
		int x, y, z, a, b, c;
		x = 1;
		y = 2;
		z = 3;

		a = x + y;
		b = x + z;
		c = y + z;
		PrintStream out = System.out;
		args[0] = "A";
		args[1] = "B";
		out.println(a);
		out.println(b);
		out.println(c);
		out.println("������������" + args[0] + "�������" + args[1]);
	}
}
