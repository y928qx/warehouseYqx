
public class Yunsuan {
	public static void main(String[]args){
		Integer integer1=10;
		Integer integer2=13;
		System.out.println("integer1&integer2"+(integer1&integer2));
		System.out.println("integer1&integer2������"+Integer.toBinaryString(integer1&integer2));
		System.out.println();
		System.out.println("integer1|integer2"+(integer1|integer2));
		System.out.println("integer1|integer2������"+Integer.toBinaryString(integer1|integer2));
		System.out.println();
		System.out.println("integer1^integer2"+(integer1^integer2));
		System.out.println("integer1^integer2������"+Integer.toBinaryString(integer1^integer2));
		System.out.println();
		System.out.println("~integer1"+(~integer1));
		System.out.println("integer1������"+Integer.toBinaryString(~integer1));
		System.out.println();
		System.out.println("integer1<<1"+(integer1<<1));
		System.out.println("integer1<<1������"+Integer.toBinaryString(integer1<<1));
		System.out.println();
		System.out.println("integer1<<2����"+(integer1<<2));
		System.out.println("integer1<<2����������"+Integer.toBinaryString(integer1<<2));
		System.out.println();
		System.out.println("integer1>>1����"+(integer1>>1));
		System.out.println("integer1>>1����������"+Integer.toBinaryString(integer1>>1));
		System.out.println();
		
	}

}
