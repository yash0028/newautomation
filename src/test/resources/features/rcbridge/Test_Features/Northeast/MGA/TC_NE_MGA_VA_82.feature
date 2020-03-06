# Last updated on
@MGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_MGA_VA_82

  @TC_NE_MGA_VA_82
  @Manual
  @User_Interface
  @UAT_AUTO_INITIAL_TRANSACTION1
  @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
  @generate_link
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"

  	#DRAFT
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
        And I complete final capture for MGA by add provider using TIN
        And I Set Status as Active
        And I capture Contract Number
#CMD Checking
    And I Verify CMD and Capture Status

    Examples:
          | site          | paperType     | TCName           |
          | northeast uhn   | MGA           | TC_NE_MGA_VA_82 |
