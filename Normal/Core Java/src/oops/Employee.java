package oops;

class Employee {
	int id;
	String name;
	float salary;

	Employee(int i, String n, float s) {
		id = i;
		name = n;
		salary = s;
		System.out.println(id + " " + name + " " +salary);

	}
	/*
	 * void display() { System.out.println(id+" "+name+" "+salary); }
	 */

	public static void main(String[] args) {
		Employee e1 = new Employee(101, "ajeet", 45000);
		Employee e2 = new Employee(102, "irfan", 25000);
		Employee e3 = new Employee(103, "nakul", 55000);
		/*
		 * e1.insert(101,"ajeet",45000); 
		 * e2.insert(102,"irfan",25000);
		 * e3.insert(103,"nakul",55000);
		 */
		/*
		 * e1.display(); e2.display(); e3.display();
		 */
		System.out.println("Employee Details : ");

		System.out.println(e1.id + " " + e1.name + " " + e1.salary);
		System.out.println(e2.id + " " + e2.name + " " + e2.salary);
		System.out.println(e3.id + " " + e3.name + " " + e3.salary);

	}
}
