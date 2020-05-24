package StringMan;

import java.util.Arrays;

public class PrintArrays {

	public static void main(String[] args) {

		// 1) toString()  
	    int[] arrayInt = new int[] {10, 20, 30, 40, 50};  
	    System.out.println(Arrays.toString(arrayInt));

	    // 2 for loop()
	    for (int number : arrayInt)
	    {
	        System.out.println(number);
	    }

	    //3 String
	    String[] items = {"item 1", "item 2", "item 3"};

	    for(int i = 0; i < items.length; i++) 
	    {

	        System.out.println(items[i]);

	    }
	    //4 To string()
	    String[] array = new String[] { "One", "Two", "Three", "Four" };
	    System.out.println(Arrays.toString(array));
	    //Output: [One, Two, Three, Four]
	}

}
