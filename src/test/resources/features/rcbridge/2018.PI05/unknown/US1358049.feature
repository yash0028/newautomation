# Last updated on
@US1358049
@2018.PI05
@MVP
@Plus
@Priority_2
@F159195
@releaseFuture
@iterationUnknown
Feature: US1358049 - COSMOS Facility Acknowledgment Process - PIC DIV

  @TC597161
  @Manual
  @Functional
  @US1358049
  @2018.PI05
  Scenario: TC597161 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV and acknowledged back to Exari that the data for X panel loaded successfully into the PIC Div. There will be 2 ACK files see above definition.

