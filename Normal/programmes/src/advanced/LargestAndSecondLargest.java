package advanced;

public class LargestAndSecondLargest 
{
	public static void main(String[] args) 
	{
	
		int a[] = { 5, 34, 78, 2, 45, 1, 99, 23 };
		int maxOne = 0;
		int maxTwo = 0;
		for (int i=0;i<a.length; i++)
		{
			if (maxOne < a[i])
			{
				maxTwo = maxOne;
				maxOne = a[i];
			}
			else if (maxTwo < a[i])
			{
				maxTwo = a[i];
			}
		}
		System.out.println("Largest Number: " + maxOne);
		System.out.println("Second Largest Number: " + maxTwo);
	}

}

/*
 * public static void main(String args[])
 * { 
 * int temp, size; 
 * int array[] = 
 * {10,20, 25, 63, 96, 57}; 
 * size = array.length;
 * 
 * for(int i = 0; i<size; i++ )
 * { 
 * for(int j = i+1; j<size; j++)
 * {
 * if(array[i]>array[j])
 * { 
 * temp = array[i];
 *  array[i] = array[j];
 *   array[j] = temp;
 * }
 *  }
 *   }
 *       
 *    System.out.println("First largest number is:: "+array[size-1]);

 *    System.out.println("Second largest number is:: "+array[size-2]);
 * } 
 * }
 */
