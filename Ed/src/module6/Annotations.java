package module6;

import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class Annotations {
	
  /*@BeforeMethod
	Test1()
	@AfterMethod
	
	@BeforeMethod    // Compulsory pairs if multiple test cases are there.
	Test2()
	@AfterMethod
	
	@BeforeMethod
	Test3()
	@AfterMethod
*/

		
		@BeforeMethod
		public void beforeMethod() {
			System.out.println("This will execute before every Method");
		}
		
		@Test
		public void Test1() {
			System.out.println("This is the Test Case 1");
		}	
		
		@Test
		public void Test2() {
			System.out.println("This is the Test Case 2");
		}
		
		@Test
		public void Test3() {
			String actual = "This is the Test Case 3";
			String expected = "This is the Test Case 3";

			Assert.assertEquals(actual,expected);
			System.out.println("Assert passed");
			
			
		}
		
		@AfterMethod
		public void afterMethod() {
			System.out.println("This will execute after every Method");
		}

		@BeforeClass
		public void beforeClass() {
			System.out.println("This will execute before the Class");
		}

		@AfterClass
		public void afterClass() {
			System.out.println("This will execute after the Class");

		}

		@BeforeTest
		public void beforeTest() {
			System.out.println("This will execute before the Test1");

		}

		@AfterTest
		public void afterTest() {
			System.out.println("This will execute after the Test1");

		}

	
		@BeforeSuite
		public void beforeSuite() {
			System.out.println("This will execute before the Test Suite");

		}

		@AfterSuite
		public void afterSuite() {
			System.out.println("This will execute after the Test Suite");
		}
		

		
	}
