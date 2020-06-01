package programmes;

public class largest3num
{

	public static void main(String[] args) 
	{
		
		int a=23;
		int b=25;
		int c=45;
		
		if(a>b && a>c)
		{
			System.out.println(a +"is 1stlargest");
		}
		else if(b>c && b>a)
		{
			System.out.println(b +"is 2ndlargest");
		}
		else
		{
			System.out.println(c +"is 3rdlargest");

			
		}
		
		
	}
}
