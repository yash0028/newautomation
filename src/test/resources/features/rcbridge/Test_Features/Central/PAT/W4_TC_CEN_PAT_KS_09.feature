#Create a Contract (mgaccent)- Author commercial with 1 Mid-level PCP for PAT contract, execute and load contract, verify contract_Standard_Add Medicare
# Last updated on
@PATBusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: W4_TC_CEN_PAT_KS_09

  @W4_TC_CEN_PAT_KS_09
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  @today
  @UAT_AUTO_INITIAL_TRANSACTION_PAT_CEN
  @W4_KS
  @W4_Murty
  @UAT_AUTO_INITIAL_TRANSACTION_W4
  
  Scenario Outline: W4_TC_CEN_PAT_KS_09 - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for PAT Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I select Provider Signatory
    And I enter Contract Details
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
    #And I enter retro code in Provider Roster
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
      | central uhn   | PAT          | W4_TC_CEN_PAT_KS_09|


  @W4_TC_CEN_PAT_KS_09
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @UAT_AUTO_AMENDMENT_PAT
  @today
  @AMENDMENT_ALL_PAT
  @KS_W4_AMENDMENTS
  @UAT_AUTO_AMENDMENT_W4
  Scenario Outline: W4_TC_CEN_PAT_KS_04 - [RL0] Amend PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"

    #cancel provider
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Cancel
    And I select provider and cancel date
    And I enter cancel reason
    And I acknowledge the warning
#    And I enter warning in Make Correction
#    And I enter validation
#    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard


    Examples:
      | site          | paperType     | TCName|
      | central uhn   | PAT          | W4_TC_CEN_PAT_KS_09|

