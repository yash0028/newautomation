# Last updated on 
@US1234077
@2018.PI03
Feature: US1234077 - [Continued] [Continued] Contract Query API Implementation

  @TC551549
  @Automated
  @Functional
  Scenario: TC551549 - [RL0] Happy Path
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC551550
  @Automated
  @Functional
  Scenario: TC551550 - [RL1] Fail Path
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

