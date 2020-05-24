package numericpattern;

public class Snake 
{

	public static void main(String[] args) 
	{
		 int count=0;
		 for(int i=1;i<=5;i++)
		 {
			 if (i%2!=0)  // To execute odd rows
			 {
				 for (int j=1;j<=3;j++)
				 {
					 count=count+1;
					 System.out.print(count+ " ");
				 }
			 }
			 else // // To execute even rows

			 {
				 int temp=count+1;
				 for (int j=count+3; j>=temp; j--)
				 { // count+ 3 = next number should be increased by 3 times
					 
					 count=count+1;
					 System.out.print(j+" ");
				 }
				
			 }
			 System.out.println();
		 }
			
	}

}

/*
1 2 3 
6 5 4 
7 8 9 
12 11 10 
13 14 15 

*/