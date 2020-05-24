package set;
import java.util.*;
public class TestSet1 
	{  
		public static void main(String[] args)  
		{  
		HashSet<String> hs= new HashSet<String>();   //Empty HashSet 
		hs.add("India");  				//adding elements
		hs.add("America");  
		hs.add("Russia1");  
		hs.add("China");  
		hs.add("India");  												//duplicate value  
		hs.add("Russia1");                           //duplicate value  
		System.out.println("Set is "+hs);           //view HashSet  
		Iterator<String> it=hs.iterator();           //add an iterator to hs  
		System.out.println("Elements using iterator:");  
		while(it.hasNext())                          //display elements by using iterator  
		{  
		//String s=(String)it.next();  
		System.out.println(it.next());  
		}  
		}  

}
 
/*1. Set is mainly used for search operations-- 
using System.out.println(set.contains("Ajay"));//Search operation on object 
  2. Insertion is not maintained. Hashcode is used to insert-- Hence only iterator is used to print.
  3. Duplicates are not allowed.
  4. Not synchronized.
  5. Mainly used for search operations.
  6. Allows NULL value.
  7.
   
 Methods :
 1.set.addAll(set1);  //adding elements of set to set1
 2.set.removeAll(set1);
 3.set.clear();
 4.set.add();
 5.
*/