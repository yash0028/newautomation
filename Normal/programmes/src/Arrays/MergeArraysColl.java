package Arrays;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MergeArraysColl {

	public static void main(String[] args) {


		String a[]={"str","ing"};
		String b[]={"pop","lol"};
		List<String> ls = new ArrayList<String>(Arrays.asList(a));
		
		ls.addAll(Arrays.asList(b));
		
		Object[] str3 = ls.toArray();
		System.out.println(Arrays.toString(str3));
		//System.out.println(Arrays.asList(str3));
		//System.out.println(ls);

		
 		
		
	}

}
