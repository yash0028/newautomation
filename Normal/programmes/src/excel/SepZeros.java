package excel;

import java.util.Arrays;

public class SepZeros {

	
	 static void moveZerosToEnd(int a[])
	    {
	        System.out.println("Input Array : "+Arrays.toString(a));
	         
	        //Initializing counter to 0
	  
	        int counter = 0;
	  
	        //Traversing inputArray from left to right
	  
	        for (int i = 0; i < a.length; i++)
	        {
	            //If inputArray[i] is non-zero
	  
	            if(a[i] != 0)
	            {
	                //Assigning inputArray[i] to inputArray[counter]
	  
	                a[counter] = a[i];
	  
	                //Incrementing the counter by 1
	  
	                counter++;
	            }
	        }
	  
	        //Assigning zero to remaining elements
	  
	        while (counter < a.length)
	        {
	            a[counter] = 0;
	  
	            counter++;
	        }
	  
	        System.out.println("Input Array After moving zeros to end :");
	         
	        System.out.println(Arrays.toString(a));
	         
	        System.out.println("======================================");
	    }
	  
	    public static void main(String[] args)
	    {
	    	int a[]={23,0,45,0,8,5,0,2};
	    	moveZerosToEnd(a);
	        //moveZerosToEnd(new int[] {12, 0, 7, 0, 8, 0, 3});
	  
	        
	    }
	}

//#################################################
/*
static void moveZerosToFront(int a[])
{
    System.out.println("Input Array :"+Arrays.toString(a));
     
    //Initializing counter to position of last element

    int counter = a.length-1;

    //Traversing the inputArray from right to left

    for (int i = a.length-1; i >= 0; i--)
    {
        //If a[i] is non-zero

        if(a[i] != 0)
        {
            //Assigning a[i] to a[counter]

            a[counter] = a[i];

            //Decrementing the counter by 1

            counter--;
        }
    }

    //Assigning 0 to remaining elements

    while (counter >= 0)
    {
        a[counter] = 0;

        counter--;
    }

    System.out.println("Input Array After Moving Zeros To The Front :");
     
    System.out.println(Arrays.toString(a));
     
    System.out.println("====================================");
}

public static void main(String[] args)
{
    int a[]={3,5,0,8,0,5,0,70};
    //moveZerosToFront(new int[] {12, 0, 7, 0, 8, 0, 3});

    
}
}
Output : [0,0,0,3,5,8,5,70]
*/	
