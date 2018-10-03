# Last updated on 
@US1358064
@2018.PI04
@2018.PI04.05
@MVP
@Plus
@Priority_1
@F159195
Feature: US1358064 - CLM >COSMOS Add a Facility Contract - PIC DIV - PSO (Criteria)

  @TC597181
  @Manual
  @Functional
  @US1358064
  @2018.PI04
  @2018.PI04.05
  Scenario: TC597181 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

