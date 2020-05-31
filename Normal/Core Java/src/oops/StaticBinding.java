package oops;

public class StaticBinding 
{

	/*static binding
	When type of the object is determined at compiled time(by the compiler), 
	it is known as static binding.

	If there is any private, final or static method in a class,
	there is static binding.*/
	 private void eat()
	 {
		 System.out.println("dog is eating...");
	 }  

	public static void main(String[] args) 
	{
		StaticBinding sb = new StaticBinding();
		
		sb.eat();
		
		
	}

}


