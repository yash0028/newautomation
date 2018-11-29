# Last updated on 
@US1451133
@2018.PI05
@2018.PI05.02
@MVP
@Plus
@Priority_2
@Facility
@releasePresent
@iterationFuture
Feature: US1451133 - Exari>COSMOS Term/Cancel a Facility Contract - PSH - Design

  @TC651740
  @Manual
  @Functional
  Scenario: TC651740 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

