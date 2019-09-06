# Last updated on 
@US2009667
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US2009667 - Record and Display user details for Type 2 Error Resolution transaction

  @TC968851
  @Manual
  @Functional
  Scenario: TC968851 - [RL0]
    Given a contract event results in a Type 2 error that is/was actionable
    When the user has resolved the error
    And the user has determined the resolution outcome for the transaction
    And the outcome result has been stored in the audit database
    Then the user details are also stored in the audit database
    And the user details are also available for retrieval from the database if needed

  @TC968861
  @Manual
  @Functional
  Scenario: TC968861 - [RL1]
    Given a contract event results in a Type 2 error that is/was actionable
    And the user has resolved the error
    And the user has determined the resolution outcome for the transaction
    And the outcome result has been stored in the audit database
    And the user details are also stored in the audit database
    When the contract record is retrieved via CMD UI
    Then the user detail is also displayed in the CMD UI

