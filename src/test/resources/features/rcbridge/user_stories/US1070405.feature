# Last updated on 
@US1070405
@2018.PI04
Feature: US1070405 - Exari>COSMOS Add a Facility Panel - PIC DIV

  @TC564945
  @Automated
  @Functional
  Scenario: TC564945 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

