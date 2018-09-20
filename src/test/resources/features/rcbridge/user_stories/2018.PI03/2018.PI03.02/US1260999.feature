# Last updated on 
@US1260999
@2018.PI03
@2018.PI03.02
Feature: US1260999 - [Unfinished] NDB Layer 7 Implementation

  @TC564757
  @Automated
  @Functional
  Scenario: TC564757 - [RL0]
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

