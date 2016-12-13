package net.good.Funny.Better;
import java.io.PrintStream;

public class Wee {

	public static void main(String[] args) {
			args[0] = "111";
			args[1] = "789";
			args[2] = "456";
			PrintStream out = System.out;
			out.println("Helloworld");
			out.println("今天天气不好" + args[0] + "今天好累" + args[1]);
            out.println(args[2]);
	}

}
