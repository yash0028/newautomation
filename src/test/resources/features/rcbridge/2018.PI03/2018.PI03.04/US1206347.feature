# Last updated on 
@US1206347
@2018.PI03
@2018.PI03.04
@releasePast
@iterationPast
Feature: US1206347 - Create Centralized Location to perform Provider Roster adds/updates

  @TC565526
  @Automated
  @Functional
  @US1206347
  @2018.PI03
  @2018.PI03.04
  Scenario: TC565526 - [RL0]
    Given I am an Exari user with a Role to apply adds and updates to the Provider Roster
    When I locate the Provider Roster and open it on a given contract
    Then I am able to apply adds and updates to the Provider roster on new and existing (including migrated) contract instances

