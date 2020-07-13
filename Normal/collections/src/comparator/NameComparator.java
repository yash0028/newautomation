package comparator;

import java.util.Comparator;





public class NameComparator implements Comparator<StudentComparator>
{

	@Override
	public int compare(StudentComparator s1, StudentComparator s2) 
	{

	return s1.location.compareTo(s2.location);
	}
	
	/* returns location in descending order
	 * @Override public int compare(StudentComparator s1, StudentComparator s2) 
	 * {
	 * 
	 * return s2.location.compareTo(s1.location); 
	 * }
	 */
}
