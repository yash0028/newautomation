# Last updated on 
@US1911936
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1911936 - Role Type

  @TC902698
  @Manual
  @Functional
  Scenario: TC902698 - [RL0]
    Given a contract transaction was processed
    And a user has viewed the OCM record display
    When the user finds the system-derived Role Type to be inaccurate
    Then the user will be able to select, from a drop down list, another value
    And the user will be able to click a button to save their changes
    And the new configuration record for that provider will be stored in the database
    And the standard load processing will occur for this change

