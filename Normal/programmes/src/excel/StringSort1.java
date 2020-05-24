package excel;

import java.util.Arrays;
import java.util.Scanner;

public class StringSort1 
{

	public static void main(String[] args)
	{

		
			      Scanner sc = new Scanner(System.in);
			      System.out.println("Enter a string value: ");
			      String str = sc.nextLine();
			      char charArray[] = str.toCharArray();
			      Arrays.sort(charArray);
			      String sorted = new String(charArray);

			      System.out.println(sorted);
			   }
	
}

/*o/p:
	
	Enter a string value: 
		zcbfh3904DJG
		0349DGJbcfhz

	


*/