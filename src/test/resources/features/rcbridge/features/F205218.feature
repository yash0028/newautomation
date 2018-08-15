# Last updated on 
@MVP
@PI02_Top3
@Parity
@F205218
Feature: F205218 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 3)

  @US1233995
  @2018.PI03
  Scenario: US1233995 - [Continued] NDB Layer 7 Implementation
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

  @MVP
  @US1103097
  @2018.PI03
  Scenario: US1103097 - [Continued] Domain MS - Create event schema design for Roster Update
    Given the need to support multiple event transactions within a Update Roster event at the Domain Service level
    When creating the services needed to support each event
    Then a standardized schema exists and is applied

  @US1260999
  @2018.PI03
  Scenario: US1260999 - [Unfinished] NDB Layer 7 Implementation
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

