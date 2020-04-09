package inheritance;

public class Cat {
	
	public static void main(String args[]){ 
		
		System.out.println("*****Compile time polymorphism*******");
		Cat1 c=new Cat1();  
		c.meow();  
		c.eat();
		c.bark();
		
		System.out.println("******Run time polymorphism******");
		Bog d=new Cat1();
		d.bark();
		d.eat();
		
		System.out.println("******Run time polymorphism******");
		Cat q = new Bog();
		c.eat();

		}
	

	void eat(){
		
		System.out.println("eating...");
		
	}  
		}  
		
class Bog extends Cat{  
		void bark(){System.out.println("barking...");}  
		} 
class Cat1 extends Bog{  
		void meow(){System.out.println("meowing...");}  
		void bark(){System.out.println("barking1...");}  


		
}
