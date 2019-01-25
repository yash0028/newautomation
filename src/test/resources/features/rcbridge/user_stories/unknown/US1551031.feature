# Last updated on 
@US1551031
@releaseUnknown
@iterationUnknown
Feature: US1551031 - Validation Process RateUpdated transaction to downstream systems

  @TC710724
  @Manual
  @Functional
  Scenario: TC710724 - [RL0]
    Given a contract master has been updated for the contract
    When the contract is active
    Then contract masters are updated for each qualified provider record on the roster.

