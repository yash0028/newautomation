# Last updated on 
@MVP
@US1470522
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1470522 - System Notes

  @TC666518
  @Manual
  @Functional
  @MVP
  Scenario: TC666518 - [RL0]
    Given I am the Entity Management Solution
    When a Mass or system-driven change impacts an Entity
    Then I add a note to each impacted Entity
    And my note is saved to the Entity record
    And the date and time is systematically added to the note
    And the Entity Management Solution is indicated as the source of the note

