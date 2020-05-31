package comparator;

public class StudentComparable implements Comparable<StudentComparable> 
	{
	int age;
	String location;
	
	public StudentComparable(int age, String location)
	{
		this.age=age;
		this.location=location;
		
	}

	/*@Override
	 * Ascending Order
	public int compareTo(StudentComparable st)
	{
	
		if(age==st.age)
		{
		return 0;
		}
		else if(age >=st.age)
		{
			return 1;
			
		}
		else
		{
			return -1;
		}
		
	}
*/
	
	//Descending Order
	public int compareTo(StudentComparable st)
	{
	
		if(age==st.age)
		{
		return 0;
		}
		else if(age <=st.age)
		{
			return 1;
			
		}
		else
		{
			return -1;
		}
		
	}

}
