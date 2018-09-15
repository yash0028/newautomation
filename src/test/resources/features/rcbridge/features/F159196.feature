# Last updated on 
@MVP
@Priority_1
@PIC
@Parity
@F159196
Feature: F159196 - Integrate CLM with Provider Intent Certification (PIC) (Part 2)

  @US1199511
  @2018.PI03
  Scenario Outline: US1199511::0 - [Continued] PIC Implementation
    Given Exari has received a request to send data to PIC
    When the micro service has received the contract id of "<contractId>" from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC
    Examples:
      | contractId |
      | 124319 |

  @US1199511
  @2018.PI03
  Scenario Outline: US1199511::1 - [Continued] PIC Implementation
    Given Exari has received a request to send data to PIC
    When the micro service has received the contract id of "<contractId>" from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error
    Examples:
      | contractId |
      | 124318 |

  @US1199511
  @2018.PI03
  Scenario: US1199511::2 - [Continued] PIC Implementation
    Given Optum has received a request to send data to PIC
    When the micro service is unable to be reached by PIC
    Then Optum will return a server error

  @US1260995
  @2018.PI03
  Scenario: US1260995::0 - [Unfinished] PIC Implementation
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC

  @US1260995
  @2018.PI03
  Scenario: US1260995::1 - [Unfinished] PIC Implementation
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error

  @US1260995
  @2018.PI03
  Scenario: US1260995::2 - [Unfinished] PIC Implementation
    Given Exari has received a request to send data to PIC
    When the micro service is unable to be reached by Exari
    Then Exari will return a server error

  @US1209469
  @2018.PI03
  Scenario: US1209469 - PIC Analysis Spike
    Given Exari will need PIC integration
    Then a developer will need to research PIC to understand the requirements for integration.

