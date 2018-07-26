# Last updated on 2018-05-01T00:35:35.642Z
@MVP
@CLM_Exari
Feature: F172168 - Develop initial Migration from Emptoris to Exari - Exari

  @2018.PI01
  @2018.PI01.04
  Scenario: US1033114
    Given Exari receives individual contracts from Emptoris
    When they open the data files
    Then they have the process defined on how to read them and process in the contract through visioning

