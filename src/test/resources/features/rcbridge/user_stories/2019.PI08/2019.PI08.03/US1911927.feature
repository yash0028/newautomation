# Last updated on 
@US1911927
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1911927 - COSMOS Network Number

  @TC902701
  @Manual
  @Functional
  Scenario: TC902701 - [RL0]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the COSMOS network number of the provider record
    And the COSMOS network number exists on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is updated with the change
    And the transaction follows existing CMD transaction processes

  @TC902708
  @Manual
  @Functional
  Scenario: TC902708 - [RL1]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the COSMOS network number of the provider record
    And the COSMOS network number DOES NOT exist on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is NOT updated with the change
    And a message displayed to the user 'Network Number does not exist on Contract Record, unable to save changes'
    And a transaction is not created

  @TC902714
  @Manual
  @Functional
  Scenario: TC902714 - [RL2]
    Given the contract record has successfully been retrieve from the OCM database
    When a user changes a COSMOS Network Number on the contract record
    And the user selects 'save' through the CMD UI
    Then the contract record is updated with the change
    And the transaction follows existing CMD transaction processes
    ###

