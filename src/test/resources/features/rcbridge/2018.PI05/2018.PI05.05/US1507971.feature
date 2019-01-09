# Last updated on 
@US1507971
@2018.PI05
@2018.PI05.05
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationFuture
Feature: US1507971 - CLM >COSMOS Add a Facility Contract- PIC DIV - PSH (Header) - Unit Test

  @TC690161
  @Manual
  @Functional
  Scenario: TC690161 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

