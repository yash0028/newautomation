# Last updated on
@MGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: W4_TC_SE_MGA_MS_1
  @mga_se
  @leo
  @W4_TC_SE_MGA_MS_1
  @Manual
  @User_Interface
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_SOUTHEAST
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
  @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_SE
  @W4LCJ
  @wave4
  @UAT_AUTO_INITIAL_TRANSACTION_W4
        #completed adding data and steps
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for MGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter Article Page
    And I enter Signature Block
    And I enter Additional Locations
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I choose Additional Manuals
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Group Summary
    Then I Complete Wizard
    #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
     #Approval
    And I Approve Payment Appendix
      #Final Capture Cont.
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    #Select "Providers based on individual TIN, MPIN and NPI" not implemented***
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Checking
    And I Verify CMD and Capture Status
    #NDB Checking

    #Check CMD
    #Check NDB
    Examples:
      | site          | paperType     | TCName            |
      | southeast uhn | MGA           | W4_TC_SE_MGA_MS_1 |


  @W4_TC_SE_MGA_MS_1
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT_W4
  @UAT_AUTO_MAKE_A_CORRECTION
  Scenario Outline: W4_TC_SE_MGA_MS_1 - [RL0] Author <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
	#Make a Correction
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

    #CMD Checking
    And I Verify CMD and Capture Status
    #Check CMD
    #Check NDB
    Examples:
      | site          | paperType     | TCName          |
      | southeast uhn | MGA           | W4_TC_SE_MGA_MS_1 |