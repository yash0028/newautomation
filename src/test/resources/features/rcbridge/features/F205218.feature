# Last updated on 2018-08-07T20:28:02.410Z
@MVP
@PI02_Top3
@Parity
Feature: F205218 - Downstream MS - NDB Roster Update business event_UNET COSMOS Products (Part 3)

  @2018.PI03
  @2018.PI03.04
  Scenario: US1103353::0
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @2018.PI03
  @2018.PI03.04
  Scenario: US1103353::1
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @2018.PI03
  @2018.PI03.04
  Scenario: US1103353::2
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @2018.PI03
  @2018.PI03.03
  Scenario: US1233995
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1103097
    Given the need to support multiple event transactions within a Update Roster event at the Domain Service level
    When creating the services needed to support each event
    Then a standardized schema exists and is applied

  @2018.PI03
  @2018.PI03.02
  Scenario: US1260999
    Given Exari needs to connect to NDB through layer 7
    When Exari calls NDB through layer 7
    Then a valid response is received by NDB

