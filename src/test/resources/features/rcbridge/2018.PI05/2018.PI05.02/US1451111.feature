# Last updated on 
@US1451111
@2018.PI05
@2018.PI05.02
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationPresent
Feature: US1451111 - CLM >COSMOS Add a Facility Contract - PIC DIV - PSD (Detail) - Design

  @TC651737
  @Manual
  @Functional
  Scenario: TC651737 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

