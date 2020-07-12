package StringMan;

public class Countchar1 {
	
	
	
	    public static void main(String[] args) {  
	        String string = "The best of both worlds";  
	        int count = 0;  
	         System.out.println(string.length());  // including spaces
	        //Counts each character except space  
	        for(int i = 0; i < string.length(); i++)
	        {  
	            if(string.charAt(i) != ' ')  
	                count++;  
	        }  
	          
	        //Displays the total number of characters present in the given string  
	        System.out.println("Total number of characters in a string: " + count);  
	    }  
	}  


