# Last updated on 2018-05-11T05:31:24.374Z
@MVP
Feature: F137675 - Administer Business Rules

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

  Scenario: US858702
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    When And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    Then And I can update an existing Entity relationshiprule for an Entity

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

