# Last updated on 
@SMGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_SMGA_OR_40
  
  @TC_WEST_SMGA_OR_40
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_WEST
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  @Test_Failures
   Scenario Outline: TC_WEST_SMGA_OR_40 - [RL0] Author SMGA contract in <site>  
	 Given I am logged into Exari Dev as a valid user and go to the "<site>" site
  
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST.csv" of "<site>" and paper type "<paperType>"
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
    #And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
    #Final capture
    
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I complete final capture by add provider using TIN
    
    #Activate
    And I Set Status as Active
    And I capture Contract Number
    

    #CMD Checking
   And I Verify CMD and Capture Status

    #NDB Check
    
    #Amandments Add ER Wrap and Remove Navigate

    Examples:    
       | site          | paperType     | TCName            |
       | west uhn      | SMGA          | TC_WEST_SMGA_OR_40|
    