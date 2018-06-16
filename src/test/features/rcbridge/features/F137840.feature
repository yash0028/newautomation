# Last updated on 2018-06-15T14:19:30.131Z
@MVP
@Plus
@Priority_1
Feature: F137840 - Provision Users to Entities

  @MVP
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

