package comparator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ArrayListComparator 
{
	public static void main(String[] args) 
	{
		ArrayList<StudentComparator> al = new ArrayList<StudentComparator>();
		al.add(new StudentComparator(23,"Hyd"));
		al.add(new StudentComparator(22,"Bng"));

		al.add(new StudentComparator(20,"Ker"));

		al.add(new StudentComparator(26,"Tam"));

		
		Collections.sort(al,new AgeComparator());
		System.out.println("After Sorting on Age : " );
		for (StudentComparator s : al)
		{
			System.out.println(s.age+" "+s.location);
		}
	
		System.out.println("After Sorting on Location : " );

		Collections.sort(al,new NameComparator());
		for (StudentComparator s : al)
		{
			System.out.println(s.age+" "+s.location);
		}
		
	}
	
}
