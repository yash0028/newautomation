package inheritance;

public class Single {

	void eat() {
		System.out.println("eating...");
	}
}

class Mo extends Single {
	void bark() {
		System.out.println("barking...");
	}

	public static void main(String[] args) {

		Mo t = new Mo();
		t.bark();
		t.eat();
	}
}
