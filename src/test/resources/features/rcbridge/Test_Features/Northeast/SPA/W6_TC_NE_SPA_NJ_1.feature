#Author : Leo C Jacob <jacob_leo@optum.com>
#Last Updated : 2020-03-16 20:52:29.977704
Feature: W6_TC_NE_SPA_NJ_1
    @W6_TC_NE_SPA_NJ_1
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SPA
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SPA_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SPA_NE
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SPA_NE_W6

    Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>

#Begin Draft Contract
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_NE.csv" of "<site>" and paper type "<paperType>"
        
    And I enter PES Inputs
    And I enter PES Responses
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I select Provider Signatory
    And I enter Contract Details
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    
#End Draft Contract
    
#Begin Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    #Begin Approval
        And I Approve Payment Appendix
    #End Approval
    And I Set Status as Final Pending QA
    #Begin Provider Roster (None of the above)
        And I complete final capture with Roaster as None
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
      | northeast uhn | SPA           | W6_TC_NE_SPA_NJ_1 |

    
    @W6_TC_NE_SPA_NJ_1
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_NORTHEAST
    @UAT_AUTO_AMENDMENT_W6
    @UAT_AUTO_AMENDMENT_ALL_SPA
    @UAT_AUTO_AMENDMENT_ALL_SPA_W6
    @UAT_AUTO_AMENDMENT_ALL_SPA_NE
    @UAT_AUTO_AMENDMENT_ALL_SPA_NE_W6
    @UAT_AUTO_MAKE_A_CORRECTION
    @UAT_AUTO_MAKE_A_CORRECTION_NORTHEAST
    @UAT_AUTO_MAKE_A_CORRECTION_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SPA
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SPA_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SPA_NE
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SPA_NE_W6

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
      | northeast uhn | SPA           | W6_TC_NE_SPA_NJ_1 |
    
    @W6_TC_NE_SPA_NJ_1
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_NORTHEAST
    @UAT_AUTO_AMENDMENT_W6
    @UAT_AUTO_AMENDMENT_ALL_SPA
    @UAT_AUTO_AMENDMENT_ALL_SPA_W6
    @UAT_AUTO_AMENDMENT_ALL_SPA_NE
    @UAT_AUTO_AMENDMENT_ALL_SPA_NE_W6
    
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
	And I select Types of Amendments
	And I select Contract Applied in Amendments
	And I enter Contract Details in Amendments
	And I enter Appendix 2 in Amendments
	And I select applied Payment Appendix
	And I check Payment Appendix
	And I choose Additional Manuals
	And I enter Steerage
	And I enter Payment Appendix in Amendments for SPA contracts
	And I check Payment Appendix
	And I enter Group Summary
	And I Complete Wizard
#End Add Medicare Amendment

#Begin Add Medicare Final Capture
    And I Start Workflow
	And I Start Process for Initial Transaction
	And I Set Status as Final Pending QA in Amendment
	And I Start Final Capture
	And I enter Provider Signatory in Amendment
	And I enter Our Signatory in Amendment
	And I enter Appendix 2 in Amendments FinalCapture
	And I enter Payment Appendix in Amendments FinalCapture
	And I select Provider Roster as None
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
      | northeast uhn | SPA           | W6_TC_NE_SPA_NJ_1 |