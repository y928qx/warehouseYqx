package Do;

import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.xerces.internal.xs.StringList;

public class Testlist {

	public static void main(String[] args) {
		List Strlist = new ArrayList<String>();
		List<Integer> intlist = new ArrayList<Integer>();
		List<String> strlist2 = new ArrayList<String>();
		// TODO Auto-generated method stub
		strlist2.add("I");
		strlist2.add("Love");
		strlist2.add("china");
		intlist.add(1);
		intlist.add(2);
		intlist.add(12);
		System.out.println("strlist2���Ϊ" + strlist2);
		System.out.println();
		System.out.println("strlist2.size()���Ϊ    :" + strlist2.size());
		System.out.println();
		Strlist.add("I");
		Strlist.add("want");
		Strlist.add("do");
		Strlist.add("!");
		Strlist.add("!");
		
		System.out.println("Strlist.isEmpty() �ж�;" + Strlist.isEmpty());
		System.out.println();
		System.out.println("Strlist" + Strlist);
		System.out.println();
		System.out.println("Strlist.get(2);" + Strlist.get(2));
		System.out.println();
		System.out.println("Strlist.remove('I')    " + Strlist.remove("I"));
		System.out.println();
		System.out.println("strList");
		System.out.println();
		Strlist.remove("!");
		System.out.println("strList.toString() : " + Strlist.toString());
		System.out.println("Strlist.addAll(strlist2)  "+Strlist.addAll(strlist2));
		
		System.out.println("strlist2.subList(1, 3)"+strlist2.subList(1, 3));//��ȡstrlist2�����һλ������λ��ֵ
		Strlist.clear();
		System.out.println("Strlist.clear()"+ Strlist);//clear�����Ϊ��
	}

}
