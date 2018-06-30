# Last updated on 2018-06-29T15:08:06.720Z
@MVP
@Plus
@Priority_1
Feature: F137675 - Administer Business Rules

  @MVP
  @CLM_UAT
  @EXARI-11792
  @2018.PI03
  Scenario: US858701
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity

  @MVP
  @2018.PI03
  Scenario: US858704
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
  @2018.PI03
  Scenario: US1114664
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Parent

  @MVP
  @CLM_UAT
  @EXARI-11696
  @2018.PI03
  Scenario: US1114667
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Child

  @MVP
  @CLM_UAT
  @EXARI-11792
  @2018.PI03
  Scenario: US1152174
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both PHO and IPA for the same Entity

