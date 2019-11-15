
public class Hooks {

	
	/*private final static Logger log = Logger.getLogger(Hooks.class);
	static volatile int x = 0;

	@Before
	public void setUpScenario(Scenario scenario){
	    ExtentTestManager.startTest("Scenario No . " + (x = x + 1) + " : " + scenario.getName());
	    ExtentTestManager.getTest().log(Status.INFO, "Scenario No . "+ x + " Started : - " + scenario.getName());
	}

	@After
	public void afterScenario(Scenario scenario){
	    String videoFile= Utility.stopAUTTestRecorder();
	    try{
	        if(scenario.isFailed()){
	           ExtentTestManager.addScreenShotsOnFailure();
	            //------------------------- Attaching video in the Report -------------------------
	            String failedTestVideo = "<a href=\"" + videoFile + "\">Download Failed Test Case Video</a>";
	            ExtentTestManager.embedVideoLink(failedTestVideo);
	            //scenario.write(failedTestVideo);
	        }
	        }
	        ExtentManager.getReporter().flush();
	    }
	  }*/

}
