# Last updated on
@SMGABusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: W5_TC_SE_SMGA_FL_09

  @W5_TC_SE_SMGA_FL_09
  @Manual
  @User_Interface
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION
  @SMGA_INITIAL
  @UAT_AUTO_INITIAL_TRANSACTION_W5
  @Wave5
  Scenario Outline: W5_TC_SE_SMGA_FL_09 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
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
#    And I select included Additional Manuals in Appendix1
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
#    And I Approve Payment Appendix
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
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #Activate
    And I Set Status as Active
    And I capture Contract Number

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site            | paperType     | TCName          |
      | southeast uhn   | SMGA          | W5_TC_SE_SMGA_FL_09|


  @W5_TC_SE_SMGA_FL_09
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  @UAT_AUTO_AMENDMENT_W5
  Scenario Outline: W5_TC_SE_SMGA_FL_09 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

	#Draft Amandament
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter Amendments Page to amend Payment Appendix
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Payment Appendix in Amendments to replace Payment Appendix
    And I select fee schedule id in Amendments
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
#    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site            | paperType     | TCName          |
      | southeast uhn   | SMGA          | W5_TC_SE_SMGA_FL_09|

  @W5_TC_SE_SMGA_FL_09
  @Manual
  @User_Interface
  @UAT_AUTO_AMANDAMENT
  @UAT_AUTO_MAKE_A_CORRECTION_W5
  @UAT_AUTO_AMENDMENT_W5
  Scenario Outline: W5_TC_SE_SMGA_FL_02 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Cancel
    And I select provider and cancel date
    And I enter cancel reason
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    Examples:
      | site            | paperType     | TCName          |
      | southeast uhn   | SMGA          | W5_TC_SE_SMGA_FL_09|