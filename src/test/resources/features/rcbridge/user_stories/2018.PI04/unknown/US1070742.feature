# Last updated on 
@US1070742
@2018.PI04
Feature: US1070742 - COSMOS Facility Acknowledgment Process

  @TC564965
  @Automated
  @Functional
  Scenario: TC564965 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV and acknowledged back to Exari that the data for X panel loaded successfully into the PIC Div. There will be 2 ACK files see above definition.
