package excel;

import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;

public class IntersecOf2Arra 
{

	public static void main(String[] args)
	{
		String[] inputArray1 = {"ONE", "TWO", "THREE", "FOUR", "FIVE", "FOUR"};
		  
        String[] inputArray2 = {"THREE", "FOUR", "FIVE", "SIX", "SEVEN", "FOUR"};
  
       LinkedHashSet<String> set = new LinkedHashSet<String>();
  
        for (int i = 0; i < inputArray1.length; i++)
        {
            for (int j = 0; j < inputArray2.length; j++)
            {
                if(inputArray1[i].equals(inputArray2[j]))
                {
                    set.add(inputArray1[i]);
                }
            }
        }
  
        System.out.println("First Array : "+Arrays.toString(inputArray1));
         
        System.out.println("Second Array : "+Arrays.toString(inputArray2));
         
        System.out.println("Common Elements : "+set);  

		
		
	}

}


/*Second Method : Using retainAll() Method

public static void main(String[] args)
{
    String[] inputArray1 = {"ONE", "TWO", "THREE", "FOUR", "FIVE", "FOUR"};

    String[] inputArray2 = {"THREE", "FOUR", "FIVE", "SIX", "SEVEN", "FOUR"};

    HashSet<String> set1 = new HashSet<String>(Arrays.asList(inputArray1));
     
    HashSet<String> set2 = new HashSet<String>(Arrays.asList(inputArray2));

    set1.retainAll(set2);

    System.out.println("First Array : "+Arrays.toString(inputArray1));
     
    System.out.println("Second Array : "+Arrays.toString(inputArray2));
     
    System.out.println("Common Elements : "+set1);     
}
}*/
