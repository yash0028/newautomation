package arrays;

public class TestArray1 {

	public static void main(String[] args) {
		
		int arr[]=new int[5]; //declaration, instantiation
		arr[0]=10;  //initialization
		arr[1]=15;
		arr[2]=15;
		arr[3]=25;
		arr[4]=50;
		//arr[5]=80;
		

		System.out.println("SIZE:"+arr.length);

		
		for(int i=0;i<arr.length;i++) 
		System.out.println(arr[i]);
	
		}

}
   
	