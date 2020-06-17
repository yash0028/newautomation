package StringMan;

import java.util.Scanner;

public class ReverseWords {

	public static void main(String[] args) {
     /*Read string from input.
	Split the string by using space as delimiter.
	Loop through all words.
    Reverse the characters of each word.
	Print the final string.
*/
		 Scanner scanner = new Scanner(System.in);
	        System.out.print("Original string : ");
	 
	        String originalStr = scanner.nextLine();
	        scanner.close();
	 
	        String words[] = originalStr.split("\\s");
	        System.out.println(words.length);
	        String reversedString = "";
	 
	        for (int i = 0; i < words.length; i++) 
	        {
	            String word = words[i];
	            String reverseWord = "";
	            for (int j = word.length() - 1; j >= 0; j--) 
	            {
	                reverseWord = reverseWord + word.charAt(j);
	            }
	            reversedString = reversedString + reverseWord + " ";
	        }
	 
	        // Displaying the string after reverse
	        System.out.print("Reversed string : " + reversedString);


		
	}

}
