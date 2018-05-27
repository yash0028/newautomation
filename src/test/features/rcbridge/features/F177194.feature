# Last updated on 2018-05-26T05:31:20.165Z
@MVP
@Parity
Feature: F177194 - Establish NDB to Exari Migration Logic for Physician (includes Contract Master Restructure)

  @2018.PI02
  Scenario: US1096651
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

