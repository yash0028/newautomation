# Last updated on
@SPGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: W5_TC_SE_SPGA_FL_04

  @W5_TC_SE_SPGA_FL_04
  @Manual
  @User_Interface
  @UAT_AUTO1
  @UAT_AUTO_INITIAL_TRANSACTION1
  @WAVE5INIT
  @UAT_AUTO_INITIAL_TRANSACTION_W5
  @WAVE5INIT_SPGA
  Scenario Outline: W5_TC_SE_SPGA_FL_04- [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
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
#    And I Approve Payment Appendix
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
      | southeast uhn   | SPGA          | W5_TC_SE_SPGA_FL_04|


  @W5_TC_SE_SPGA_FL_04
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SPGA_AMENDMENT
  @UAT_AUTO_AMENDMENT_W5
  @SPGA_W5_AMENDMENTS
  @WAVE5_SPGA_MC

  Scenario Outline: W5_TC_SE_SPGA_FL_04 - [RL0] Author SPGA contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

	#Make a Correction - Add a new TIN to the existing provider in the Roster.
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

    Examples:
      | site          | paperType     | TCName|
      | southeast uhn   | SPGA          | W5_TC_SE_SPGA_FL_04|


  @W5_TC_SE_SPGA_FL_04
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @SPGA_AMENDMENT
  @UAT_AUTO_AMENDMENT_W5
  @SPGA_W5_AMENDMENTS
  @AMEND_W5_SPGA

  Scenario Outline: W5_TC_SE_SPGA_FL_04 - [RL0] Author SPGA contract in <site>

    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
      #Draft
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"

    #Draft Amandament
    And I select the contract
    #Amandments sectio - Fee Schedule
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter Amendments Page to amend Payment Appendix
    And I enter Contract Details in Amendments
    And I enter Payment Appendix in Amendments to add Payment Appendix

    And I select fee schedule id in Amendments
    And I enter Group Summary
    And I Complete Wizard

    #Final Capture in Amendments
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Appendix 2 in Amendments FinalCapture
    And I preview Provider Details
    And I enter Payment Appendix in Amendments FinalCapture
#    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendments
    And I Set Status as Active in Amendment

    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName|
      | southeast uhn   | SPGA          | W5_TC_SE_SPGA_FL_04|

