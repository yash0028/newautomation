# Last updated on 
@US1103076
@2018.PI02
@2018.PI02.04
Feature: US1103076 - Domain MS - Edits and Errors for Roster Update Event SPIKE

  @TC564485
  @Automated
  @Functional
  Scenario: TC564485 - [RL0]
    Given the need to support the Update Roster event at the Domain Service level
    When validation of the payload and event occurs
    Then a document exists that includes the needed edits, errors and error messages

