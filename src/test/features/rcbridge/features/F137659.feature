# Last updated on 2018-04-26T05:31:17.353Z
@MVP
Feature: F137659 - Import Data

  Scenario: US858608
    Given I am a User with access to maintain Entities
    When I want to load Entity relationships in template form into the Entity Management solution
    Then I can import Entity relationships listed in template form into the Entity Management solution
    Then And the Entity relationships enter the approval process workflow

  Scenario: US858607
    Given I am a User with access to maintain Entities
    When I want to load an Entity structure in template form into the Entity Management solution
    Then I can import the Entity structure into the Entity Management solution
    Then And the Entity structure enters the approval process workflow

