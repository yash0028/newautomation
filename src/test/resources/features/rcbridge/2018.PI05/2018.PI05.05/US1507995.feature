# Last updated on 
@US1507995
@2018.PI05
@2018.PI05.05
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationFuture
Feature: US1507995 - Exari>COSMOS Term/Cancel a Facility Contract - PSH - Unit Test

  @TC690130
  @Manual
  @Functional
  Scenario: TC690130 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

