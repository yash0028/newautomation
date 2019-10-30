# Last updated on 
@US2084979
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2084979 - Enhanced contract ID search response to include Mass when navigating into 4-blocker queues

  @TC1001185
  @Manual
  @Functional
  Scenario: TC1001185 - [RL0]
    Given a user has access to CMD
    When the user searches by Contract ID from the "home" screen
    Then non-mass actions transactions related to that contract ID will be displayed on the results screen
    And mass actions transactions related to the contract ID will be displayed on the results screen

  @TC1008969
  @Manual
  @Functional
  Scenario: TC1008969 - [RL1]
    Given a user has searched for a Contract ID from the "home" screen in CMD
    When the related transactions are displayed
    And the user has selected a transaction to view
    Then the user is able to navigate to the OCM

