# Last updated on 2018-05-14T19:47:58.775Z
@MVP
@Plus
Feature: F137657 - Add Entity

  Scenario: US858598
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    Then And the User who created the Entity

  Scenario: US950779
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

  @EXARI-10726
  Scenario: US950778
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I generate a unique Entity ID
    Then And I assign the unique Entity ID to the new Entity

