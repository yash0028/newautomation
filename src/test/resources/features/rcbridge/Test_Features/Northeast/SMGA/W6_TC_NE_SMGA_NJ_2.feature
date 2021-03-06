#Author : Leo C Jacob <jacob_leo@optum.com>
#Last Updated : 2020-03-16 20:47:09.021482
Feature: W6_TC_NE_SMGA_NJ_2
    @W6_TC_NE_SMGA_NJ_2
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SMGA
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SMGA_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SMGA_NE
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_SMGA_NE_W6

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
    And I enter Practice Locations for SMGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I select Provider Signatory
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
        And I Approve HBP Red Door
        And I Approve Payment Appendix
    #End Approval
    And I Set Status as Final Pending QA
    #Begin Provider Roster (Add one or more providers to the roster)
        And I complete final capture by add provider using TIN
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
      | northeast uhn | SMGA           | W6_TC_NE_SMGA_NJ_2 |

    
    @W6_TC_NE_SMGA_NJ_2
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_NORTHEAST
    @UAT_AUTO_AMENDMENT_W6
    @UAT_AUTO_AMENDMENT_ALL_SMGA
    @UAT_AUTO_AMENDMENT_ALL_SMGA_W6
    @UAT_AUTO_AMENDMENT_ALL_SMGA_NE
    @UAT_AUTO_AMENDMENT_ALL_SMGA_NE_W6
    @UAT_AUTO_MAKE_A_CORRECTION
    @UAT_AUTO_MAKE_A_CORRECTION_NORTHEAST
    @UAT_AUTO_MAKE_A_CORRECTION_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SMGA
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SMGA_W6
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SMGA_NE
    @UAT_AUTO_MAKE_A_CORRECTION_ALL_SMGA_NE_W6

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
      | northeast uhn | SMGA           | W6_TC_NE_SMGA_NJ_2 |
    
    @W6_TC_NE_SMGA_NJ_2
    @Manual
    @User_Interface
    @UAT_AUTO_AMENDMENT
    @UAT_AUTO_AMENDMENT_NORTHEAST
    @UAT_AUTO_AMENDMENT_W6
    @UAT_AUTO_AMENDMENT_ALL_SMGA
    @UAT_AUTO_AMENDMENT_ALL_SMGA_W6
    @UAT_AUTO_AMENDMENT_ALL_SMGA_NE
    @UAT_AUTO_AMENDMENT_ALL_SMGA_NE_W6
    
    Scenario Outline: <TCName> - [RL0] Amend <paperType> contract in <site>
	
    
#Begin Replace Payment Appendix Amendment
    Given I am logged into Exari Dev as a valid user and launch contract using "<TCName>"
    And I am using the "<TCName>" data from "<paperType>_SE.csv" of "<site>" and paper type "<paperType>"
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter Amendments Page to amend Payment Appendix
    And I enter Contract Details in Amendments
    And I enter Payment Appendix in Amendments to replace Payment Appendix
    And I select fee schedule id in Amendments
    And I enter Group Summary
    And I Complete Wizard
#End Replace Payment Appendix Amendment

#Begin Replace Payment Appendix Final Capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Payment Appendix in Amendments FinalCapture
    And I select Provider Roster as None
    And I enter Group Summary
    And I Complete Wizard
#End Replace Payment Appendix Final Capture
    
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
      | northeast uhn | SMGA           | W6_TC_NE_SMGA_NJ_2 |