package programmes;

public class OddandEven 
{

	public static void main(String[] args) 
	{
		
		int num=123456;
		int even = 0,odd=0;
		while(num>0)
		{
			int lastnum= num%10; // Adds lastnumber into variable
			if(lastnum%2==0)
			{
				even++;
			}
			else
			{
				odd++;
			}
			num=num/10; // removes last number from integer
		}
		System.out.println("Even number count : " +even);
		System.out.println("Odd number count : " +odd);

		
	}
}
