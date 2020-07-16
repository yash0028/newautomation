package Arrays;

import java.util.Arrays;

public class ArraysRangeOf 
{

	public static void main(String[] args)
	{
		//original array has 10 elements 
		
		int[] original = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100}; 
		System.out.println("original array: " + Arrays.toString(original));
		
		// let's create an exact copy of the array 
		int[] copy = Arrays.copyOf(original, 10); 
		System.out.println("exact copy: " + Arrays.toString(copy));
		
		// let's copy only first 5 elements 
		int[] firstFive = Arrays.copyOf(original, 5); 
		System.out.println("exact copy: " + Arrays.toString(firstFive));
		
		// let's create a larger array by copying 
		int[] bigger = Arrays.copyOf(original, 15); 
		System.out.println("bigger copy: " + Arrays.toString(bigger));
		
		// Now, let's copy a range of values from one array to another
		// copying subarray from 2nd element to 4th element 
		int[] range = Arrays.copyOfRange(original, 2,5); 
		System.out.println("copying range of values 2 to 5: " + Arrays.toString(range));

	}

}




