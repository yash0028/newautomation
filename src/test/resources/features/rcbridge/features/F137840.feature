# Last updated on 2018-07-09T14:49:04.061Z
@MVP
@Plus
@Priority_1
Feature: F137840 - Exari EM - Provision Users to Entities

  @MVP
  @CLM_UAT
  @EXARI-10879
  @2018.PI03
  Scenario: US860747
    Given I am an Administrative User of the Entity Management Solution
    When I want to grant and remove access to Users by Entity
    And I want to grant and remove access to Users by Market Level
    Then I can grant Users View permissions
    And I can grant Users Edit permissions
    And I can grant and remove access to one or more Market Levels in the same action
    And I can grant and remove access to one or more Entities in the same action

