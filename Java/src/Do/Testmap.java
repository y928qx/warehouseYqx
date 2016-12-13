package Do;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import sun.launcher.resources.launcher;

public class Testmap {

	public static void main(String[] args) {
		Map<Long, Integer> hMap = new HashMap<Long, Integer>();
		hMap.put(11L, 111);
		hMap.put(12l, 105);
		hMap.put(13L, 152);
		hMap.put(14L, 12);
		hMap.put(15L, 112);
		System.out.println("hMap   :" + hMap);
		System.out.println();
		System.out.println("��ϰ��Map -----> Key�Ĺ��� : Value");

		System.out.println();
		System.out.println("hMap.size()  " + hMap.size());

		Set<Integer> intset = new HashSet<Integer>();

		// Set< Map<Long, Integer> > hMaps=HMap

		/*
		 * Set<Map.Entry<Long, Integer>> hSetEntrys = hMap.entrySet();
		 * 
		 * for (<Long, Integer> entry : hSet) {
		 * 
		 * System.out.println("entry : " + entry);
		 * System.out.println(entry.getKey() + " = " + entry.getValue()); }
		 */

		System.out.println();
		System.out.println("hMap.get(14L)  :" + hMap.get(14L));

		System.out.println("hMap.replace(15L, 200)  " + hMap.replace(15L, 205));
		System.out.println("hMap.replace(14L, 12, 520)  " + hMap);
               

		System.out.println();
		System.out.println("hMap.containsValue(152)  :" + hMap.containsValue(152));

		System.out.println();
		System.out.println("hMap.containsKey(15L)  " + hMap.containsKey(15L));

		System.out.println();
		System.out.println("hMap.remove(13L)   " + hMap.remove(13L));

	}

}
