package Arrays;

import java.util.Arrays;

public class SelectionSort {
	/* A sort algorithm that repeatedly searches remaining items to find the least one 
	 and moves it to its final location.--->>> Searching + Sorting 
	 1) The subarray which is already sorted.
	 2) Remaining subarray which is unsorted.
	 */
	public static void main(String[] args)
	{
		int a[] = {45,78,90,3,65,12};
		int min;
		int temp = 0;
		for(int i=0;i<a.length;i++)
		{
			min =i;
			for(int j=i+1;j<a.length;j++)
			{
				if(a[j]<a[min])
				{
					min = j;
				}
			}
			temp = a[i];
			a[i] = a[min];
			a[min] = temp;

		}
		
		System.out.println(Arrays.toString(a));
	}

}
