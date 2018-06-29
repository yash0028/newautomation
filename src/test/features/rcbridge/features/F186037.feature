# Last updated on 2018-06-28T20:50:10.828Z
@PI02_Top3
@Plus
@Parity
Feature: F186037 - DOMAIN MS - Roster Update business event and payload

  @2018.PI02
  @2018.PI02.04
  Scenario: US1103076
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event occurs
    Then a document exists that includes the needed edits, errors and error messages

  @#MVP
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103030::0
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the domain service creates a event and associated payload
    And the payload is valid, accurate and complete

  @#MVP
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103030::1
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the service creates an invalid event and payload
    And sends error message to the transaction status topic

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103082
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event edits exist
    Then the edits and error message processing rules are applied

