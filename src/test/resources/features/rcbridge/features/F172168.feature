# Last updated on 
@MVP
@CLM_Exari
@F172168
Feature: F172168 - Develop initial Migration from Emptoris to Exari - Exari

  @US1033114
  @2018.PI01
  Scenario: US1033114 - Perform visioning and import of Sample Contract data and associated Attachments (and types) from Emptoris into Exari
    Given Exari receives individual contracts from Emptoris
    When they open the data files
    Then they have the process defined on how to read them and process in the contract through visioning

