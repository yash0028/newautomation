# Last updated on 2018-06-07T05:26:01.836Z
@MVP
@Plus
@Priority_1
Feature: F137678 - View Entity

  @EXARI-10529
  @2018.PI03
  Scenario: US858723
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship Type
    Then I can customize my view to only show Entity components with the specified Relationship Type
    Then And the system displays the Entity components with my specified Relationship Type

  @EXARI-10529
  @2018.PI03
  Scenario: US858725
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity summary
    Then I can search for an Entity
    Then And I can view Entity Umbrella Name
    Then And I can view Entity ID
    Then And I can view Entity Type
    Then And I can view the Entity Owner
    Then And I can view the primary Entity Address
    Then And I can view the number of Contracts associated with the Entity
    Then And I can view the number of Alternative Names associated with the Entity
    Then And I can view the number of Identifiers associated with the Entity
    Then And I can view the number of Relationships associated with the Entity
    Then And I can view the number of Providers associated with the Entity

  @EXARI-10529
  @2018.PI03
  Scenario: US858722
    Given I am a User with access to view and maintain Entity information
    When I want to view an entire Entity structure
    Then I can view all components of an Entity
    Then And I can view all relationships that connect Entity components

  @EXARI-10529
  @2018.PI03
  Scenario: US1120329
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship Role
    Then I can customize my view to only show Entity components with the specified Relationship Role
    Then And the system displays the Entity components with my specified Relationship Role

  @EXARI-10529
  @2018.PI03
  Scenario: US858724
    Given I am a User with access to view and maintain Entity information
    When I want to view a Entity details
    Then I can search for an Entity
    Then And I can view Entity Umbrella Name
    Then And I can view all Entity Addresses
    Then And I can view all Contract numbers associated with the Entity
    Then And I can view all Alternative Names associated with the Entity
    Then And I can view all Identifiers associated with the Entity
    Then And I can view all Organizational Units associated with the Entity
    Then And I can view all Provider Identifiers associated with the Entity

  @EXARI-10529
  @2018.PI03
  Scenario: US858727
    Given I am a User with access to view and maintain Entity information
    When I want to view all Entity relationships
    Then I can search for an Entity
    Then And I can view all relationships associated to that Entity

  @2018.PI03
  Scenario: US858726
    Given I am a User with access to view and maintain Entity information
    When I want to compare two Entities
    Then I can identify the first Entity
    Then And I can identify the second Entity
    Then And I can view detailed information of both Entities

