# Last updated on
@US1407217
@releaseUnknown
@iterationUnknown
Feature: US1407217

  @TC_CEN_SMGA_IN_31
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>.csv" of "<site>" and paper type "<paperType>"
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
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I enter Provider Roster
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
    Examples:
      | site          | paperType     | TCName            |
      | central uhn   | SMGA          | TC_CEN_SMGA_IN_31 |