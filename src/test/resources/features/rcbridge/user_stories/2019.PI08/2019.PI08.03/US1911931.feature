# Last updated on 
@US1911931
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1911931 - ConArr and GTN

  @TC902699
  @Manual
  @Functional
  Scenario: TC902699 - [RL0]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the ConArr and/or Group Table Number of the provider record
    And the ConArr and/or Group Table Number combination exists on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is updated with the change
    And the transaction follows existing CMD transaction processes

  @TC902707
  @Manual
  @Functional
  Scenario: TC902707 - [RL1]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the ConArr and/or Group Table Number of the provider record
    And the ConArr and/or Group Table Number combination DOES NOT exist on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is NOT updated with the change
    And a message displayed to the user 'ConArr and/or Group Table Number combination does not exist on Contract Record, unable to save changes'
    And a transaction is not created

  @TC902713
  @Manual
  @Functional
  Scenario: TC902713 - [RL2]
    Given the contract record has successfully been retrieve from the OCM database
    When a user changes the ConArr and/or Group Table Number on the contract record
    And the user selects 'save' through the CMD UI
    Then the contract record is updated with the change
    And the transaction follows existing CMD transaction processes
    ###

