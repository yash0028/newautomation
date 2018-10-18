# Last updated on 
@US1070742
@2018.PI05
@MVP
@Plus
@Priority_2
@F159195
@releaseFuture
@iterationUnknown
Feature: US1070742 - COSMOS Facility Acknowledgment Process - Production

  @TC564965
  @Automated
  @Functional
  @US1070742
  @2018.PI05
  Scenario: TC564965 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV and acknowledged back to Exari that the data for X panel loaded successfully into the PIC Div. There will be 2 ACK files see above definition.

