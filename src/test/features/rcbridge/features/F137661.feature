# Last updated on 2018-06-21T17:44:35.930Z
@MVP
@Plus
@Priority_1
Feature: F137661 - Create and Maintain Entity Characteristics

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US912897
    Given I am a User with access to maintain Entities
    When I want to add characteristic information to an Entity
    Then I can add Entity characteristic information to the Entity

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858624
    Given I am the Entity Management Solution
    When a User adds characteristic detail to an Entity
    And a User updates characteristic detail on an Entity
    And a User inactivates characteristic detail on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time when the User performed the change

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US922850
    Given I am a User with access to maintain Entities
    When I want to inactivate characteristic information on an Entity
    Then I can inactivate Entity characteristic information on the Entity

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US912898
    Given I am a User with access to maintain Entities
    When I want to update characteristic information to an Entity
    Then I can update Entity characteristic information on the Entity

