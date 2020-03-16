#Author : Leo C Jacob <jacob_leo@optum.com>
#Last Updated : 2020-03-16 19:13:43.648409
Feature: W6_TC_NE_MGA_NJ_14
    @W6_TC_NE_MGA_NJ_14
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_NE
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_NE_W6

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
    And I enter Group Summary
    Then I Complete Wizard
    
#End Draft Contract
    
#Begin Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    #Begin Approval
        And I Approve HBP Red Door
        And I Approve Payment Appendix
    #End Approval
    And I Set Status as Final Pending QA
    #Begin Provider Roster (Add one or more providers to the roster)
        And I complete final capture for MGA by add provider using TIN
    #End Provider Roster
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
      | northeast uhn | MGA           | W6_TC_NE_MGA_NJ_14 |

    
    @W6_TC_NE_MGA_NJ_14
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_NORTHEAST
    @UAT_AUTO_AMENDMENT_W6
    @UAT_AUTO_AMENDMENT_ALL_MGA
    @UAT_AUTO_AMENDMENT_ALL_MGA_W6
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE
    @UAT_AUTO_AMENDMENT_ALL_MGA_NE_W6
    @UAT_AUTO_MAKE_A_CORRECTION
    @UAT_AUTO_MAKE_A_CORRECTION_NORTHEAST
    @UAT_AUTO_MAKE_A_CORRECTION_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_NE
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_MGA_NE_W6

    Scenario Outline: <TCName> - [RL0] Make A Correction <paperType> contract in <site>
    
#Begin Make A Correction
	Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
	And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    #Begin Provider Roster (Add one or more providers to the roster)
        And I add provider using TIN
        And I select Providers
        And I enter Provider Start Date
        And I enter retro code in Provider Roster
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
      | northeast uhn | MGA           | W6_TC_NE_MGA_NJ_14 |
