package StringMan;

import java.util.Scanner;

public class ReversedStringByTheirPosition {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
        System.out.print("Original string : ");
 
        String originalStr = scanner.nextLine();
        scanner.close();
 
        String words[] = originalStr.split("\\s");
        String rString = "";
 
        //Reverse each word's position
        for (int i = words.length-1; i >=0; i--) 
        { 
        	rString= rString+words[i]+" ";
        } 
 
        // Displaying the string after reverse
        System.out.print("Reversed string : " + rString);

	}

}
