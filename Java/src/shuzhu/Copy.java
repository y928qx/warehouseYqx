package shuzhu;
public class Copy {

	public static void main(String[] args) {
		int[]  intArray={9,15,12,18,16};
		int[]  intArray1=new int[4];
		
		System.arraycopy(intArray, 1, intArray1, 1, 3);
		System.out.println();
		for (int i : intArray1) {
			System.out.println(i);
			
		}
	
		// TODO Auto-generated method stub

	}

}
