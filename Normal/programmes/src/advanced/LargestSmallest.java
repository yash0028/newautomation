package advanced;

import java.util.Arrays;

public class LargestSmallest 
{
	public static void main(String[] args) 
	{
		int a[] = new int[] { 23, 34, 13, 64, 72, 91, 10, 15, 8, 27 };
		
		
	/*1. Sorting	
		Arrays.sort(a);
	  for(int i=0;i<a.length;i++)
	  {
	  System.out.println(a[i]);
	  }
		System.out.println("min =" +a[0]);

		System.out.println("max =" +a[9]);
		*/
		
//	2.using For loop

	int min = a[0]; //  assume first elements as smallest number
	int max = a[0]; //  assume first elements as largest number

		for (int i =1; i < a.length; i++)  // iterate for loop from arrays 1st index (second element)
		{
			if (a[i] > max) 
			{
				max = a[i];
			}
			else if(a[i] < min) 
			{
				min = a[i];
			}
		}

		System.out.println("Largest Number in a given array is : " + max);
		System.out.println("Smallest Number in a given array is : " + min);
}


}
