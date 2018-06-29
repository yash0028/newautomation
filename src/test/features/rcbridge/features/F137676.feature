# Last updated on 2018-06-28T16:45:31.295Z
@MVP
@Plus
@Priority_1
Feature: F137676 - Search by Attributes

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US920675
    Given I am a User with access to view and maintain Entity information
    When I want to find an Inactive Entity
    Then I can limit my Entity search to include only Inactive Entities
    And the system returns only Inactive Entities

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US858713
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity
    And I want to maintain an Entity
    Then I can search for an Entity using attributes of that Entity
    And the system displays a list of Entities matching my search criteria

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US920674
    Given I am a User with access to view and maintain Entity information
    When I want to find an Active Entity
    Then I can limit my Entity search to include only Active Entities
    And the system returns only Active Entities

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US858715
    Given I am a User with access to view and maintain Entity information
    When I want to find out which Entities a Provider is associated to
    Then I can search by Provider ID
    And the system displays all Entities related to that Provider

  @MVP
  @CLM_UAT
  @EXARI-11765
  @2018.PI03
  Scenario: US1119871
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship role
    Then I can search within an Entity by relationship role
    And the system displays related child entities within the Entity matching that relationship role

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1186271
    Given I am a User with access to view and maintain Entity information
    When I want to find an Entity
    Then I can search for both Active and Inactive Entities simultaneously
    And the system returns Active and Inactive Entities in the same list

  @MVP
  @CLM_UAT
  @EXARI-11765
  @2018.PI03
  Scenario: US858714
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship type
    Then I can search within an Entity by relationship type
    And the system displays related child entities within the Entity matching that relationship type

