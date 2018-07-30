# Last updated on 2018-07-24T14:22:50.599Z
@MVP
@Priority_1
@Parity
Feature: F159196 - Integrate CLM with Provider Intent Certification (PIC) (Part 2)

  @2018.PI03
  @2018.PI03.02
  Scenario: US1199511
    Given exari will send data to PIC and Examiner
    When the requested needs to be validated
    Then a micro service will validate the data against the selection the criteria.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1209469
    Given Exari will need PIC integration
    Then a developer will need to research PIC to understand the requirements for integration.

