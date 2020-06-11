package Arrays;

public class DeleteEl {

	public static void main(String[] args) {

		int a[]={50,60,70,80,90};
		int del = 70;
		
		for(int i=0;i<a.length;i++)
		{
			if(del==a[i])
			{
				for(int j=i;j<a.length-1;j++)
				{
					a[j]=a[j+1];
					
				}
			break;
			}
			
		}
		for(int i=0;i<a.length-1;i++)
		{
			System.out.print(a[i]+" ");
		}
		
		
		
	}

}
