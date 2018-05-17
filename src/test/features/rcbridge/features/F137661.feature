# Last updated on 2018-04-26T05:31:19.981Z
@MVP
Feature: F137661 - Create and Maintain Entity Characteristics

  Scenario: US912897
    Given I am a User with access to maintain Entities
    When I want to add characteristic information to an Entity
    Then I can add Entity characteristic information to the Entity
    Then And the added Entity characteristic information enters the approval process workflow

  Scenario: US858624
    Given I am the Entity Management Solution
    When a User adds demographic information to an Entity
    When And a User updates demographic information on an Entity
    When And a User inactivates demographic information on an Entity
    When And a User adds characteristic detail to an Entity
    When And a User updates characteristic detail on an Entity
    When And a User inactivates characteristic detail on an Entity
    Then I capture the previous value
    Then And I capture the current value
    Then And I capture the User who performed the change
    Then And I capture the date and time when the User performed the change

  Scenario: US922850
    Given I am a User with access to maintain Entities
    When I want to inactivate characteristic information on an Entity
    Then I can inactivate Entity characteristic information on the Entity
    Then And the inactivated Entity characteristic information enters the approval process workflow

  Scenario: US912898
    Given I am a User with access to maintain Entities
    When I want to update characteristic information to an Entity
    Then I can update Entity characteristic information on the Entity
    Then And the updated Entity characteristic information enters the approval process workflow

  Scenario: US858621
    Given I am a User with access to maintain Entities
    When I want to add demographic information to an Entity
    Then I can add Entity demographic information to the Entity
    Then And the added Entity demographic information enters the approval process workflow

  Scenario: US922831
    Given I am a User with access to maintain Entity information
    When I want to inactivate demographic information on an Entity
    Then I can inactivate Entity demographic information on the Entity
    Then And the inactivated Entity demographic information enters the approval process workflow

  Scenario: US858622
    Given I am a User with access to maintain Entity information
    When I want to update demographic information on an Entity
    Then I can update Entity demographic information on the Entity
    Then And the updated Entity demographic information enters the approval process workflow

