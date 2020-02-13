# Last updated on
#Author commercial with 1 Mid-level PCP for PAT contract, execute and load contract, verify contract fed__Standard_Add Medicare.
@PATBusinessTestcases_AL
@releaseUnknown
@iterationUnknown
Feature: W4_TC_SE_PAT_AL_22

  @W4_TC_SE_PAT_AL_22
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  @UAT_AUTO_INITIAL_TRANSACTION_W4
  @w4AL
  @testw4_AL
   @W4_Murty
  Scenario Outline: W4_TC_SE_PAT_AL_22 - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE_AR.csv" of "<site>" and paper type "<paperType>"
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
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I select Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site            | paperType     | TCName         |
      | southeast uhn   | PAT           | W4_TC_SE_PAT_AL_22|

  @W4_TC_SE_PAT_AL_22
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @UAT_AUTO_AMENDMENT_PAT
  @UAT_AUTO_AMENDMENT_TEST
  @UAT_AUTO_AMENDMENT_MIG1
  @AMENDMENT_ALL_PAT
  @task111
  @bigh
  @PAT_SE_AMEND
  Scenario Outline: W4_TC_SE_PAT_AL_22 - [RL0] Amend PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE_AR.csv" of "<site>" and paper type "<paperType>"


    #Draft Amandament
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I select Payment Appendix to include in Amendments for PAT contracts
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Payment Appendix in Amendments for PAT contracts
    And I check Payment Appendix
    And I enter Group Summary
    And I Complete Wizard


    #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I enter Group Summary
    And I Complete Wizard

     #Activating Amendment
    And I Set Status as Active in Amendment


    #CMD Checking
    And I Verify CMD and Capture Status


    Examples:
      | site            | paperType     | TCName         |
      | southeast uhn   | PAT           | W4_TC_SE_PAT_AL_22|

