# Last updated on
@MGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_MGA_VA_11
  @mga_ne
  @leo
  @TC_NE_MGA_VA_11
  @Manual
  @User_Interface
  @UAT_AUTO_INITIAL_TRANSACTION
  @UAT_AUTO_NORTHEAST
  @UAT_AUTO
  @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
  Scenario Outline: TC_NE_MGA_VA_11 - [RL0] Author <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
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
    And I preview Provider Details
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    #Select "Providers based on individual TIN, MPIN and NPI" not implemented***
    And I complete final capture for MGA by add provider using TIN

    #Activate
    And I Set Status as Active
    And I capture Contract Number
    #CMD Checking
    And I Verify CMD and Capture Status

    Examples:
      | site          | paperType     | TCName          |
      | northeast uhn | MGA           | TC_NE_MGA_VA_11 |
      
      
  @TC_NE_MGA_VA_11
  @Manual
  @User_Interface
  @UAT_AUTO_AMENDMENT
  @UAT_AUTO_MAKE_A_CORRECTION
  @AMENDMENT_ALL_MGA
  Scenario Outline: TC_NE_MGA_VA_11 - [RL0] Author <paperType> contract in <site>
	
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
	And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"

    #Make Correction - Provider Roster (Add one or more providers to the roster)
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    #Select "Providers based on individual TIN, MPIN and NPI" not implemented***
    And I add provider using TIN
    And I select Providers
    And I enter Provider Start Date
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
#CMD Checking
    And I Verify CMD and Capture Status
    #Check NDB
    Examples:
      | site          | paperType     | TCName          |
      | northeast uhn | MGA           | TC_NE_MGA_VA_11 |