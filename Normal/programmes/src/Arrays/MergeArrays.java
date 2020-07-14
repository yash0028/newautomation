package Arrays;

import java.util.Arrays;

public class MergeArrays {

	public static void main(String[] args) {

/*
		int a[]={1,5,8,9};
		int b[]={6,4,2};
		int fs = a.length;
		int gs = b.length;
		
		int result []=new int[fs + gs];
		System.arraycopy(a, 0, result, 0, fs);
		System.arraycopy(b, 0, result, fs, gs);
		System.out.println(Arrays.toString(result));
		*/
		/*
		public static void arraycopy(Object source, i nt source_position,   
				Object destination, int destination_position, int length)  
		
		Parameters -->>

		source: It is a source array.
		source_position: Starting point in the source array.
		destination: It is a destination array.
		destination_position: Starting position in the destination array.
		length: The number of array elements to be copied
		*/
		
		int a[]={1,5,8,9};
		int b[]={7,4,2};
		int fs = a.length;
		int gs = b.length;
		
		int c [] = new int[fs + gs];
		for (int i=0;i<a.length;i++)
		{
			c[i] = a[i];
		}
		
		for(int j=0 ; j<b.length;j++)
		{
			c[a.length+j]=b[j];
		}
		/*for(int i=0;i<c.length;i++)
		{
			System.out.println(c[i]+" ");
		}*/
		Arrays.sort(c);
		System.out.println(Arrays.toString(c));
	
	}


}
