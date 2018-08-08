# Last updated on 2018-08-07T18:33:13.643Z
@MVP
@Priority_1
@Parity
Feature: F175792 - Create and Extract - Providers

  @2018.PI03
  @2018.PI03.03
  Scenario: US1096651
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

  @2018.PI03
  @2018.PI03.02
  Scenario: US1236601::0
    When The units are run and the code coverage is recorded for the contract-query-api service
    Then The overall test code coverage is above 70%

  @2018.PI03
  @2018.PI03.02
  Scenario: US1236601::1
    When The units are run and the code coverage is recorded for the ndb-updater-service service
    Then The overall test code coverage is above 70%

  @2018.PI03
  @2018.PI03.02
  Scenario: US1236601::2
    When The units are run and the code coverage is recorded for the cosmos-updater-service service
    Then The overall test code coverage is above 70%

  @2018.PI03
  @2018.PI03.02
  Scenario: US1236601::3
    When The units are run and the code coverage is recorded for the contracts-domain service
    Then The overall test code coverage is above 70%

  @2018.PI03
  @2018.PI03.02
  Scenario: US1236601::4
    When The units are run and the code coverage is recorded for the product-crosswalk service
    Then The overall test code coverage is above 70%

  @2018.PI03
  @2018.PI03.03
  Scenario: US1207395
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

  @2018.PI03
  @2018.PI03.04
  Scenario: US1208899
    Given I am processing the a contract's Lines tab during the migration process
    When I reference the defined columns for the new Exari roster
    Then I am able to populate the data into the same column format as the Exari roster

