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
			      // In the form of Array
			      
			      System.out.println("In the form of Array : "+Arrays.toString(charArray));
			      
			      //In the form of String 
			      String sorted = new String(charArray);

			      System.out.println("In the form of String : "+sorted);
			   }
	
}

/*o/p:
	
	Enter a string value: 
		zcbfh3904DJG
		0349DGJbcfhz

	


*/