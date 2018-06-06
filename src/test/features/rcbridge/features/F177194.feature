# Last updated on 2018-06-06T01:55:46.224Z
@MVP
@Parity
Feature: F177194 - Create NDB to Exari Migration Logic for Physician - Active (Contract Master Restructure)

  @2018.PI02
  Scenario: US1096651
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

