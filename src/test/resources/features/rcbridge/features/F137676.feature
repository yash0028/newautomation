# Last updated on 
@MVP
@Plus
@Priority_1
@F137676
Feature: F137676 - Exari EM - Search by Attributes

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US920675
  @2018.PI03
  Scenario: US920675 - Perform Search by Inactive Entities
    Given I am a User with access to view and maintain Entity information
    When I want to find an Inactive Entity
    Then I can limit my Entity search to include only Inactive Entities
    And the system returns only Inactive Entities

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US858713
  @2018.PI03
  Scenario: US858713 - Perform Search by Entity Attributes
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity
    And I want to maintain an Entity
    Then I can search for an Entity using attributes of that Entity
    And the system displays a list of Entities matching my search criteria

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US920674
  @2018.PI03
  Scenario: US920674 - Perform Search by Active Entities
    Given I am a User with access to view and maintain Entity information
    When I want to find an Active Entity
    Then I can limit my Entity search to include only Active Entities
    And the system returns only Active Entities

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US858715
  @2018.PI03
  Scenario: US858715 - Perform Search by Provider ID
    Given I am a User with access to view and maintain Entity information
    When I want to find out which Entities a Provider is associated to
    Then I can search by Provider ID
    And the system displays all Entities related to that Provider

  @MVP
  @CLM_UAT
  @EXARI-11765
  @US1119871
  @2018.PI03
  Scenario: US1119871 - Filter by Entity Relationship Role
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship role
    Then I can search within an Entity by relationship role
    And the system displays related child entities within the Entity matching that relationship role

  @MVP
  @CLM_UAT
  @EXARI-11274
  @US1186271
  @2018.PI03
  Scenario: US1186271 - Return Active and Inactive Entities
    Given I am a User with access to view and maintain Entity information
    When I want to find an Entity
    Then I can search for both Active and Inactive Entities simultaneously
    And the system returns Active and Inactive Entities in the same list

  @US1257574
  Scenario: US1257574 - Save Search
    Given I am a User with access to maintain Entity information
    When I create a search query
    Then I can save that search query
    And I can create a custom name for that search query

  @MVP
  @CLM_UAT
  @EXARI-11765
  @US858714
  @2018.PI03
  Scenario: US858714 - Filter by Entity Relationship Type
    Given I am a User with access to view and maintain Entity information
    When I want to Entity sub-parts based on relationship type
    Then I can search within an Entity by relationship type
    And the system displays related entities within the Entity matching that relationship type

