package excel;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class RemoveDup {

	public static void main(String[] args)
	{
        //Array with duplicate elements
        int[] arr = new int[] {1,2,3,4,5,1,3,5};
         
        int end = arr.length;
        Set<Integer> set = new HashSet<Integer>();

        for(int i = 0; i < end; i++)
        {
          set.add(arr[i]);
        }

        Iterator it = set.iterator();
        while(it.hasNext())
        {
          System.out.println(it.next());
        }
	}
}