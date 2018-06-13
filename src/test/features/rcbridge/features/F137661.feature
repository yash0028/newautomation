# Last updated on 2018-06-07T05:26:01.012Z
@MVP
@Plus
@Priority_1
Feature: F137661 - Create and Maintain Entity Characteristics

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US912897
    Given I am a User with access to maintain Entities
    When I want to add characteristic information to an Entity
    Then I can add Entity characteristic information to the Entity
    And the added Entity characteristic information enters the approval process workflow

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858624
    Given I am the Entity Management Solution
    When a User adds demographic information to an Entity
    And a User updates demographic information on an Entity
    And a User inactivates demographic information on an Entity
    And a User adds characteristic detail to an Entity
    And a User updates characteristic detail on an Entity
    And a User inactivates characteristic detail on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time when the User performed the change

  @MVP
  @2018.PI03
  Scenario: US922850
    Given I am a User with access to maintain Entities
    When I want to inactivate characteristic information on an Entity
    Then I can inactivate Entity characteristic information on the Entity
    And the inactivated Entity characteristic information enters the approval process workflow

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US912898
    Given I am a User with access to maintain Entities
    When I want to update characteristic information to an Entity
    Then I can update Entity characteristic information on the Entity
    And the updated Entity characteristic information enters the approval process workflow

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US858621
    Given I am a User with access to maintain Entities
    When I want to add demographic information to an Entity
    Then I can add Entity demographic information to the Entity
    And the added Entity demographic information enters the approval process workflow

  @MVP
  @2018.PI03
  Scenario: US922831
    Given I am a User with access to maintain Entity information
    When I want to inactivate demographic information on an Entity
    Then I can inactivate Entity demographic information on the Entity
    And the inactivated Entity demographic information enters the approval process workflow

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US858622
    Given I am a User with access to maintain Entity information
    When I want to update demographic information on an Entity
    Then I can update Entity demographic information on the Entity
    And the updated Entity demographic information enters the approval process workflow

