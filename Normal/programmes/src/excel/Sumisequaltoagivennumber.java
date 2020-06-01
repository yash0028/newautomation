package excel;

import java.util.Arrays;

public class Sumisequaltoagivennumber 
{
	
	static void findThePairs(int a[], int inputNumber)
    {
        System.out.println("Input Array : "+Arrays.toString(a));
         
        System.out.println("Input Number : "+inputNumber);
         
        System.out.println("Pairs of elements whose sum is "+inputNumber+" are : ");
  
        for (int i = 0; i < a.length; i++)
        {
            for (int j = i+1; j < a.length; j++)
            {
                if(a[i]+a[j] == inputNumber)
                {
                    System.out.println(a[i]+" + "+a[j]+" = "+inputNumber);
                }
            }
        }
         
        System.out.println("======================================");
    }
  
    public static void main(String[] args)
    {
        //findThePairs(new int[] {4, 6, 5, -10, 8, 5, 20}, 10);
        int a[] = {4, 6, 5, -10, 8, 5, 20};
        int inputNumber =10;
        findThePairs(a, inputNumber);
  
       /* findThePairs(new int[] {4, -5, 9, 11, 25, 13, 12, 8}, 20);
  
        findThePairs(new int[] {12, 13, 40, 15, 8, 10, -15}, 25);
  
        findThePairs(new int[] {12, 23, 125, 41, -75, 38, 27, 11}, 50);*/
    }
}
