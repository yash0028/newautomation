package excel;

import java.util.Scanner;

public class ReverseUsingArray {
	public static void main(String[] args) {
		/*
		 * String str = "Saket Saurav";
		 */

		// Scanner in = new Scanner(System.in);
		// System.out.print("Input String :");
		// String str = in.nextLine();
		String str = "Selenium";

		char c[] = str.toCharArray(); // converted to character array and
										// printed in reverse order
		for (int i = c.length - 1; i >= 0; i--) 
		{
			System.out.print(c[i]);
		}
	}
}
