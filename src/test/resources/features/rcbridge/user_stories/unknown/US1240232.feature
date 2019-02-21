# Last updated on 
@RC_invalid
@US1240232
@releaseUnknown
@iterationUnknown
Feature: US1240232 - Modify Contract Config record (UI)

  @TC615301
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC615301 - [RL0]
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @TC615302
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC615302 - [RL1]
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

