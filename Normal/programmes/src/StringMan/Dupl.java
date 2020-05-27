package StringMan;

public class Dupl 
{
	 public static void main(String args[]) 
	 {

	
	String str = "w3schools";
	  int cnt = 0;
	  char[] chr = str.toCharArray();
	  System.out.println("Duplicate Characters are:");
	  for (int i = 0; i < str.length(); i++) 
	  {
	   for (int j = i + 1; j < str.length(); j++)
	   {
	    if (chr[i] == chr[j]) 
	    {
	     System.out.println(chr[j]);
	     cnt++;
	     
	     //break;

	    }

	   }
	  }
	     System.out.println("Total no of duplicate are :" + cnt);

	  
}}