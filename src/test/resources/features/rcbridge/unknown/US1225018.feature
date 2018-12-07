# Last updated on 
@US1225018
@releaseUnknown
@iterationUnknown
Feature: US1225018 - Process Mass Updates

  @TC565263
  @Automated
  @Functional
  Scenario: TC565263 - [RL0]
    Given I am the Entity Management Solution
    When multiple updates are received from a Legacy application
    Then I can process all the transactions in the mass update

