# Last updated on 
@US1516349
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1516349 - [Continued] Implement Serialize Contract Updates

  @TC730660
  @Manual
  @Functional
  Scenario: TC730660 - [RL0]
    Given the two contracting events from Exari at the same time
    When the analysis on the two contracting events from Exari at the same time is completed
    Then the detailed development design document is created.

  @TC730661
  @Manual
  @Functional
  Scenario: TC730661 - [RL1]
    Given that 2 contracting events are submitted from Exari on the same contract at the same time
    When the first contract event generates a Type 1 Contract Master error
    Then the second contract event is queued until the Contract Master error on the first Contract Installation event has been successfully remediated
    And then the second contract event to update a roster is successfully processed

