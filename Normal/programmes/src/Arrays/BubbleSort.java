package Arrays;

import java.util.Arrays;

public class BubbleSort 
{

	public static void main(String[] args)
	{
		int a[]={4,2,1,5,3};
		System.out.println("Array Before Sorting : " +Arrays.toString(a));
		for(int i=0;i<a.length-1;i++)
		{
			for(int j=0;j<a.length-1;j++)
			{
				if(a[j]>a[j+1])
				{
					int temp=a[j];
					a[j]=a[j+1];
					a[j+1]=temp;
				}
			}
		}
		
		System.out.println("Arrays After Sorting : " +Arrays.toString(a));
	}


}
