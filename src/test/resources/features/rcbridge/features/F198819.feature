# Last updated on 2018-07-24T15:46:11.753Z
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
Feature: F198819 - Redesign - Contract Provider Coverage and Maintenance Functionality (Roster)

  @2018.PI03
  @2018.PI03.04
  Scenario: US1206347
    Given I am an Exari user with a Role to apply adds and updates to the Provider Roster
    When I locate the Provider Roster and open it on a given contract
    Then I am able to apply adds and updates to the Provider roster on new and existing (including migrated) contract instances

