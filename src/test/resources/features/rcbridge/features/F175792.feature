# Last updated on 
@MVP
@Priority_1
@Parity
@F175792
Feature: F175792 - Extract - Physician Providers for Provider Roster (Part 1 of 2)

  @US1096651
  @2018.PI03
  Scenario: US1096651 - Populate Provider Roster Extract with Emptoris Lines tab information
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

  @US1207395
  @2018.PI03
  Scenario: US1207395 - Part 1 - Populate Provider Roster Extract with additional Provider NDB information
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

  @US1208899
  @2018.PI03
  Scenario: US1208899 - Part 2 - Populate Provider Roster Extract with additional Provider NDB information
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

