# Last updated on 2018-07-24T14:22:50.599Z
@MVP
@Priority_1
@Parity
Feature: F159196 - Integrate CLM with Provider Intent Certification (PIC) (Part 2)

  @2018.PI03
  @2018.PI03.02
  Scenario: US1199511::0
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC

  @2018.PI03
  @2018.PI03.02
  Scenario: US1199511::1
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error

  @2018.PI03
  @2018.PI03.02
  Scenario: US1199511::2
    Given Exari has received a request to send data to PIC
    When the micro service is unable to be reached by Exari
    Then Exari will return a server error

  @2018.PI03
  @2018.PI03.01
  Scenario: US1209469
    Given Exari will need PIC integration
    Then a developer will need to research PIC to understand the requirements for integration.

