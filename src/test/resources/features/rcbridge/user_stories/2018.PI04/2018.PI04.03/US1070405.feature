# Last updated on 
@US1070405
@2018.PI04
@2018.PI04.03
@MVP
@Plus
@Priority_1
@F159195
Feature: US1070405 - CLM >COSMOS Add a Facility Contract- PIC DIV - PSH (Header)

  @TC564945
  @Automated
  @Functional
  @US1070405
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564945 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

