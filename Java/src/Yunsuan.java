
public class Yunsuan {
	public static void main(String[]args){
		Integer integer1=10;
		Integer integer2=13;
		System.out.println("integer1&integer2"+(integer1&integer2));
		System.out.println("integer1&integer2二进制"+Integer.toBinaryString(integer1&integer2));
		System.out.println();
		System.out.println("integer1|integer2"+(integer1|integer2));
		System.out.println("integer1|integer2二进制"+Integer.toBinaryString(integer1|integer2));
		System.out.println();
		System.out.println("integer1^integer2"+(integer1^integer2));
		System.out.println("integer1^integer2二进制"+Integer.toBinaryString(integer1^integer2));
		System.out.println();
		System.out.println("~integer1"+(~integer1));
		System.out.println("integer1二进制"+Integer.toBinaryString(~integer1));
		System.out.println();
		System.out.println("integer1<<1"+(integer1<<1));
		System.out.println("integer1<<1二进制"+Integer.toBinaryString(integer1<<1));
		System.out.println();
		System.out.println("integer1<<2右移"+(integer1<<2));
		System.out.println("integer1<<2二进制右移"+Integer.toBinaryString(integer1<<2));
		System.out.println();
		System.out.println("integer1>>1左移"+(integer1>>1));
		System.out.println("integer1>>1二进制左移"+Integer.toBinaryString(integer1>>1));
		System.out.println();
		
	}

}
