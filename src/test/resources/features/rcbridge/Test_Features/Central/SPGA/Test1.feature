# Last updated on 
@US1407217
@releaseUnknown
@iterationUnknown
Feature: US1407217 - Author SPA Contact UI Path

  @TC624356
  @Manual
  @User_Interface
  Scenario Outline: TC624356 - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPGA Contract
    And I preview Provider Details
    And I enter Counterparty Details Page
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
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Provider Roster
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I enter Provider Roster and Upload a spreadsheet containing the roster in Make Correction
    And I Download Current Roster
    And I Upload Completed Roster
    And I enter warning in Make Correction
    And I enter validation
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    Examples:
      | site          | TCName   |
      | central uhn   | TC624356 |