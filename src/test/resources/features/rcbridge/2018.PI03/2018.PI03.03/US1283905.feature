# Last updated on 
@US1283905
@2018.PI03
@2018.PI03.03
@MVP
@Priority_1
@Parity
@Examiner
@releasePast
@iterationPast
Feature: US1283905 - [Unfinished] [Continued] Contract Query API Implementation

  @TC605394
  @Manual
  @Functional
  Scenario: TC605394 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @TC605393
  @Manual
  @Functional
  Scenario: TC605393 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

