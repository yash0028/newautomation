# Last updated on 
@US1240232
@2018.PI04
Feature: US1240232 - Modify Contract Config record (UI)

  @TC565955
  @Automated
  @Functional
  Scenario: TC565955 - [RL0]
    Given an Exari contract is created
    When the contract 'Final Capture' event occurs in Exari
    Then a CMD record is created

  @TC565956
  @Automated
  @Functional
  Scenario: TC565956 - [RL1]
    Given an CMD record exists
    When a CMD record inquiry request is made
    Then a CMD record is accessible

