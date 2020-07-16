package comparators;

import java.util.ArrayList;
import java.util.Collections;

public class ArrayListComparable 
{
	public static void main(String[] args) 
	{
		ArrayList<StudentComparable> al = new ArrayList<StudentComparable>();
		al.add(new StudentComparable(23,"Hyd"));
		al.add(new StudentComparable(22,"Bng"));

		al.add(new StudentComparable(20,"Ker"));

		al.add(new StudentComparable(26,"Tam"));

		
		Collections.sort(al);
		System.out.println("After Sorting : " );
		for (StudentComparable s : al)
		{
			System.out.println(s.age+" "+s.location);
		}
	
		
	}
	
}
