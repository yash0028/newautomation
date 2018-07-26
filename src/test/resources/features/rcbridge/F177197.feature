# Last updated on 2018-06-14T14:41:13.988Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F177197 - Create NDB to Exari Migration Logic for Facility - Active (Product Differential Restructure)

  Scenario: US1138848
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

