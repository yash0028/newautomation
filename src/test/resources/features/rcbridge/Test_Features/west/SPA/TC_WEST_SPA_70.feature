# Last updated on
@US1407217
@releaseUnknown
@iterationUnknown
Feature: US1407217
  @TC_WEST_SPA_OR_70
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
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
    And I enter HBPs Red Door
    And I enter Appendix 1
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    #And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
     #Non Std approval process

     #Final capture

    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

     #Activate
    And I Set Status as Active


     #CMD Check
    When I have entered the CMD dashboard URL
    When I search for Contract
   # Then Validate Contract "<contract>" status and request type "<Contractstatus>"

    #NDB Check
   #Draft Amendment
    #Amendment Final Capture
    #Amendment CMD Checking
   #COSMOS Check
    #Make a correction - Terming a TIN


    Examples:
      | site          | paperType     | TCName           |
      | west uhn   | SPA           | TC_WEST_SPA_OR_70 |