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
		/*String str = "Selenium";

		char c[] = str.toCharArray(); // converted to character array and
										// printed in reverse order
		for (int i = c.length - 1; i >= 0; i--) 
		{
			System.out.print(c[i]);
		}
	}
}*/

/*int str = 12345;

StringBuilder sb = new StringBuilder();
sb.append((str));
StringBuilder rev = sb.reverse();
System.out.println(rev);
}
}*/
		
		int num = 1234;
		int rev=0;
		while(num>0)
		{
			rev=rev*10+num%10; //0+1234%10=4  40+3=43  430+2=432 4320+1=4321
			num=num/10; //1234/10=123  123/10=12 12/10=1
		}
		System.out.println(rev);
	}
		}