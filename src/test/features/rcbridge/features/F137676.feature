# Last updated on 2018-06-07T05:26:01.572Z
@MVP
@Plus
@Priority_1
Feature: F137676 - Search by Attributes

  @EXARI-11274
  @2018.PI03
  Scenario: US920675
    Given I am a User with access to view and maintain Entity information
    When I want to find an Inactive Entity
    Then I can limit my Entity search to include only Inactive Entities
    And the system returns only Inactive Entities

  @EXARI-11274
  @2018.PI03
  Scenario: US858713
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity
    And I want to maintain an Entity
    Then I can search for an Entity using attributes of that Entity
    And the system displays a list of Entities matching my search criteria

  @EXARI-11274
  @2018.PI03
  Scenario: US920674
    Given I am a User with access to view and maintain Entity information
    When I want to find an Active Entity
    Then I can limit my Entity search to include only Active Entities
    And the system returns only Active Entities

  @EXARI-11274
  @2018.PI03
  Scenario: US858715
    Given I am a User with access to view and maintain Entity information
    When I want to find out which Entities a Provider is associated to
    Then I can search by Provider ID
    And the system displays all Entities related to that Provider

  @EXARI-11274
  @2018.PI03
  Scenario: US1119871
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship role
    Then I can search within an Entity by relationship role
    And the system displays Organizational Units within the Entity matching that relationship role

  @EXARI-11274
  @2018.PI03
  Scenario: US858714
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship type
    Then I can search within an Entity by relationship type
    And the system displays Organizational Units within the Entity matching that relationship type

