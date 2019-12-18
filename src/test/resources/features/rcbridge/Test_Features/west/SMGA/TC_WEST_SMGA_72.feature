# Last updated on 
@SMGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_SMGA_OR_72
  
  @TC_WEST_SMGA_OR_72
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_WEST
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  @Test_Failures
  Scenario Outline: TC_WEST_SMGA_OR_72 - [RL0] Author SMGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
   #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SMGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I enter Appendix 1
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    #And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    
    #Approve
    And I Approve Payment Appendix
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
    And I capture Contract Number
    
    #CMD Check
#    When I have entered the CMD dashboard URL
#    When I search for Contract
#    Then Validate Contract "11122328" status and request type "InstallContract"

    
    Examples:    
       | site          | paperType     | TCName            |
       | west uhn      | SMGA          | TC_WEST_SMGA_OR_72|
       
       
  @TC_WEST_SMGA_OR_72
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @UAT_AUTO_MAKE_A_CORRECTION
  @SMGA_AMANDMENT
  Scenario Outline: TC_WEST_SMGA_OR_72 - [RL0] Author SMGA contract in <site>  
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
 	And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
    #Add provider with Make a correction
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I enter Provider Start Date
   	And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard 
    
    #Terminating TIN
    
    #Terminating TIN
     
		
    
    Examples:    
       | site          | paperType     | TCName            |
       | west uhn      | SMGA          | TC_WEST_SMGA_OR_72|
    