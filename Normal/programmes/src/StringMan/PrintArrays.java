package StringMan;

import java.util.Arrays;

public class PrintArrays {

	public static void main(String[] args) {

		// 1) toString()  
	    System.out.println("toString (); ");

	    int[] arrayInt = new int[] {10, 20, 30, 40, 50};  
	    System.out.println(Arrays.toString(arrayInt));

	    // 2 for each loop()
	    System.out.println("for each loop(): ");

	    for (int number : arrayInt)
	    {
	        System.out.println(number);
	    }

	    //3 String
	    System.out.println("for loop : ");

	    String[] items = {"item 1", "item 2", "item 3"};

	    for(int i = 0; i < items.length; i++) 
	    {

	        System.out.println(items[i]);

	    }
	    //4 To string()
	    System.out.println("toString(): ");

	    String[] array = new String[] { "One", "Two", "Three", "Four" };
	    System.out.println(Arrays.toString(array));
	    //Output: [One, Two, Three, Four]
	}

}
