# Last updated on 2018-06-07T05:26:02.092Z
@MVP
@Plus
@Priority_1
Feature: F137840 - Provision Users to Entities

  Scenario: US860747
    Given I am an Administrative User of the Entity Management Solution
    When I want to grant access to Entity information
    Then I can grant Users View permissions
    Then And I can grant Users Edit permissions

