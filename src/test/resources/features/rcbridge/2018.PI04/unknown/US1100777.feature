# Last updated on 
@MVP
@Parity
@US1100777
@2018.PI04
@MVP
@Parity
@releasePresent
@iterationUnknown
Feature: US1100777 - Specify transaction values via spreadsheet

  @TC565854
  @Automated
  @Functional
  @MVP
  @Parity
  Scenario: TC565854 - [RL0]
    Given that a user has initiated a Mass Action
    When the user wants to specify the transaction values with a spreadsheet
    Then the User will be able to import a spreadsheet
    And the spreadsheet direction will be applied to impacted providers

