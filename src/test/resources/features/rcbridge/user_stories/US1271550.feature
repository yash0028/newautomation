# Last updated on 
@MVP+1
@US1271550
@2018.PI03
Feature: US1271550 - [Spike] NDB Contract Master Lookup API

  @TC565681
  @Automated
  @Functional
  Scenario: TC565681 - [RL0]
    Given the Exari / CLM>NDB contract master Lookup API payload data is correct
    When NDB receives the Search parameter data
    Then the spike analysis is completed
