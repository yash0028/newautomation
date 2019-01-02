# Last updated on 
@US1451098
@2018.PI05
@2018.PI05.03
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationPresent
Feature: US1451098 - CLM >COSMOS Add a Facility Contract- PIC DIV - PSH (Header) - Coding & Unit Test

  @TC651739
  @Manual
  @Functional
  Scenario: TC651739 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

