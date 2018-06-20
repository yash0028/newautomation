# Last updated on 2018-06-20T18:47:53.490Z
@Plus
@Priority_1
Feature: F137918 - Migrate Entity Data

  @2018.PI03
  Scenario: US861076
    Given I am the Entity Management Solution
    When an existing source contains Entity data
    Then I have the ability to acquire that Entity data from the existing source

  @2018.PI03
  Scenario: US861080
    Given I am the Entity Management Solution
    When a User adds or updates Entity information
    Then the Entity information is made available to consuming applications

  @2018.PI03
  Scenario: US861079
    Given I am a User with access to maintain Entity information
    When I receive Entity data consolidated through automated process
    Then I can update and validate the Entity data
    And I can submit for approval

  @2018.PI03
  Scenario: US861077
    Given I am the Entity Management Solution
    When I receive updated Entity data from a legacy system
    Then I can consolidate this data into a new or existing Entity
    And prepare the consolidated information for review and approval

  @2018.PI03
  Scenario: US861078
    Given I am the Entity Management Solution
    When I have consolidated Entity data into a new or existing Entity
    Then I can provide the consolidated Entity data to a User for review

