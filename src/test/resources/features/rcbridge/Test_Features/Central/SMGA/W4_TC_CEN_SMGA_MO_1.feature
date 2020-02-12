# Last updated on
@SMGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: W4_TC_CEN_SMGA_MO_1
  #Missouri (MO)
  @W4_TC_CEN_SMGA_MO_1
  @Manual
  @User_Interface  
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  @W4LCJ
  @wave4
  @UAT_AUTO_INITIAL_TRANSACTION_W4
  @instant
   @W4_Murty
   @wave4_Medicare
    #completed adding data and steps
  Scenario Outline: <TCName> - [RL0] Author SPGA contract in <site>
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

    #Final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
       #Approval
    And I Approve HBP Red Door
    And I Approve Payment Appendix
      #Final Capture Cont.
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
#    And I enter Market Exception Grid in Final Capture
#    And I enter Market Exception Grid
#    And I add provider using TIN
#    And I select Providers
#    And I verify Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #Activate
    And I Set Status as Active
    And I capture Contract Number
    #
    #CMD Check
    And I Verify CMD and Capture Status

    #NDB Checking 
	  
    Examples:    
       | site          | paperType     | TCName             |
       | central uhn   | SMGA          | W4_TC_CEN_SMGA_MO_1|

  @W4_TC_CEN_SMGA_MO_1
  @Manual
  @User_Interface
  @UAT_AUTO_TERMINATION_W4
  @UAT_AUTO_AMENDMENT_W4
    #Terminate contract SMGA CEN
  Scenario Outline: <TCName> - Terminate Contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I select the contract
    And I click on Termination
    And I enter Termination details
    And I select Provider Roaster as None
    And I Select Contract Action
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Final Pending QA in Termination
    And I Start Final Capture
    And I select Provider Roster as None
    And I Select Contract Action
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active in Termination


    Examples:
      | site          | paperType     | TCName             |
      | central uhn   | SMGA          | W4_TC_CEN_SMGA_MO_1|