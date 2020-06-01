package Arrays;

public class DupinArray
{

	public static void main(String[] args) 
	{
		String[] s={"java","String","Yash","java","Yash"};
		for(int i=0;i<s.length;i++)
		{
			for(int j=i+1; j<s.length;j++)
			{
				if(s[i]==s[j])
				{
					System.out.println("Found Duplicate :"+s[i]);
				}
			}
		}
		
		
	}
}
