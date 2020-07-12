package StringMan;

public class Dupl 
{
	 public static void main(String args[]) 
	 {

	
	String str = "programming";
	  int cnt = 0;
	  char[] chr = str.toCharArray();
	  System.out.println("Duplicate Characters are:");
	  for (int i = 0; i < chr.length; i++) 
	  {
	   for (int j = i + 1; j < chr.length; j++)
	   {
	    if (chr[i] == chr[j]) 
	    {
	     System.out.print(chr[j]+" ");
	    
	     cnt++;
	     
	     //break;

	    }

	   }
	  }
	     System.out.println("\nTotal no of duplicate are :" + cnt);

	  
}}