# Last updated on
  #  # Appendix2 -  Standard ; Payment Appendix - All Player ; Add provider through make correction
  #  # Amendments -- Add Medicare
@PATBusinessTestcases_FL
@releaseUnknown
@iterationUnknown
Feature: W5_TC_SE_PAT_FL_01

  @W5_TC_SE_PAT_FL_01
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_INITIAL_TRANSACTION_PAT
  @today
  @UAT_AUTO_INITIAL_TRANSACTION_W5
  @w4AL
  @testw5_FL
  @Wave5_KS
  @W5_Murty
  @W5Y
  @W5_PAT_SPA

  Scenario Outline: <TCName> - [RL0] Author PAT contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
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

    #Begin Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    #Begin Approval
        #And I Approve Payment Appendix
    #End Approval
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    #Provider Roster (Add one or more providers to the roster)
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    #End Provider Roster
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
#End Final Capture

#Begin Activate
    And I Set Status as Active
    And I capture Contract Number
#End Activate
    #CMD Checking
    And I Verify CMD and Capture Status


    Examples:
      | site          | paperType     | TCName|
      | southeast uhn   | PAT          | W5_TC_SE_PAT_FL_01|




