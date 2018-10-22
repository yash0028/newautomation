# Last updated on 
@US1283905
@2018.PI03
@2018.PI03.03
@MVP
@Priority_1
@Parity
@Examiner
@F171571
@releasePast
@iterationPast
Feature: US1283905 - [Unfinished] [Continued] Contract Query API Implementation

  @TC605393
  @Manual
  @Functional
  @US1283905
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605393 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC605394
  @Manual
  @Functional
  @US1283905
  @2018.PI03
  @2018.PI03.03
  Scenario: TC605394 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error
