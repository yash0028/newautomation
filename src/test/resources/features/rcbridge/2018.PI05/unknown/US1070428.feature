# Last updated on 
@US1070428
@2018.PI05
@MVP
@Plus
@Priority_2
@F159195
@releaseFuture
@iterationUnknown
Feature: US1070428 - Exari>COSMOS Term/Cancel a Facility Contract - PSH

  @TC565745
  @Automated
  @Functional
  @US1070428
  @2018.PI05
  Scenario: TC565745 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV
