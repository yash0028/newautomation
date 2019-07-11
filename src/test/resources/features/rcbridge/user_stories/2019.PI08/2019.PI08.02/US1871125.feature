# Last updated on 
@US1871125
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1871125 - Classify messages based on informational vs action

  @TC874543
  @Manual
  @Functional
  Scenario: TC874543 - [RL0]
    Given messages exist for an OCM contract record
    And a message catalog exists in OCM
    When the user views the messages for a contract via CMD UI
    Then the user can view informational messages only
    And the user can view error messages only

  @TC874545
  @Manual
  @Functional
  Scenario: TC874545 - [RL1]
    Given messages exist for an OCM contract record
    And a message catalog exists in OCM
    When the user views the messages for a contract via CMD UI
    Then the user can view both information and error messages

