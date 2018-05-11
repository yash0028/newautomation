# Last updated on 2018-05-10T18:02:07.208Z
@MVP
Feature: F137671 - Add and Remove Entity to Entity Relationships

  Scenario: US858664
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can define the Entity Relationship Role of each Entity in the relationship

  Scenario: US858667
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between two Entities
    Then I can remove the relationship between two Entities

  Scenario: US858668
    Given I am the Entity Management Solution
    When a User adds a relationship between two Entities
    When And a User updates a relationship between two Entities
    When And a User removes a relationship between two Entities
    Then I capture the effective date of the relationship
    Then And I capture the end date of the relationship
    Then And I capture the User who performed the change
    Then And I capture the time and date of when the User performed the change

  Scenario: US858666
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between two Entities
    Then I can select a new Relationship Role for an Entity in the relationship
    Then And I can select a new Relationship Type for an Entity in the relationship

  Scenario: US858665
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can select a Relationship Type to further define the relationship between the Entities
