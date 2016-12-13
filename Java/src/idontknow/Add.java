package idontknow;
import java.util.Arrays;

public class Add {

	public static void main(String[] args) {
		int[] j = { 12, 67, 8, 98, 23, 56, 55, 134, 99, 100 };
		int MAX = j[0];
		
		for (int i = 0; i < j.length; i++) {
			if (j[i] > MAX) {
				MAX = j[i];
			} else {
				MAX = j[0];
			}
		}
		System.out.println("���ֵΪ��" + MAX);

	}

}
