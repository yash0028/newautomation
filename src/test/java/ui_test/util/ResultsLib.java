package ui_test.util;

import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.io.FileHandler;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import cucumber.api.PickleStepTestStep;
import cucumber.api.Scenario;
import cucumber.api.TestCase;
import cucumber.api.java.After;
import cucumber.api.java.AfterStep;
import cucumber.api.java.Before;

import ui_test.util.IUiStep;

public class ResultsLib implements IUiStep{
	
	public static int stepn;
	public static int scen=1;
	public static String reportfilePath;
	public static String Reportfolder;	
	public static int failed=0;
	public static int totaltests=0;
	public static ResultsLib objres = new ResultsLib();
	
	public static void fncreateReportfolder() 
	{
		try
		{
			String strpath = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date());
			Reportfolder = strpath;	
			System.out.println("Report folder"+Reportfolder);
			System.out.println(new File("TestReports").getAbsolutePath());
			new File(System.getProperty("user.dir")+"/TestReports/"+Reportfolder+"/Screenshots" ).mkdirs();
			File tempfile =  new File(System.getProperty("user.dir")+"/TestReports/temp.txt");
			FileWriter fw;			
			//tempfile.createNewFile();
			fw = new FileWriter(tempfile);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(Reportfolder);
			bw.flush();
			bw.close();			
			fnGenerateHtmlReportsummaryTable(Reportfolder);		
			
			//sendStartEmail();
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());
		}
	}

	
	public static void fnGenerateHtmlReportsummaryTable(String Reportfolder) {
		try {
			
			String header = "<html><head><title>TestReport</title></head><body link='orange'>"
					+ "<table border='0' cellspacing='1' cellpadding='1' width='100%'><tr><td align='left'><img src='"
					+ System.getProperty("user.dir")
					+ "/Optum.PNG' alt='Logo'height='50' width='100'/></td></tr><tr><td align='center'><h4 align='center'><font face='arial'  color='#153e7e' size='5'><b><center>Summary Report</center></b></font></h4></td></tr></table>"
					+ "<table border='1' cellspacing='1' cellpadding='1' width='60%'><tr><td>Total Executed</td><td>Totalvalue</td></tr><tr><td>Total Pass</td><td>Totalpassvalue</td></tr><tr><td>Total Fail</td><td>Totalfailvalue</td></tr><tr><td>Total Skipped</td><td>Totalskipvalue</td></tr></table>"
					+  "<br><table border='1' cellspacing='1' cellpadding='1' width='60%'><th>TestCase</th><th >Result</th><th >ContractNumber</th>";
			
			String template;						
			
			File reportfile = new File(System.getProperty("user.dir")+"/TestReports/"+Reportfolder +"/DetailedTestReport.html");
			FileWriter fw;
			reportfile.createNewFile();			
			template = header;
			fw = new FileWriter(reportfile);			
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(template);
			bw.flush();
			bw.close();	
			
			
			
		} catch (Exception ex) {
			System.out.println(ex.toString());			
		}
	}
	
	public static void fnGenerateHtmlReportTable(int scenarionumber, String strTestName, String Reportfolder) {
		try {
						
			String header = "<html><head><title>TestReport</title></head><body link='orange'><table border='0' cellspacing='1' cellpadding='1' width='100%'><tr><td align='left'><img src='"
					+ "Optum.PNG' alt='Logo'height='50' width='100'/></td></tr><tr><td align='center'><h4 align='center'><font face='arial'  color='#153e7e' size='5'><b><center>Detailed Report</center></b></font></h4></td></tr><tr></tr></table>";
			
			String table = "<table border='1' cellspacing='1' cellpadding='1' width='80%'>"
					+ "		<tr><td colspan='3'><h4 align='center'><font color='black' size='4' face='Arial'><b>"+strTestName
					+ "</b></font></h4></td></tr><tr></tr><tr><td bgcolor='#153e7e' width='30%' align='center' valign='middle'><font color='#e0e0e0' size='2' face='Arial'><b>Step</b></td><td bgcolor='#153e7e' align='center' valign='middle'><font color='#e0e0e0' size='2' face='Arial'><b>Description</b></font></td><td bgcolor='#153e7e' align='center' valign='middle' width='10%'><font color='#e0e0e0' size='2' face='Arial'><b>Status</b></font></td></tr>";
			
			
			String template = header + table;			
			reportfilePath = System.getProperty("user.dir")+"/TestReports/"+Reportfolder+"/"+strTestName+".html";			
			File reportfile = new File(reportfilePath);
			FileWriter fw;				
			if(!reportfile.exists())
			{
				reportfile.createNewFile();
				template = header + table;
				fw = new FileWriter(reportfile.getAbsoluteFile());
				BufferedWriter bw = new BufferedWriter(fw);
				bw.write(template);
				bw.flush();
				bw.close();		
			}
			else
			{
				template = table;
				fw = new FileWriter(reportfile.getAbsoluteFile(), true);
				BufferedWriter bw = new BufferedWriter(fw);
				bw.append(template);
				bw.flush();
				bw.close();
			}
			
			
		} catch (Exception ex) {
			System.out.println("fnGenerateHtmlReportTable"+ex.toString());		
		}
	}
	
	public static void fnTestResult(String strTestName, String strExceptedResult, String strDescription, String strResultStatus, boolean screenshot) {
		String template;
		//reportfilePath = System.getProperty("user.dir") + "/TestReports/"+Reportfolder+"/"+strTestName+".html";
		Reportfolder = returnreportfolder();		
		reportfilePath = System.getProperty("user.dir")+"/TestReports/"+Reportfolder+"/"+strTestName+".html";
		if (strResultStatus.equalsIgnoreCase("Pass")) 
		{
			if (screenshot) {
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
				String strDate = dateFormat.format(new Date());
				String hrefString = "Screenshots/"+strDate+ ".png";			 
				//objres.fnTakeScreenShot(strResultStatus,hrefString);
				
				template = "<tr><td width='30%' align='center'><font color='#153e7e' size='1' face='Arial align='center''><b>" + strExceptedResult
						+ "</b></font></td><td align='center'><font color='#153e7e' size='1' face='Arial' align='center'><b>"  + strDescription
						+ " </b></font></td><td width='10%' bgcolor='green' align='center'><font color='white' size='1' face='Arial'><b><a href='"
						+ hrefString + "'>Passed</a></b></font></td></tr>";
			}
			else
				template = "<tr><td width='30%' align='center'><font color='#153e7e' size='1' face='Arial align='center''><b>" + strExceptedResult
						+ "</b></font></td><td width='30%' align='center'><font color='#153e7e' size='1' face='Arial' align='center'><b>" + strDescription
						+ "</b></font></td><td width='10%' bgcolor='green' align='center'><font color='white' size='1' face='Arial'><b>Passed</b></font></td></tr>";

			
			try{
				File reportfile = new File(reportfilePath);
				FileWriter fw;
				fw = new FileWriter(reportfile.getAbsoluteFile(), true);
				BufferedWriter bw = new BufferedWriter(fw);
				bw.append(template);
				bw.flush();
				bw.close();
			} catch (Exception ex) {
				System.out.println(ex.toString());		
			}
			
			
		}
		else {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
			String strDate = dateFormat.format(new Date());
			String hrefString = "Screenshots/"+strDate+ ".png";		 
			objres.fnTakeScreenShot(strResultStatus,hrefString);
			template = "<tr><td width='30%' align='center'><font color='#153e7e' size='1' face='Arial align='center''><b>" + strExceptedResult
					+ "</b></font></td><td align='center'><font color='#153e7e' size='1' face='Arial' align='center'><b>"  + strDescription
					+ " </b></font></td><td width='10%' bgcolor='red' align='center'><font color='white' size='1' face='Arial'><b><a href='"
					+ hrefString + "'>Failed</a></b></font></td></tr>";
			try{
				File reportfile = new File(reportfilePath);
				FileWriter fw;
				fw = new FileWriter(reportfile.getAbsoluteFile(), true);
				BufferedWriter bw = new BufferedWriter(fw);
				bw.append(template);
				bw.flush();
				bw.close();	
				failed = failed+1;
			}catch (Exception ex) {
				System.out.println(ex.toString());		
			}
			
		}
	}
	
	
	public static void updateTestSummary()  {
		try {
			
			File fXmlFile = new File("build/cucumber-report/cucumber.xml");
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("testsuite");
			String totalTests = nList.item(0).getAttributes().getNamedItem("tests").getNodeValue();
			String totalfaild = nList.item(0).getAttributes().getNamedItem("failures").getNodeValue();
			String totalskipped = nList.item(0).getAttributes().getNamedItem("skipped").getNodeValue();
			int totalpassed = Integer.parseInt(totalTests)- (Integer.parseInt(totalfaild)+Integer.parseInt(totalskipped));
			
//			System.out.println("Total "+totalTests);
//			System.out.println("PASS "+totalpassed);
//			System.out.println("FAIL "+totalfails);
//			System.out.println("SKIP "+totalskipped);
			
			
			Reportfolder = returnreportfolder();
			String reportfilePath = System.getProperty("user.dir")+"/TestReports/"+Reportfolder+"/DetailedTestReport.html";
			File reportfile = new File(reportfilePath);
			FileReader fr;
			fr = new FileReader(reportfile.getAbsoluteFile());
			BufferedReader br = new BufferedReader(fr);
			String totalStr = "";
			String s;
			while ((s = br.readLine()) != null) {
	            totalStr = totalStr+s;
	        }
			
			
	        totalStr = totalStr.replaceAll("Totalvalue",totalTests+"").replaceAll("Totalpassvalue",totalpassed+"").replaceAll("Totalfailvalue",totalfaild+"").replaceAll("Totalskipvalue",totalskipped+"");
	        br.close();
			fr.close();	        
			FileWriter fw;
			fw = new FileWriter(reportfile.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(totalStr);
			//fw.write(totalStr);
			bw.flush();
			bw.close();
			fw.close();
			
			//Email			
			sendFinalEmail();
						
		} catch (Exception ex) {
			System.out.println(ex.toString());		
		}
	}

	
	public static void addscenarioinDetailedReport(String TestName) {
		try {
			Reportfolder = returnreportfolder();
			String hrefString_image = "screenshots/"+TestName+".png";
			String hrefString_testname = TestName+".html";
			String totalStr = "<tr align='center'><td><a href='"
						+ hrefString_testname + "'>"+TestName+"</td><td><a href='"
						+ hrefString_image + "'> "+TestName.split("-")[0].trim()+"_result_here</a></td><td>"+TestName.split("-")[0].trim()+"_contractnum_here</td></tr>"
								+ "<tr></tr>";
			String reportfilePath = System.getProperty("user.dir")+"/TestReports/"+ Reportfolder +"/DetailedTestReport.html";
			File reportfile = new File(reportfilePath);
			FileWriter fw;
			fw = new FileWriter(reportfile.getAbsoluteFile(), true);
			BufferedWriter bw = new BufferedWriter(fw);
			bw.append(totalStr);
			bw.flush();
			bw.close();
			
		} catch (Exception ex) {
			System.out.println(ex.toString());		
		}
	}
	
	public static void updateResultInSummaryreport(Boolean isfailed, String TestName) {
		try {
			Reportfolder = returnreportfolder();
			String reportfilePath = System.getProperty("user.dir")+"/TestReports/"+ Reportfolder+"/DetailedTestReport.html";
			File reportfile = new File(reportfilePath);
			FileReader fr;
			fr = new FileReader(reportfile.getAbsoluteFile());
			BufferedReader br = new BufferedReader(fr);
			String totalStr = "";
			String result;
			String s;
			
			
			while ((s = br.readLine()) != null) {
				
	            totalStr = totalStr+s;
	        }
			 String hrefString_image = "screenshots/"+TestName+".png";
			if(isfailed)
			{	result = "FAIL";
			    int a = totalStr.indexOf(TestName);			   
			    objres.fnTakeScreenShot(result,hrefString_image);
			    totalStr = totalStr.replaceAll(TestName.split("-")[0].trim()+"_result_here",result+"");
			}
			else
			{
				result = "PASS";
				objres.fnTakeScreenShot(result,hrefString_image);
				totalStr = totalStr.replaceAll(TestName.split("-")[0].trim()+"_result_here",result+"");
			}
			
			
	        
	        br.close();
			fr.close();	        
			FileWriter fw;
			fw = new FileWriter(reportfile.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(totalStr);
			//fw.write(totalStr);
			bw.flush();
			bw.close();
			fw.close();
						
										
		} catch (Exception ex) {
			System.out.println(ex.toString());		
		}
	}
	
	public static void writeContractnumberInReport(String TestName, String ContractNumber) 
	  {
		try {
			
			System.out.println(TestName);
			Reportfolder = returnreportfolder();
			String reportfilePath = System.getProperty("user.dir")+"/TestReports/"+ Reportfolder+"/DetailedTestReport.html";
			File reportfile = new File(reportfilePath);
			FileReader fr;
			fr = new FileReader(reportfile.getAbsoluteFile());
			BufferedReader br = new BufferedReader(fr);
			String totalStr = "";			
			String s;			
			while ((s = br.readLine()) != null) {
	            totalStr = totalStr+s;
	        }					
	        totalStr = totalStr.replaceAll(TestName.trim()+"_contractnum_here",ContractNumber+"");
	        br.close();
			fr.close();	        
			FileWriter fw;			
			fw = new FileWriter(reportfile.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(totalStr);
			//fw.write(totalStr);
			bw.flush();
			bw.close();
			fw.close();
		} catch (Exception ex) {
			System.out.println(ex.toString());		
		}	
	    
	  }
	
	//************************************************************************
	@AfterStep(value = "@User_Interface")
    public void afterStep(Scenario scn) throws Exception {
        
        Field f = scn.getClass().getDeclaredField("testCase");
        f.setAccessible(true);
        TestCase r = (TestCase) f.get(scn);

        //You need to filter out before/after hooks
        List<PickleStepTestStep> stepDefs = r.getTestSteps()
                .stream()
                .filter(x -> x instanceof PickleStepTestStep)
                .map(x -> (PickleStepTestStep) x)
                .collect(Collectors.toList());

        PickleStepTestStep currentStepDef = stepDefs
                .get(stepn);
        
        if(!scn.isFailed())
        	ResultsLib.fnTestResult(scn.getName(), currentStepDef.getStepText(),currentStepDef.getStepText()+"-> Executed successfully","PASS", true);
        else
        	ResultsLib.fnTestResult(scn.getName(), currentStepDef.getStepText(),currentStepDef.getStepText()+"-> Execution FAILED","FAIL", true);
        
        stepn = stepn+1;
        
    }
 
	
	 @Before(value = "@User_Interface")
	 public void createReport(Scenario scenario) 
	 {
		Reportfolder = returnreportfolder(); 
		if(Reportfolder==null)
		{
			fncreateReportfolder();
			Reportfolder = returnreportfolder();
		}
		
	    ResultsLib.fnGenerateHtmlReportTable(scen,scenario.getName(), Reportfolder);
	    ResultsLib.addscenarioinDetailedReport(scenario.getName());
	 	scen++;	 	
	 	stepn=0;
	 	
	 	
     }
  
    @After(value = "@User_Interface")
    public void updateResult(Scenario scenario) {
	    Reportfolder = returnreportfolder();
		String hrefString_image = "screenshots/"+scenario.getName()+".png";
	    fnTakeScreenShot("",hrefString_image);
	  	updateResultInSummaryreport(scenario.isFailed(),scenario.getName());
	  	//Capture contract	  	
	  	//writeContractnumberInReport(scenario.getName(), ContractNumber);
	  	totaltests++;
	  	System.out.println("Total Tests="+totaltests); 
		System.out.println("Total failed="+failed);
	 }
 
  
  public static String returnreportfolder()
  {
	  try{
		  String fileName = System.getProperty("user.dir")+"/TestReports/temp.txt";
		  Path path = Paths.get(fileName);
		  byte[] bytes = Files.readAllBytes(path);
		  List<String> allLines = Files.readAllLines(path, StandardCharsets.UTF_8);
		  return allLines.get(0).toString();
	  }
	  catch(Exception ex)
	  {
		  System.out.println(ex.toString());
		  return null;
	  }
	 
  }
  public void fnTakeScreenShot(String strResult, String imgpath) {
		try {
			
			File snapshort_file = ((TakesScreenshot) getDriver()).getScreenshotAs(OutputType.FILE);
			
				
				if(new File(imgpath).exists())
					FileHandler.copy(snapshort_file, new File(imgpath));
				else
				{
					String repfolder = System.getProperty("user.dir")+"/TestReports/"+returnreportfolder()+"/"+imgpath;
					FileHandler.copy(snapshort_file, new File(repfolder));
				}
				
				
//			BufferedImage image = new Robot()
//					.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
//			
//			ImageIO.write(image, "png",
//					new File(imgpath));
		} catch (Exception e) {
			System.out.println("Exception Occured while Capture Screen Shot");
			e.printStackTrace();
		}
	}
  
  //**************************************************************************************************************************
  public static void sendEmail(Session session, String toEmail, String subject, String body, String Filename){
		try
	    {
	      MimeMessage msg = new MimeMessage(session);
	      msg.setFrom(new InternetAddress("vlnmurthy.tarigoppala@optum.com", "Test"));
	      msg.setReplyTo(InternetAddress.parse(toEmail, false));
	      msg.setSubject(subject, "UTF-8");
	      //msg.setContent(body, "text/html");
	      	Multipart multipart = new MimeMultipart();
	        MimeBodyPart textBodyPart = new MimeBodyPart();
	        textBodyPart.setContent(body, "text/html");
	        
//	        if(Filename.equals(""))
//	        {
//	        	 MimeBodyPart attachmentBodyPart= new MimeBodyPart();
//	        	 String resultfile = System.getProperty("user.dir")+ "/TestResult/DetailedTestReport.html";
//	 	        FileDataSource source = new FileDataSource(resultfile); // ex : "C:/test.pdf"
//	 	        attachmentBodyPart.setDataHandler(new DataHandler(source));
//	 	        attachmentBodyPart.setFileName(resultfile); // ex : "test.pdf"
//	 	       // add the text part
//		        multipart.addBodyPart(attachmentBodyPart); // add the attachement part
//
//	        }
	        multipart.addBodyPart(textBodyPart);       
	        //msg.setContent(multipart);

	            
	      msg.setContent(multipart);
	      msg.setSentDate(new Date());
	      
	      msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
	      System.out.println("Message is ready");
  	      Transport.send(msg);  

	      System.out.println("EMail Sent Successfully!!");
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }
	}
	public static void sendStartEmail()
	{
	  String smtpHostServer = "mailinbound.uhc.com";                
      Properties props = System.getProperties();
      Session session = Session.getInstance(props, null);
      props.put("mail.smtp.host", smtpHostServer);
      String repfolder = returnreportfolder();
      String fileName = System.getProperty("user.dir")+"/TestReports/"+repfolder+"/DetailedTestReport.html";
      String header = "Execution Started <br><br> Results Link: <a href="+fileName+">ResultLink";       
      sendEmail(session, "vlnmurthy.tarigoppala@optum.com","Automation Execution Started",header,"");

	}
	public static void sendFinalEmail() throws IOException
	{ 
		
	  String smtpHostServer = "mailinbound.uhc.com";                
      Properties props = System.getProperties();
      Session session = Session.getInstance(props, null);
      props.put("mail.smtp.host", smtpHostServer);
      String header = "Hi Team,<br> Please Find the Automation Results As below <br><br>";
      
      String repfolder = returnreportfolder();
      
      String fileName = System.getProperty("user.dir")+"/TestReports/"+repfolder+"/DetailedTestReport.html";
      
      File sourceDirectory =  new File(System.getProperty("user.dir")+"/TestReports/"+repfolder);
	  File targetDirectory = new File(System.getProperty("user.dir")+"/build/TestReports");
      //copy source to target using Files Class
      copyFolder(sourceDirectory, targetDirectory);
      
	  Path path = Paths.get(fileName);
	  byte[] bytes = Files.readAllBytes(path);
	  List<String> allLines = Files.readAllLines(path, StandardCharsets.UTF_8);
	  String bodymsg= allLines.get(0).toString();
//      
//      String bodymsg = "<html><head><style>table,th,td{border: 1px solid black;background-color: #f1f1c1;border-collapse: collapse;}</style></head><body><br>"+header+"<table style='width:50%''><tbody><tr><td>TotalExecuted</td><td>"
//      				 +TotalExecuted+"</td></tr><tr><td>PASS</td><td>"
//      				 		+ ipass+"</td></tr></tr><td>FAIL</td><td>"
//      				 				+ ifail+"</td></tr><tr><td>Skip</td><td>"
//      				 						+ iskip+"</td></tr></tbody></body><br><br>Thanks,<br>AutomationTest</html>";
     
      sendEmail(session, "vlnmurthy.tarigoppala@optum.com","Automation Execution Completed",bodymsg,"");

      

      
	}
	

	private static void copyFolder(File sourceFolder, File destinationFolder) throws IOException
    {
        //Check if sourceFolder is a directory or file
        //If sourceFolder is file; then copy the file directly to new location
        if (sourceFolder.isDirectory()) 
        {
            //Verify if destinationFolder is already present; If not then create it
            if (!destinationFolder.exists()) 
            {
                destinationFolder.mkdir();
                System.out.println("Directory created :: " + destinationFolder);
            }
             
            //Get all files from source directory
            String files[] = sourceFolder.list();
             
            //Iterate over all files and copy them to destinationFolder one by one
            for (String file : files) 
            {
                File srcFile = new File(sourceFolder, file);
                File destFile = new File(destinationFolder, file);
                 
                //Recursive function call
                copyFolder(srcFile, destFile);
            }
        }
        else
        {
            //Copy the file content from one place to another 
            Files.copy(sourceFolder.toPath(), destinationFolder.toPath(), StandardCopyOption.REPLACE_EXISTING);
            System.out.println("File copied :: " + destinationFolder);
        }
    }
  
 
}