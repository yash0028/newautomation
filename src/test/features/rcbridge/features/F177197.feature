# Last updated on 2018-05-26T05:31:19.698Z
@MVP
@Plus
@Parity
Feature: F177197 - Create NDB to Exari Migration Logic for Facility (includes Product Differential Restructure)

  @2018.PI02
  Scenario: US1138848
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

