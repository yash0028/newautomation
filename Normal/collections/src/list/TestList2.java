package list;

import java.util.*;

public class TestList2 {

	public static void main(String args[]) {
		ArrayList l1 = new ArrayList();
		l1.add(7);
		l1.add(8);
		l1.add(10);
		l1.add("rpt");
		l1.add("oio");
		System.out.println(l1);
		l1.remove(2);
		System.out.println(l1);
		l1.add(2, null);
		System.out.println(l1);
		System.out.println(l1.size());
		System.out.println(l1);
		
		l1.set(2, "pop");
		System.out.println(l1);
		
		System.out.println("Using for loop:");
		for (int i=0; i<l1.size();i++){
			System.out.println(l1.get(i));
		}

		

	}
}
