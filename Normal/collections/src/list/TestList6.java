package list;
import java.util.*;
public class TestList6 {
public static void main(String [] args)  
     {  
       ArrayList<String> al=new ArrayList<String>();  
           al.add("Ravi");    
           al.add("Vijay");    
           al.add("Ajay");    
           System.out.println("Before update: "+al.get(1));   
           								//Updating an element at specific position  
           al.set(1,"Gaurav");  
           System.out.println("After update: "+al.get(1));   
           
           ArrayList<String> al2=new ArrayList<String>(al);  
           al2.add("LOL");
           al2.add("MOM");
           al2.add("Ajay");
           al2.retainAll(al); // Common object is printed
           System.out.println(al2);
           
           for (String s: al2)
           {
        	   System.out.println(s);
           }

           
           
    }  
}
