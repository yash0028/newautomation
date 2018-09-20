# Last updated on 
@US1261002
@2018.PI03
@2018.PI03.02
Feature: US1261002 - [Unfinished] Contract Query API Implementation

  @TC565905
  @Automated
  @Functional
  Scenario: TC565905 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @TC565904
  @Automated
  @Functional
  Scenario: TC565904 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

