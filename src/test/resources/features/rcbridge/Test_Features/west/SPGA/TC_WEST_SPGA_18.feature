# Last updated on 
@SPGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_OR
  
  @TC_WEST_SPA_OR_05
  @Manual
  @User_Interface  
   Scenario Outline: TC_WEST_SPA_OR_05 - [RL0] Author SPGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Final capture
   And I Start Workflow
   And I Start Process for Initial Transaction
   And I Set Status as Final Pending QA
   And I Start Final Capture
   And I enter Contract Details in Final Capture
   And I enter Provider Signatory
   And I enter Our Signatory
   And I enter Market Exception Grid in Final Capture
   And I enter Market Exception Grid
   And I add provider using TIN
   And I select Providers
   And I verify Providers
   And I acknowledge the warning
   And I enter Group Summary
   Then I Complete Wizard
    #Activate
   And I Set Status as Active
    
   
    
    	#NDB Checking 
		#Draft Amandament
		#Amandment final capture
		#Activate Amandament
		
		#Amendment CMD Checking
		
		
    
    Examples:    
       | site          | paperType     | TCName|  				 
       | west uhn   | SPGA          | TC_WEST_SPA_OR_18|
       
    