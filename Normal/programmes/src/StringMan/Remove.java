package StringMan;


public class Remove 
{
	public static void main(String[] args)
	{
/*	{
		String str = "abcdDCBA123";

		System.out.println("String after Removing 'a' = "+str.replace("a", ""));
		
		System.out.println("String after Removing First 'a' = "+str.replaceFirst("ab", ""));

		System.out.println("String after replacing all small letters = "+str.replaceAll("([a-z])", ""));
	}

}
*/
	
	String s = "!@##$%^12344adfgfQWRER!@#@$#";
	s=s.replaceAll("[^a-zA-Z0-9]","");
	System.out.println(s);
	
	
}
}

