# Last updated on 
@SMGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SMGA Business Testcases_IN
  
  @TC_CEN_SMGA_IN_78
  @Manual
  @User_Interface
  @UAT_Automation
  Scenario Outline: TC_CEN_SMGA_IN_78 - [RL0] Author SMGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
   #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
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
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Non Std approval process
    
    #Workflow Approval Physician Local Contract Approver_13476" role
    
    #log in with your (User who creates contract need to have following roles in secure
    
    #Workflow Approval Physician Local Pricing Approver_13476" role  and click on sign in
    
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
    And I enter retro code in Provider Roster
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

    #NDB Check
    
    #Add provider with Make a correction
#    And I click Make Correction
#    And I enter Market Exception Grid in Make Correction
#    And I enter Market Exception Grid
#    And I add provider using TIN
#    And I select Providers
#    And I enter Provider Start Date
#   	And I enter retro code in Provider Roster
#    And I acknowledge the warning
#    And I enter Group Summary
#    Then I Complete Wizard
    
    #Terminating TIN
     
		
    
    Examples:    
       | site          | paperType     | TCName|
       | central uhn   | SMGA          | TC_CEN_SMGA_IN_78|
    