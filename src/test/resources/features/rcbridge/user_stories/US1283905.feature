# Last updated on 
@US1283905
@2018.PI03
Feature: US1283905 - [Unfinished] [Continued] Contract Query API Implementation

  @TC565975
  @Automated
  @Functional
  Scenario: TC565975 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC565977
  @Automated
  @Functional
  Scenario: TC565977 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

