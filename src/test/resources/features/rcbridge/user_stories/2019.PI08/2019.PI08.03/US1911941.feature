# Last updated on 
@US1911941
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1911941 - Financial Penalty Table

  @TC902691
  @Manual
  @Functional
  Scenario: TC902691 - [RL0]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the financial penalty table of the provider record
    And the financial penalty table exists on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is updated with the change
    And the transaction follows existing CMD transaction processes

  @TC902704
  @Manual
  @Functional
  Scenario: TC902704 - [RL1]
    Given a provider record has successfully been retrieved from the OCM db
    When a user changes the financial penalty table of the provider record
    And the financial penalty table DOES NOT exist on the OCM contract record
    And the user selects 'save' through the CMD UI
    Then the provider record is NOT updated with the change
    And a message displayed to the user 'Financial Penalty Table does not exist on Contract Record, unable to save changes'
    And a transaction is not created

  @TC902710
  @Manual
  @Functional
  Scenario: TC902710 - [RL2]
    Given the contract record has successfully been retrieve from the OCM database
    When a user changes a financial penalty table on the contract record
    And the user selects 'save' through the CMD UI
    Then the contract record is updated with the change
    And the transaction follows existing CMD transaction processes
    ###

