# Last updated on 
@US2089927
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2089927 - Obtain State details

  @TC1024268
  @Manual
  @Functional
  Scenario: TC1024268 - [RL0]
    Given a workflow exists
    When pulling state details from the contract
    Then workflows know the Deal ID State and both are displayed
    And the workflows know the Counterparty State and both are displayed
    And the Deal ID State is used for any user group identifications

  @TC1024270
  @Manual
  @Functional
  Scenario: TC1024270 - [RL1]
    Given multiple agreements are in a workflow with more than 1 unique market
    When the primary market is chosen
    Then the Deal ID State associated to the market is used for routing when the market user group doesn't exist

