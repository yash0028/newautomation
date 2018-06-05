# Last updated on 2018-06-05T15:33:32.514Z
@MVP
@Plus
Feature: F137676 - Search by Attributes

  Scenario: US920675
    Given I am a User with access to view and maintain Entity information
    When I want to find an Inactive Entity
    Then I can limit my Entity search to include only Inactive Entities
    Then And the system returns only Inactive Entities

  Scenario: US858713
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity
    When And I want to maintain an Entity
    Then I can search for an Entity using attributes of that Entity
    Then And the system displays a list of Entities matching my search criteria

  Scenario: US920674
    Given I am a User with access to view and maintain Entity information
    When I want to find an Active Entity
    Then I can limit my Entity search to include only Active Entities
    Then And the system returns only Active Entities

  Scenario: US858715
    Given I am a User with access to view and maintain Entity information
    When I want to find out which Entities a Provider is associated to
    Then I can search by Provider ID
    Then And the system displays all Entities related to that Provider

  Scenario: US1119871
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship role
    Then I can search within an Entity by relationship role
    Then And the system displays Organizational Units within the Entity matching that relationship role

  Scenario: US858714
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship type
    Then I can search within an Entity by relationship type
    Then And the system displays Organizational Units within the Entity matching that relationship type

