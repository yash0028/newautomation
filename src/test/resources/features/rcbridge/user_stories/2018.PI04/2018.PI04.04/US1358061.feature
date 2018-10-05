# Last updated on 
@US1358061
@2018.PI04
@2018.PI04.04
@MVP
@Plus
@Priority_2
@F159195
Feature: US1358061 - CLM >COSMOS Add a Facility Contract - PIC DIV - PSD (Detail)

  @TC597202
  @Manual
  @Functional
  @US1358061
  @2018.PI04
  @2018.PI04.04
  Scenario: TC597202 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

