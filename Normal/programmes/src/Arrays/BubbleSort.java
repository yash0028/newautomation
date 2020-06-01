package Arrays;

import java.util.Arrays;

public class BubbleSort 
{

	public static void main(String[] args)
	{
		int a[]={4,2,1,5,3};
		int temp=0;
		System.out.println("Array Before Sorting : " +Arrays.toString(a));
		for(int i=0;i<a.length;i++)
		{
			for(int j=i+1;j<a.length;j++)
			{
				if(a[i]>a[j]) // -->Ascending Sort -- if(a[i]<a[j])-->Descending Sort
				{
					temp=a[i];
					a[i]=a[j];
					a[j]=temp;
				}

			}
		
		}
		
		System.out.println("Arrays After Sorting : " +Arrays.toString(a));
	}


}
