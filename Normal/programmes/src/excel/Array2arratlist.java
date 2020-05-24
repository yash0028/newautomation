package excel;

import java.util.ArrayList;
import java.util.Arrays;

public class Array2arratlist {
	public static void main(String[] args) 
    {    
        String[] array = new String[] {"ANDROID", "JSP", "JAVA", "STRUTS", "HADOOP", "JSF"};
          
        ArrayList<String> list = new ArrayList<String>(Arrays.asList(array));
          
        System.out.println(list);

}
}

//ArrayList To Array :
/*public static void main(String[] args) 
{    
    ArrayList<String> list = new ArrayList<String>();
      
    list.add("JAVA");
      
    list.add("JSP");
      
    list.add("ANDROID");
      
    list.add("STRUTS");
      
    list.add("HADOOP");
      
    list.add("JSF");
      
    String[] array = new String[list.size()]; 
      
    list.toArray(array);
      
    for (String string : array)
    {
        System.out.println(string);
    }
*/