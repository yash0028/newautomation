package number;

/*public class A1Star {
	
	public static void main(String [] args) {
		for (int i=1; i<=5; i++)
		{
			for (int j=1; j <=i; j++)
			{
				System.out.print('*'+" ");
				
			}
			System.out.println();
			
		}
		
	}
	
}*/

/*	* 
 	* * 
 	* * * 
 	* * * * 
 	* * * * * 
*/
//*****************************************************

public class A1Star{
	public static void main(String[] args) {
		
		for (int i=1; i<=5; i++)
		{
			for(int j=5; j>=i; j--)
			{
				System.out.print("* ");
			}
			System.out.println();
		}
		
		
	}

}

/*	* * * * * 
 	* * * * 
 	* * * 
 	* * 
 	* 
*/