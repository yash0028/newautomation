# Last updated on 
@SMGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_SMGA_VA_44
  
  @TC_NE_SMGA_VA_44
  @Manual
  @User_Interface
  @UAT_AUTO_INITIAL_TRANSACTION
   Scenario Outline: TC_NE_SMGA_VA_44 - [RL0] Author SMGA contract in <site>
	Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
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
    And I select Provider Signatory
    And I enter Appendix 1
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
    #Approval
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
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    
    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Check
     And I Verify CMD and Capture Status
    
    Examples:    
       | site          | paperType     | TCName|
       | northeast uhn   | SMGA          | TC_NE_SMGA_VA_44|
    
    
  @TC_NE_SMGA_VA_44
  @Manual
  @User_Interface
  @UAT_AUTO_MAKE_A_CORRECTION
  @UAT_AUTO_AMENDMENT
  @SMGA_AMANDMENT
  Scenario Outline: TC_NE_SMGA_VA_44 - [RL0] Author SMGA contract in <site>
	
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"	 
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
    And I select the contract
    
    #Add provider with Make a correction - TIN Change - Upload 
    When I am logged into Exari Dev
    And I search Contract using Contract Number
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Upload
    And I Download Current Roster
    And I Upload Completed Roster
    And I enter warning in Make Correction
    And I enter validation
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #AMENDMENT CMD Checking
     And I Verify CMD and Capture Status
    
    Examples:    
       | site          | paperType     | TCName|
       | northeast uhn   | SMGA          | TC_NE_SMGA_VA_44|
    