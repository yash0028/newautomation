# Last updated on 2018-07-06T13:29:14.380Z
@MVP
@Plus
@Priority_1
Feature: F137678 - View Entity

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858723
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship Type
    Then I can customize my view to only show Entity components with the specified Relationship Type
    And the system displays the Entity components with my specified Relationship Type

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858722
    Given I am a User with access to view and maintain Entity information
    When I want to view an entire Entity structure
    Then I can view all components of an Entity
    And I can view all relationships that connect Entity components

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US1120329
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship Role
    Then I can customize my view to only show Entity components with the specified Relationship Role
    And the system displays the Entity components with my specified Relationship Role

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858724
    Given I am a User with access to view and maintain Entity information
    When I want to view a Entity details
    Then I can search for an Entity
    And I can view Entity Umbrella Name
    And I can view all Contract numbers associated with the Entity
    And I can view all Alternative Names associated with the Entity
    And I can view all Identifiers associated with the Entity
    And I can view all Related Entities associated with the Entity
    And I can view all Provider Identifiers associated with the Entity

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858727
    Given I am a User with access to view and maintain Entity information
    When I want to view all Entity relationships
    Then I can search for an Entity
    And I can view all relationships associated to that Entity

  @MVP
  @EXARI-10529
  @CLM_UAT
  @2018.PI03
  Scenario: US858726
    Given I am a User with access to view and maintain Entity information
    When I want to compare two Entities
    Then I can identify the first Entity
    And I can identify the second Entity
    And I can view detailed information of both Entities

