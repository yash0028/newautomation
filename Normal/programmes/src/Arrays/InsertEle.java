package Arrays;

import java.util.Arrays;

public class InsertEle {

	public static void main(String[] args) {

		int a[]={10,20,30,40,50}; // Array size cannot be increased, So last ele will be deleted if we 
								 // insert new element in middle
		int position = 4;
		int element = 35;
		
		for(int i=a.length-1; i>position-1 ; i--)
		{
			a[i]=a[i-1];
		}
		a[position-1] = element;
		
		System.out.println(Arrays.toString(a));
		
		
		
	}

}
