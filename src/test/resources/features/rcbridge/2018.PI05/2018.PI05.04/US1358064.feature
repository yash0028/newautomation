# Last updated on 
@US1358064
@2018.PI05
@2018.PI05.04
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationFuture
Feature: US1358064 - CLM >COSMOS Add a Facility Contract - PIC DIV - PSO (Criteria) - Coding & Unit Test

  @TC597181
  @Manual
  @Functional
  Scenario: TC597181 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

