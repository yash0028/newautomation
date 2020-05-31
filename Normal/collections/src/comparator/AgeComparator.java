package comparator;

import java.util.Comparator;

public class AgeComparator implements Comparator<StudentComparator>
{

	@Override
	public int compare(StudentComparator s1, StudentComparator s2) 
	{

	if(s1.age==s2.age)
	{
		return 0;
	}
	else if(s1.age>=s2.age)
	{
		return 1;
	}
	else
	{
		return -1;
	}
	
	
	
	/*
	 * Descending Order
	public int compare(StudentComparator s1, StudentComparator s2) 
	{

	if(s1.age==s2.age)
	{
		return 0;
	}
	else if(s1.age<=s2.age)
	{
		return 1;
	}
	else
	{
		return -1;
	}*/
	}

}
