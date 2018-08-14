# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F198819
Feature: F198819 - Redesign - Contract Provider Coverage and Maintenance Functionality (Roster)

  @US1206347
  @2018.PI03
  Scenario: US1206347 - Create Centralized Location to perform Provider Roster adds/updates
    Given I am an Exari user with a Role to apply adds and updates to the Provider Roster
    When I locate the Provider Roster and open it on a given contract
    Then I am able to apply adds and updates to the Provider roster on new and existing (including migrated) contract instances

