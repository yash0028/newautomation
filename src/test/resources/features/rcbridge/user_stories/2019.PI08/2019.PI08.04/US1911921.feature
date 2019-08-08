# Last updated on 
@US1911921
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1911921 - Modify Contract Master selection

  @TC902690
  @Manual
  @Functional
  Scenario: TC902690 - [RL0]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the contract master of the provider record
    And the contract master exists on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is updated with the change
    And the transaction follows existing CMD transaction processes

  @TC902703
  @Manual
  @Functional
  Scenario: TC902703 - [RL1]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the contract master of the provider record
    And the contract master DOES NOT exist on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is NOT updated with the change
    And a message displayed to the user 'Contract Master does not exist on Contract Record, unable to save changes'
    And a transaction is not created

  @TC902709
  @Manual
  @Functional
  Scenario: TC902709 - [RL2]
    Given the contract record has successfully been retrieve from the OCM database
    When a user changes a contract master on the contract record
    And the user selects 'save' through the CMD UI
    Then the contract record is updated with the change
    And the transaction follows existing CMD transaction processes

