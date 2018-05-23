# Last updated on 2018-05-22T18:47:15.951Z
@MVP
@Plus
Feature: F137840 - Provision Users to Entities

  Scenario: US860747
    Given I am an Administrative User of the Entity Management Solution
    When I want to grant access to Entity information
    Then I can grant Users View permissions
    Then And I can grant Users Edit permissions

