#Last Updated : 2020-02-18 18:53:22.671955

Feature: W5_TC_NE_MGA_MA_49
    @W5_TC_NE_MGA_MA_49
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W5
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_MGA_NE
    @2020-02-18
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
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    #Begin Provider Roster (None of the above)
        And I select Provider Roster as None
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
      | northeast uhn | MGA           | W5_TC_NE_MGA_MA_49 |