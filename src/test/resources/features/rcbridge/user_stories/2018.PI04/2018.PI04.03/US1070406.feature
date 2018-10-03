# Last updated on 
@US1070406
@2018.PI04
@2018.PI04.03
Feature: US1070406 - CLM >COSMOS Add a Facility Contract - to existing contract - PIC DIV - PSH

  @TC565657
  @Automated
  @Functional
  Scenario: TC565657 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

