# Last updated on 2018-06-07T05:26:01.474Z
@MVP
@Plus
@Priority_1
Feature: F137675 - Administer Business Rules

  @2018.PI03
  Scenario: US1114661
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Organizational Unit
    Then the User can change the Organizational Unit Owner to a different Owner
    And the Organizational Unit can not have two active Owners at the same time

  @2018.PI03
  Scenario: US1114656
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    And the TIN can not have two active Owners at the same time

  @2018.PI03
  Scenario: US858701
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    And I can update an existing business rule for an Entity

  @2018.PI03
  Scenario: US1114662
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

  @2018.PI03
  Scenario: US1149316
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

  @2018.PI03
  Scenario: US858702
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    And I can update an existing Entity relationship rule for an Entity

  @2018.PI03
  Scenario: US858704
    Given I am the Entity Management Solution
    When a User creates a business rule
    And a User edits a business rule
    Then I capture the effective date of the business rule
    And I capture the end date of the business rule
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

  @2018.PI03
  Scenario: US1114659
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

  @2018.PI03
  Scenario: US1114664
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Parent

  @2018.PI03
  Scenario: US1114667
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    And one Entity must be the Child
    And both Entities can not be the Child

  @2018.PI03
  Scenario: US1152174
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both PHO and IPA for the same Entity

