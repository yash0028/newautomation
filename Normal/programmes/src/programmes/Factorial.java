package programmes;

import java.util.Scanner;

public class Factorial

{  
	 public static void main(String args[])
	 {  
	   int fact=1; 
	   Scanner sc = new Scanner(System.in);
	   System.out.println("Enter the number : ");
	    int num = sc.nextInt();
	       //It is the number to calculate factorial    
	  for(int i=1;i<=num;i++)
	  {    
	      fact=fact*i;    
	  }    
	  System.out.println("Factorial of "+num+" is: "+fact);    
	 }  
	}  
/*
{
	public static  int logic(int number){
        int fact = 1;
        while(number != 0){
            fact = fact*number;
            number--;
        }
     
        return fact;
    }
	
	public static void main(String args[]){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Number : ");
		int number = sc.nextInt();
		//Factorial fc = new Factorial();
	 System.out.println(logic( number));
		
	}
}*/


