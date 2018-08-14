# Last updated on 
@MVP
@PI02_Top3
@Parity
@F205218
Feature: F205218 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 3)

  @US1103353
  @2018.PI03
  Scenario: US1103353::0 - [Continued] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @US1103353
  @2018.PI03
  Scenario: US1103353::1 - [Continued] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @US1103353
  @2018.PI03
  Scenario: US1103353::2 - [Continued] [Continued] [Continued] NDB_Send Updates for Update Roster business event
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

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

