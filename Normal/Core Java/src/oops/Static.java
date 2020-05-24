package oops;

class Static{  
	 static  int rollno;//instance variable  
	 static String name; 
	 static String college;
	  // static String college ="ITS";//static variable  
	   									
	   Static(int r, String n, String c) //constructor  - used to load static variable. 
	   {  								//Because there is no need of object for static variables, Methods.
	   rollno = r;  
	   name = n; 
	   college = c;
	   }  
	   										//method to display the values  
	   void display ()
	   {
		   
		System.out.println(rollno+" "+name+" "+college);
		System.out.println(college);

		}  //yes we can access static methods by using object reference too.But warning will be given.
	 
						//Test class to show the values of objects  
	 public static void main(String args[]){  
		 Static s1 = new Static(111,"Karan","ITS");  
		 Static s2 = new Static(222,"Aryan","ITS");  
	 //we can change the college of all objects by the single line of code  
	 
	 s1.display();  
	 s2.display();  
	 }  
	}
