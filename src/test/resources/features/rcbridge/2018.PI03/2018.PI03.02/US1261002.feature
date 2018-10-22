# Last updated on 
@US1261002
@2018.PI03
@2018.PI03.02
@MVP
@Priority_1
@Parity
@Examiner
@F171571
@releasePast
@iterationPast
Feature: US1261002 - [Unfinished] Contract Query API Implementation

  @TC605388
  @Manual
  @Functional
  @US1261002
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605388 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC605389
  @Manual
  @Functional
  @US1261002
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605389 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

