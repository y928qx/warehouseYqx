package Do;

import java.util.HashSet;
import java.util.Set;

import com.sun.javafx.image.IntPixelSetter;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class Testset {

	public static void main(String[] args) {
		Set<Integer> intSet = new HashSet<Integer>();
		Set<String> strSet =new HashSet<String>();
		                                              //Set<Human> humset=new HashSet<Human>();
		intSet.add(10);
		intSet.add(12);
		intSet.add(15);
		intSet.add(16);
		System.out.println("���intset  ��" + intSet);
		intSet.size();
		System.out.println("intSet.size()����    " + intSet.size());
		Set<Integer> intSet1 = new HashSet<Integer>();
		intSet1.add(10);
		intSet1.add(14);
		intSet1.add(13);
		intSet1.add(17);
		System.out.println("���intset1  ��" + intSet1);
		/*
		 * intSet.remove(intSet1);
		 * System.out.println("remove intSet�Ժ��ֵ"+intSet1);
		 */
		for (Integer is : intSet1) {
			System.out.println(is);

		}
		System.out.println("for each HashSet End:");
		System.out.println();
		intSet.remove(16);
		System.out.println("remove16�Ժ�:"+intSet);
		intSet.toArray();
		System.out.println("intSet.toArray()"+intSet.toArray());//�����Ϊ
		//System.out.println("intSet : " + intSet);
				
	}
	
}
