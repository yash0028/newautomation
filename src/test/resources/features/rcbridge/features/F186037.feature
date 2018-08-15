# Last updated on 
@PI02_Top3
@Plus
@Parity
@F186037
Feature: F186037 - DOMAIN MS - Roster Update business event and payload

  @US1103076
  @2018.PI02
  Scenario: US1103076 - Domain MS - Edits and Errors for Roster Update Event SPIKE
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event occurs
    Then a document exists that includes the needed edits, errors and error messages

  @#MVP
  @US1103030
  @2018.PI02
  Scenario: US1103030::0 - Domain MS - Add/Remove a Physician to an Existing Physician Contract
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the domain service creates a event and associated payload
    And the payload is valid, accurate and complete

  @#MVP
  @US1103030
  @2018.PI02
  Scenario: US1103030::1 - Domain MS - Add/Remove a Physician to an Existing Physician Contract
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the service creates an invalid event and payload
    And sends error message to the transaction status topic

  @US1103082
  @2018.PI02
  Scenario: US1103082 - Domain MS - Send errors or canonical model for Roster Update Event
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event edits exist
    Then the edits and error message processing rules are applied

