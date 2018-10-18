# Last updated on
@MVP
@CLM_UAT
@EXARI-10879
@US860747
@MVP
@Plus
@Priority_1
@F137840
@releaseUnknown
@iterationUnknown
Feature: US860747 - Provision User Access

  @TC565046
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-10879
  @US860747
  Scenario: TC565046 - [RL0]
    Given I am an Administrative User of the Entity Management Solution
    When I want to grant and remove access to Users by Entity
    And I want to grant and remove access to Users by Market Level
    Then I can grant Users View permissions
    And I can grant Users Edit permissions
    And I can grant and remove access to one or more Market Levels in the same action
    And I can grant and remove access to one or more Entities in the same action

