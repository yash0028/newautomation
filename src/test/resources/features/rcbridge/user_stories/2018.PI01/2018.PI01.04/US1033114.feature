# Last updated on 
@US1033114
@2018.PI01
@2018.PI01.04
Feature: US1033114 - Perform visioning and import of Sample Contract data and associated Attachments (and types) from Emptoris into Exari

  @TC564676
  @Automated
  @Functional
  Scenario: TC564676 - [RL0]
    Given Exari receives individual contracts from Emptoris
    When they open the data files
    Then they have the process defined on how to read them and process in the contract through visioning

