# Last updated on 
@US1415155
@2018.PI04
@2018.PI04.04
@releasePresent
@iterationPresent
Feature: US1415155 - [Defect] No message displayed when there are no action required contract items

  @TC628765
  @Manual
  @Functional
  Scenario: TC628765 - [RL0]
    # Scenario 1 (Action required information in database)
    Given I am on the CMD User Review and Input page
    When there are no Action required transactions
    Then the following message: There are currently no contracts that require user review and input at this time

