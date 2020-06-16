package programmes;

import java.util.Scanner;

public class Prime1to100 {
	//which is divided by one and itself

	public static void main(String[] args) {
		
		int temp=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the number :");
		int num = sc.nextInt();
		for (int i=1;i<=num;i++)
	{
			for(int j=2;j<=i-1;j++)
			{
				if(i%j==0)
				{
				temp=temp+1;	
				}
				
			}
		 if (temp==0)
		 {
		 	System.out.println(i);
		 }
		 else
		 {
			temp=0;
		 }
	}

	}

}
