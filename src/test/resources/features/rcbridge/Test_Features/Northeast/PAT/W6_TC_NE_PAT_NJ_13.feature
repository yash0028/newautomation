#Author : Leo C Jacob <jacob_leo@optum.com>
#Last Updated : 2020-03-16 20:44:52.290889
Feature: W6_TC_NE_PAT_NJ_13
    @W6_TC_NE_PAT_NJ_13
    @Manual
    @User_Interface
    @UAT_AUTO
    @UAT_AUTO_NORTHEAST
    @UAT_AUTO_INITIAL_TRANSACTION
    @UAT_AUTO_INITIAL_TRANSACTION_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_PAT
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_PAT_W6
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_PAT_NE
    @UAT_AUTO_INITIAL_TRANSACTION_ALL_PAT_NE_W6

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
    And I enter Practice Locations for PAT Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details  
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
      | northeast uhn | PAT           | W6_TC_NE_PAT_NJ_13 |

