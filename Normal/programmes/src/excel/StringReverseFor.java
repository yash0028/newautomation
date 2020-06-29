package excel;

import java.util.Scanner;

public class StringReverseFor {

	public static void main(String[] args)
	
	{
		String original, reverse = "";
		Scanner in = new Scanner(System.in);

		System.out.println("Enter the string to be reversed");
		original = in.nextLine();
		
		int length = original.length();
		char c[]=original.toCharArray();
		
		System.out.println("Reverse order:");
		for(int i=c.length-1; i>=0; i--) 
		{
			reverse = reverse + c[i];  
		}
		System.out.println(reverse);
		
		if (original.equals(reverse));
		System.out.println("Palidrome " +reverse);
		
	}

}
