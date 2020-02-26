#Author : Leo C Jacob <jacob_leo@optum.com>
#Last Updated : 2020-02-25 17:24:59.254354
Feature: W5_TC_NE_MGA_MA_53
    @W5_TC_NE_MGA_MA_53
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W5
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_W5
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_NE
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_NE_W5

    Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>

#Begin Draft Contract
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
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
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
#End Draft Contract
    
#Begin Final Capture
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
    #Begin Provider Roster (Upload a spreadsheet containing the roster / Download the current roster)
        And I set Roster Action as Upload
        And I Download Current Roster
        And I Upload Completed Roster
        And I enter warning in Make Correction
        And I enter validation
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

#Begin CMD Checking
    And I Verify CMD and Capture Status
#End CMD Checking

#Begin NDB Checking
#End NDB Checking
        
    Examples:
      | site          | paperType     | TCName            |
      | northeast uhn | MGA           | W5_TC_NE_MGA_MA_53 |

    
    @W5_TC_NE_MGA_MA_53
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_W5
    @UAT_AUTO_AMENDMENT_ALL_MGA
    @UAT_AUTO_AMENDMENT_ALL_MGA_W5
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE_W5
    @UAT_AUTO_MAKE_A_CORRECTION
    @UAT_AUTO_MAKE_A_CORRECTION_W5
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_W5
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_NE
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_NE_W5

    Scenario Outline: <TCName> - [RL0] Make A Correction <paperType> contract in <site>
    
#Begin Make A Correction
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
	And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    #Begin Provider Roster (Cancel one or more providers from the roster)
        And I set Roster Action as Cancel
        And I select provider and cancel date
        And I enter cancel reason
    #End Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
#End Make A Correction
    
#Begin CMD Checking
    And I Verify CMD and Capture Status
#End CMD Checking

#Begin NDB Checking
#End NDB Checking
        
    Examples:
      | site          | paperType     | TCName            |
      | northeast uhn | MGA           | W5_TC_NE_MGA_MA_53 |
    
    @W5_TC_NE_MGA_MA_53
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_W5
    @UAT_AUTO_AMENDMENT_ALL_MGA
    @UAT_AUTO_AMENDMENT_ALL_MGA_W5
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE_W5
    
    Scenario Outline: <TCName> - [RL0] Amend <paperType> contract in <site>
	
    
#Begin Add Medicare Amendment
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I preview Provider Details
    And I select Types of Amendments
    And I enter Contract Details in Amendments
    And I enter Benefit Plan Descriptions Provision
    And I select applied Payment Appendix
    And I select Payment Appendix to include in Amendments for MGA contracts
    And I choose Additional Manuals
    And I enter Steerage
    And I enter Medicare Advantage Payment Appendix in MGA
    And I verify Medicare Advantage
    And I enter Regulatory Appendices in Amendment
    And I enter Group Summary
    And I Complete Wizard
#End Add Medicare Amendment

#Begin Add Medicare Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Contract Details in Amendments Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Appendix 2 in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I enter Group Summary
    And I Complete Wizard
#End Add Medicare Final Capture
    
#Begin Activate
    And I Set Status as Active in Amendment
#End Activate

#Begin CMD Checking
    And I Verify CMD and Capture Status
#End CMD Checking

#Begin NDB Checking
#End NDB Checking
        
    Examples:
      | site          | paperType     | TCName            |
      | northeast uhn | MGA           | W5_TC_NE_MGA_MA_53 |