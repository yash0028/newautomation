package Arrays;

public class LinearSearch 
{
public static void main(String[] args) 
{
	
	int a[]={1,2,3,4,5,6};
	int search=0;
	boolean flag=false;
	
	for(int i=0;i<a.length;i++)
	{
		if(search==a[i])
		{
			System.out.println("Elem Found at : " + i +"index");
			flag =true;
			break;
		}
		
	}
	if(flag== false)
	System.out.println("Elem Not Found: ");	
	
	
	
}
}
