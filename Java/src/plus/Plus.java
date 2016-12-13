package plus;
import java.io.PrintStream;

import sun.management.snmp.jvminstr.JvmThreadInstanceEntryImpl.ThreadStateMap.Byte1;

public class Plus {

	public static void main(String[] args) {
		PrintStream out = System.out;
		// Byte Demo
		Byte byte1 = 20;
		Byte byte2 = 30;
		out.println("byte1+byte2=" + (byte1 + byte2));
		out.println();

		Short short1 = 200;
		Short short2 = 205;
		out.println("short1+short2" + (short1 + short2));
		out.println();

		Long long1 = 500L;
		Long long2 = 510L;
		out.println("long1+long2" + (long1 + long2));
		out.println();

		Integer integer1 = 10;
		Integer integer2 = 12;
		out.println("integer1+integer2" + (integer1 + integer2));
		out.println();

		Float float1 = 1.9F;
		Float float2 = 2.2F;
		out.println("float1+float2" + (float1 + float2));
		out.println();

		out.println("byte1+integer1=" + (byte1 + integer1));
		out.println("byte1+short1=" + (byte1 + short1));
		out.println("byte1+float1=" + (byte1 + float1));
		out.println("byte1+integer1=" + (byte1 + integer1));
		out.println();

		String s1 = "" + byte1;

		integer2 = Integer.parseInt(s1); // һ��ת������
		out.println("integer2=:" + integer2 + ";");
		out.println();
		integer2 = byte2.intValue(); // �ڶ���
		out.println("integer2=" + byte1.byteValue());
		out.println("integer2 : " + integer2);
		out.println("integer2=" + byte1.intValue()); // Ϊ�ڶ��ַ���
		out.println("integer2=" + short1.intValue());
		out.println("long2=" + short1.longValue());
		// TODO Auto-generated method stub

	}

}
