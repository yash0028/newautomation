package list;
import java.util.*;
public class TestLink1 {
	public static void main(String args[]){  
		  
		  LinkedList<String> al=new LinkedList<String>();  
		  al.add("Ravi");  
		  al.add("Vijay");  
		  al.add("Ravi");  // add elemnts to array.
		  al.add("Ajay");  
		  
		  Iterator<String> itr=al.iterator();  
		  while(itr.hasNext())
		  {  
		   System.out.println(itr.next());  
		  }  
    }  

}

/* 1.al.add();
2.al.addFirst();
3.al.addLast();
4.al.get();
5.al.set();
al.addAll();
al.addLast();
al.remove();
al.size();
############# Mainly used for Manipulation ###############

6.al.removeFirst();
7.al.removeLast();
8.al.remove(2);

*/