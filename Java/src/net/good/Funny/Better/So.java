package net.good.Funny.Better;
import java.io.PrintStream;

public class So {
	public static void main(String[] args) {
		args[0] = "123";
		args[1] = "789";
		args[2] = "456";
		PrintStream out = System.out;
		out.println("Helloworld");
		out.println("�������ڼ�" + args[0] + "���켸��" + args[1]);
		out.println(args[2]);
	}
}