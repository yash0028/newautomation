# Last updated on
@MGABusinessTestcases_VA
@releaseUnknown
@iterationUnknown
Feature: TC_NE_MGA_VA_39

  @TC_NE_MGA_VA_39
  @Manual
  @User_Interface
  @UAT_AUTO_TESTING
  @UAT_AUTO_INITIAL_TRANSACTION
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

    #Final Capture - Provider Roster (Add one or more providers to the roster through Upload/download)
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    And I set Roster Action as Upload
    And I Download Current Roster
    And I Upload Completed Roster
    And I enter Provider Start Date
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active
	And I capture Contract Number
#CMD Checking
    And I Verify CMD and Capture Status

    Examples:
          | site          | paperType     | TCName           |
          | northeast uhn   | MGA           | TC_NE_MGA_VA_39 |

      @TC_NE_MGA_VA_39
      @Manual
      @User_Interface
      @UAT_AUTO_AMENDMENT1
      @AMENDMENT_ALL_MGA
      Scenario Outline: TC_NE_MGA_VA_39 - [RL0] Amend <paperType> contract in <site>

        Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
        And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"

         #Amandments Add ER Wrap and Remove Charter
      And I select the contract
      And I click on Create Amendment
      And I enter title
      And I enter Amendment Selection
      And I select Amendments needed in Amendment Selection
      And I select Amendment Type in Provider Details
      And I enter OurSignatory
      And I select Unilateral Contract in Amendments
      And I select Provider Type Radio Button in Amendments
      And I enter Opt-out in Amendments
      And I enter Opt-out Address in Amendments in IL
      And I enter Contract Details in Amendments
      And I enter Effective date in Contract Details
      And I enter Appendix 2 in Amendments
      And I select applied Payment Appendix
      And I enter Group Summary
      And I Complete Wizard

      #Amandment final capture
      And I Start Workflow
      And I Start Process for Initial Transaction
      And I Set Status as Final Pending QA in Amendment
      And I Start Final Capture
      And I enter Appendix 2 in Amendments FinalCapture
      And I select Provider Roster as None
      And I check Payment Appendix
      And I enter Opt-out in Amendments
      #And I enter Opt-out Address in Amendments in IL
      And I enter Group Summary
      And I Complete Wizard
      And I Set Status as Active in Amendment
    #CMD Checking
      And I Verify CMD and Capture Status

        Examples:
             | site          | paperType     | TCName           |
             | northeast uhn   | MGA           | TC_NE_MGA_VA_39 |