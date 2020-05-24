package list;

import java.util.*;

public class Testlist1 {

	public static void main(String[] args) {
		ArrayList l = new ArrayList(); // non generic data types such int and
										// string
		l.add(9);
		l.add("POP");
		l.add("lol");
		l.add(9);
		System.out.println(l);
		System.out.println(l.get(2));
		System.out.println("Size :" +l.size());
		for (int i=0;i<l.size();i++)
		{
			System.out.println(l.get(i));
		}

		
	}

}

/*1. It can contain duplicate values.
2. Inserts  on the base of ordering- insertion order
3. Not synchronized-- Not thread safe
4. Random access to fetch the element-- becoz store values on the basis of index	*/