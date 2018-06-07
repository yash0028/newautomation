# Last updated on 2018-06-07T05:26:00.934Z
@MVP
@Plus
@Priority_1
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

  Scenario: US858609
    Given I am the Entity Management solution
    When A User imports Entity Structure or Entity Relationships from a template
    Then I capture Entity Name
    Then And I capture Entity ID
    Then And I capture the User who imported data
    Then And I capture the time and date when User imported data

