package Arrays;

public class OddnEve 
{
	public static void main(String[] args)
	{
		
		int a[] = {1,2,3,4,5};
		System.out.println("Even Num ");
		for(int i=0;i<a.length;i++)
		{
			if(a[i]%2==0)
			
				System.out.println(a[i]);
		}
			
		System.out.println("Odd Num ");
		for(int i=0;i<a.length;i++)
		{
			if(a[i]%2!=0)
			
				System.out.println(a[i]);
		}
		
		
		
	}

}
