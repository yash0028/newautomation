# Last updated on 2018-06-20T19:27:49.200Z
@MVP
@Plus
@Priority_1
Feature: F137675 - Administer Business Rules

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1179398
    Given I am a User
    When I create a relationship between an Entity and a Messenger Model IPA
    Then I can select Affiliated Relationship Type
    And I can not select Owned Relationship Type

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US858701
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1149316
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US858702
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    And I can update an existing Entity relationship rule for an Entity

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
  @2018.PI03
  Scenario: US1114664
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Parent

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1114667
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Child

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1152174
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both PHO and IPA for the same Entity

