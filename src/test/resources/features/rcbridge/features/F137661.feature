# Last updated on 
@MVP
@Plus
@Priority_1
@F137661
Feature: F137661 - Exari EM - Create and Maintain Entity Characteristics

  @MVP
  @EXARI-11249
  @CLM_UAT
  @US912897
  @2018.PI03
  Scenario: US912897 - Add Entity Characteristic Detail
    Given I am a User with access to maintain Entities
    When I want to add characteristic information to an Entity
    Then I can add Entity characteristic information to the Entity

  @MVP
  @EXARI-11273
  @US858624
  @2018.PI03
  Scenario: US858624 - Capture Entity Characteristic Time Lining History
    Given I am the Entity Management Solution
    When a User adds characteristic detail to an Entity
    And a User updates characteristic detail on an Entity
    And a User inactivates characteristic detail on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time when the User performed the change

  @MVP
  @EXARI-11249
  @CLM_UAT
  @US912898
  @2018.PI03
  Scenario: US912898 - Update Entity Characteristic Detail
    Given I am a User with access to maintain Entities
    When I want to update characteristic information to an Entity
    Then I can update Entity characteristic information on the Entity

