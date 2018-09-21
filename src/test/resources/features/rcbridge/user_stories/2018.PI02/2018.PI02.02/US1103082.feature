# Last updated on 
@US1103082
@2018.PI02
@2018.PI02.02
Feature: US1103082 - Domain MS - Send errors or canonical model for Roster Update Event

  @TC565569
  @Automated
  @Functional
  Scenario: TC565569 - [RL0]
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event edits exist
    Then the edits and error message processing rules are applied
