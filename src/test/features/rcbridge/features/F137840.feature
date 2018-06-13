# Last updated on 2018-06-08T17:36:42.509Z
@MVP
@Plus
@Priority_1
Feature: F137840 - Provision Users to Entities

  @MVP
  @EXARI-10879
  @2018.PI03
  Scenario: US860747
    Given I am an Administrative User of the Entity Management Solution
    When I want to grant access to Entity information
    Then I can grant Users View permissions
    And I can grant Users Edit permissions

