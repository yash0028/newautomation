package programmes;
import java.util.Scanner;

public class sthelp {

	public static void main(String[] args) {
	
		Scanner in = new Scanner(System.in);
		System.out.println("Enter your String");
		String str = in.nextLine();
	     in.close();
		String[] token = str.split("");    //used split method to print in reverse order
		for(int i=token.length-1; i>=0; i--)
		{
			System.out.print(token[i]+ "");
		}
		
	}

}
