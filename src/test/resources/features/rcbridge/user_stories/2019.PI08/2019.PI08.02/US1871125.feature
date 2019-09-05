# Last updated on 
@US1871125
@2019.PI08
@2019.PI08.02
@releasePast
@iterationPast
Feature: US1871125 - Classify messages based on informational vs action (UI user story)

  @TC874543
  @Manual
  @Functional
  Scenario: TC874543 - [RL0] Validate information and error messages
    Given messages exist for an OCM contract record
    And a message catalog exists in OCM
    When the user views the messages for a contract via CMD UI
    Then the user can view informational messages only
    And the user can view error messages only

  @TC874545
  @Manual
  @Functional
  Scenario: TC874545 - [RL1] Validate error message selection
    Given messages exist for an OCM contract record
    And a message catalog exists in OCM
    When the user views the messages for a contract via CMD UI
    Then the user can view both information and error messages

