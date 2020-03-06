# Last updated on
@MGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: W4_TC_SE_MGA_MS_4
  @mga_se
  @leo
  @W4_TC_SE_MGA_MS_4
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
    And I Set Status as Final Pending QA
    And I complete final capture for MGA by add provider using TIN
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
      | southeast uhn | MGA           | W4_TC_SE_MGA_MS_4 |

  @W4_TC_SE_MGA_MS_4
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
      | central uhn   | SMGA          | W4_TC_SE_MGA_MS_4|