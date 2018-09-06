# Last updated on 
@US1234077
@2018.PI03
Feature: US1234077 - [Continued] [Continued] Contract Query API Implementation

  @TC564977
  @Automated
  @Functional
  Scenario: TC564977 - [RL0]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC564978
  @Automated
  @Functional
  Scenario: TC564978 - [RL1]
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @TC551549
  @Automated
  @Functional
  Scenario: TC551549 - Happy Path
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @TC551550
  @Automated
  @Functional
  Scenario: TC551550 - Fail Path
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

