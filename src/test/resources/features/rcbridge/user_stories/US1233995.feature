# Last updated on 
@US1233995
@2018.PI03
Feature: US1233995 - [Continued] NDB Layer 7 Implementation

  @TC535419
  @Automated
  @Functional
  Scenario: TC535419 - NDB Layer 7 Connection Test
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

