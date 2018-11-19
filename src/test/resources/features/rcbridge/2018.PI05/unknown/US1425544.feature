# Last updated on 
@US1425544
@2018.PI05
@MVP
@Maintenance
@releaseFuture
@iterationUnknown
Feature: US1425544 - Resend Type 2 error transactions to COSMOS after resolving

  @TC634357
  @Manual
  @Functional
  Scenario: TC634357 - [RL0]
    Given a COSMOS generated error message was received
    When the cause of the error has been resolved
    And the user has updated the status of the error transaction within CMD
    Then the transaction can be resent to COSMOS

  @TC634367
  @Manual
  @Functional
  Scenario: TC634367 - [RL1]
    Given a COSMOS generated error message was received
    When the cause of the error has been resolved
    And the user has NOT updated the status of the error transaction within CMD
    Then the transaction can NOT be resent to COSMOS

  @TC634369
  @Manual
  @Functional
  Scenario: TC634369 - [RL2]
    Given a COSMOS generated error message was received
    When the cause of the error has NOT been resolved
    And the user has NOT updated the status of the error transaction within CMD
    Then the transaction can NOT be resent to COSMOS

