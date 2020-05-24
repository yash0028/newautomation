package advanced;


public class SecondLargest {
	 
	public static void main(String[] args) {
 
		int a[] = { 14, 46, 47, 86, 92, 52, 48, 36, 66, 85 };
		int max1 = a[0];
		int max2 = a[0];
		System.out.println("The given array is:"  );
		for (int i =0; i < a.length; i++) 
		{
			System.out.println(a[i]);
		}
		for (int i = 1; i < a.length; i++) 
		{
 
			if (a[i] > max1)
			{
				max2 = max1;
				max1 = a[i];
 
			} 
			else if (a[i] > max2) 
			{
				max2 = a[i];
 
			}
		}
		System.out.println("First largest number is:" + max1);
		 
		System.out.println("Second largest number is:" + max2);
 
	}

}
