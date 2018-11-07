# Last updated on 
@US1240232
@2018.PI04
@2018.PI04.04
@releasePresent
@iterationPresent
Feature: US1240232 - Modify Contract Config record (UI)

  @TC615301
  @Manual
  @Functional
  Scenario: TC615301 - [RL0]
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @TC615302
  @Manual
  @Functional
  Scenario: TC615302 - [RL1]
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

