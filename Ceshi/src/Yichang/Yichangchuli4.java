package Yichang;



public static void main(String[] args) {

	public class Yichangchuli4 {
		
		 	
		 public static void throwEx() throws Exception {
		 		System.out.println("��������ִ��--throwEx������ʼ!");
		 	throw new Exception();
		 		//System.out.println("��������ִ��--throwEx��������!");
		 		
		 	}
		 	public static void throwEx2(int x) throws Exception {
		 		if (x==0) {
		 			throw new Exception();
		 	}
		 		System.out.println("��������ִ��--throwEx������ʼ!");
		 		//System.out.println("��������ִ��--throwEx��������!");
		 		
		 	}
		 
		 	
		 	public static void main(String[] args) {
		 		//PrintStream out = System.out;
		 /*		System.out.println("���÷���֮ǰ!");
		 +		try {
		 +			ExceptionDemo5.throwEx();
		 +		} catch (Exception e) {
		 +			System.out.println("��׽���쳣!");
		 +			e.printStackTrace();
		 +		}
		 +		System.out.println("���÷���֮��!");*/
		 	
		 	System.out.println("���÷���֮ǰ!");
		 	try {
		 		Yichangchuli4.throwEx2(0);
		 		} catch (Exception e) {
		 			System.out.println("��׽���쳣!");
		 		e.printStackTrace();
		 		}
		 		System.out.println("���÷���֮��!");
		 		
		 	}
		 
		 }
	