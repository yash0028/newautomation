# Last updated on 
@#MVP
@US1103030
@2018.PI02
@2018.PI02.02
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1103030 - Domain MS - Add/Remove a Physician to an Existing Physician Contract

  @TC701611
  @Manual
  @Functional
  @#MVP
  Scenario: TC701611 - [RL0]
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the domain service creates a event and associated payload
    And the payload is valid, accurate and complete

  @TC701625
  @Manual
  @Functional
  @#MVP
  Scenario: TC701625 - [RL1]
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the service creates an invalid event and payload
    And sends error message to the transaction status topic

