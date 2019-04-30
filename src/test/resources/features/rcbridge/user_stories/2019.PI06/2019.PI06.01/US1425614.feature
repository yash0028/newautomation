# Last updated on 
@US1425614
@2019.PI06
@2019.PI06.01
@releasePast
@iterationPast
Feature: US1425614 - Resend Type 2 error transactions to NDB after resolving

  @TC634356
  @Manual
  @Functional
  Scenario: TC634356 - [RL0]
    Given a NDB generated error message was received
    When the cause of the error has been resolved
    And the user has updated the status of the error transaction within CMD
    Then the transaction can be resent to NDB

  @TC634361
  @Manual
  @Functional
  Scenario: TC634361 - [RL1]
    Given a NDB generated error message was received
    When the cause of the error has been resolved
    And the user has NOT updated the status of the error transaction within CMD
    Then the transaction can NOT be resent to NDB

  @TC634365
  @Manual
  @Functional
  Scenario: TC634365 - [RL2]
    Given a NDB generated error message was received
    When the cause of the error has NOT been resolved
    And the user has NOT updated the status of the error transaction within CMD
    Then the transaction can NOT be resent to NDB

