# Last updated on 
@MVP
@Plus
@Priority_1
@F137675
Feature: F137675 - Exari EM - Administer Business Rules

  @MVP
  @CLM_UAT
  @EXARI-11792
  @US858701
  Scenario: US858701 - Create & Update Entity Rules
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity

  @MVP
  @US858704
  Scenario: US858704 - Capture Business Rule Time Lining History
    Given I am the Entity Management Solution
    When a User creates a business rule
    And a User edits a business rule
    Then I capture the effective date of the business rule
    And I capture the end date of the business rule
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

  @MVP
  @CLM_UAT
  @EXARI-11696
  @US1114664
  Scenario: US1114664 - Parent Entity Relationships
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Parent

  @MVP
  @CLM_UAT
  @EXARI-11696
  @US1114667
  Scenario: US1114667 - Child Entity Relationships
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Child

  @MVP
  @CLM_UAT
  @EXARI-11792
  @US1152174
  Scenario: US1152174 - Entity Type Conflict - PHO and IPA
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the parent Entity can be either IPA or PHO but not both
    And a PHO parent could have multiple IPA children
    And an IPA parent generally would not have PHO as a child

