# Last updated on
@#MVP
@US1103030
@2018.PI02
@2018.PI02.02
@PI02_Top3
@Plus
@Parity
@F186037
@releasePast
@iterationPast
Feature: US1103030 - Domain MS - Add/Remove a Physician to an Existing Physician Contract

  @TC564419
  @Automated
  @Functional
  @#MVP
  @US1103030
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564419 - [RL1]
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the service creates an invalid event and payload
    And sends error message to the transaction status topic

  @TC564418
  @Automated
  @Functional
  @#MVP
  @US1103030
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564418 - [RL0]
    Given The Physician contract is complete and sourced from within Exari
    When a business event to add/remove a physician from an existing contract
    Then the domain service creates a event and associated payload
    And the payload is valid, accurate and complete

