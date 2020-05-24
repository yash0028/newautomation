package inheritance;

  public class Multi {
	  public static void main(String args[]){  
			
		Multi2 d=new Multi2();  
		d.weep();  
		d.bark();  
		d.eat(); 
		
		Multi1 m = new Multi1();
		 m.bark();
		 m.eat();
		}
	
	void eat(){
		System.out.println("eating...");
		}  
	}  
  
  
	class Multi1 extends Multi{ 
		
	void bark(){
		System.out.println("barking...");
		} 
	void eat(){
		System.out.println("M1eating...");
		} 
	} 
	
	class Multi2 extends Multi1{ 
		
	void weep()
	{
		System.out.println("weeping...");
		
	}  
	void bark(){
		System.out.println("M2barking...");
		} 
	}  
	/*class TestInheritance2{  
	public static void main(String args[]){  
		
		Multi2 d=new Multi2();  
	d.weep();  
	d.bark();  
	d.eat(); 
	 Multi1 m = new Multi1();
	 m.bark();
	 m.eat();
	}

}*/
