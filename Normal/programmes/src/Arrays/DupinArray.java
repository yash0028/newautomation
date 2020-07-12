package Arrays;

public class DupinArray
{

	public static void main(String[] args) 
	{
		String[] s={"java","String","Yash","java","Yash"};
		int count =0;
		System.out.println(s.length);
		for(int i=0;i<s.length;i++)
		{
			for(int j=i+1; j<s.length;j++)
			{
				if(s[i]==s[j])
				{
					System.out.print(s[j]+", ");
					count++;
				}
			}
		}
		System.out.println("\nduplicates appeared "+count+" times");

		
	}
}
