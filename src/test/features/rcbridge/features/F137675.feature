# Last updated on 2018-06-01T16:11:38.080Z
@MVP
@Plus
Feature: F137675 - Administer Business Rules

  Scenario: US1114661
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Organizational Unit
    Then the User can change the Organizational Unit Owner to a different Owner
    Then And the Organizational Unit can not have two active Owners at the same time

  Scenario: US1114656
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    Then And the TIN can not have two active Owners at the same time

  Scenario: US858701
    Given I am an Administrative User
    When I want to create a new business rule for an Entity
    When And I want to update an existing business rule for an Entity
    Then I can create a new business rule for an Entity
    Then And I can update an existing business rule for an Entity

  Scenario: US1114662
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

  Scenario: US1149316
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

  Scenario: US858702
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    When And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    Then And I can update an existing Entity relationship rule for an Entity

  Scenario: US858704
    Given I am the Entity Management Solution
    When a User creates a business rule
    When And a User edits a business rule
    Then I capture the effective date of the business rule
    Then And I capture the end date of the business rule
    Then And I capture the User who performed the change
    Then And I capture the time and date of when the User performed the change

  Scenario: US1114659
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

  Scenario: US1114664
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    Then And one Entity must be the Child
    Then And both Entities can not be the Parent

  Scenario: US1114667
    Given I am the Entity Management Solution
    When a User is creating a Parent Child relationship between Entities
    Then one Entity must be the Parent
    Then And one Entity must be the Child
    Then And both Entities can not be the Child

