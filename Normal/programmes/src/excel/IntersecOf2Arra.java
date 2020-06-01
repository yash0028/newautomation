package excel;

import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;

public class IntersecOf2Arra 
{

	public static void main(String[] args)
	{
		String[] s1 = {"ONE", "TWO", "THREE", "FOUR", "FIVE", "FOUR"};
		  
        String[] s2 = {"THREE", "FOUR", "FIVE", "SIX", "SEVEN", "FOUR"};
  
       LinkedHashSet<String> set = new LinkedHashSet<String>();
  
        for (int i = 0; i < s1.length; i++)
        {
            for (int j = 0; j < s2.length; j++)
            {
                if(s1[i].equals(s2[j]))
                {
                    set.add(s1[i]);
                }
            }
        }
  
        System.out.println("First Array : "+Arrays.toString(s1));
         
        System.out.println("Second Array : "+Arrays.toString(s2));
         
        System.out.println("Common Elements : "+set);  

		
		
	}

}


/*Second Method : Using retainAll() Method

public static void main(String[] args)
{
    String[] s1 = {"ONE", "TWO", "THREE", "FOUR", "FIVE", "FOUR"};

    String[] s2 = {"THREE", "FOUR", "FIVE", "SIX", "SEVEN", "FOUR"};

    HashSet<String> set1 = new HashSet<String>(Arrays.asList(s1));
     
    HashSet<String> set2 = new HashSet<String>(Arrays.asList(s2));

    set1.retainAll(set2);

    System.out.println("First Array : "+Arrays.toString(s1));
     
    System.out.println("Second Array : "+Arrays.toString(s2));
     
    System.out.println("Common Elements : "+set1);     
}
}*/
