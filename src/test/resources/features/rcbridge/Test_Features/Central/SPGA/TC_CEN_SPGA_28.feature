# Last updated on 
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: TC_CEN_SPGA_IN_28
  
  @TC_CEN_SPGA_IN_28
  @Manual
  @User_Interface  
  @UAT_Automation_Batch1
  @UAT_AUTO_CENTRAL
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SPGA_INITIAL
  @Test_Failures
  Scenario Outline: TC_CEN_SPGA_IN_28 - [RL0] Author SPGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
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
    And I select Provider Signatory
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
    And I complete final capture by add provider using TIN

#    And I Start Final Capture
#    And I enter Contract Details in Final Capture
#    And I enter Provider Signatory
#    And I enter Our Signatory
#    And I enter Market Exception Grid in Final Capture
#    And I enter Market Exception Grid
#    And I add provider using TIN
#    And I select Providers
#    And I verify Providers
#    And I acknowledge the warning
#    And I enter Group Summary
#    Then I Complete Wizard
    
    #Activate
    And I Set Status as Active    
    And I capture Contract Number
    
    #CMD Check
    And I Verify CMD and Capture Status
		
    
    Examples:    
       | site          | paperType     | TCName|  				 
       | central uhn   | SPGA          | TC_CEN_SPGA_IN_28|
       
  @TC_CEN_SPGA_IN_28_M
  @Manual
  @User_Interface 
  @UAT_AUTO_MAKE_A_CORRECTION
  @UAT_AUTO_AMENDMENT
  @CEN_IN_AMANDMENT

  Scenario Outline: TC_CEN_SPGA_IN_28 - [RL0] Author SPGA contract in <site>  
	 
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"	 
    And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
       
    #Make a correction - Add provider with Make a correction.
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
    
    #Create supporting document 
    
    #CMD Check
    #NDB Check
		
    
    Examples:    
       | site          | paperType     | TCName|  				 
       | central uhn   | SPGA          | TC_CEN_SPGA_IN_28|
       