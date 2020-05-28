package advanced;

import java.util.Arrays;

public class LargestNumber
	{
		public static void main(String args[])
		{
			int[] a =  { 20, 30, 50, 49, 71, 100};
			
			Arrays.sort(a);
			System.out.println(a[5]);
			System.out.println(Arrays.toString(a));
			/*int max = a[0];
			
			System.out.println("The Given Array Element is:");
			for(int i = 0; i < a.length;i++)
			{
				System.out.println(a[i]);
			}
			for(int i =1; i < a.length;i++)
			{
				if(a[i] > max)
				{
					max = a[i];
				}
			}
			
			System.out.println("From The Array Element Largest Number is:" + max);
		}*/
	}}
	
	

