# Last updated on 2018-06-28T16:45:31.030Z
@MVP
@Plus
@Priority_1
Feature: F137671 - Add and Remove Entity to Entity Relationships

  @MVP
  @CLM_UAT
  @EXARI-11696
  @2018.PI03
  Scenario: US858664
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can define the Entity Relationship Role of each Entity in the relationship

  @MVP
  @CLM_UAT
  @EXARI-11696
  @2018.PI03
  Scenario: US858667
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between two Entities
    Then I can remove the relationship between two Entities

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858668
    Given I am the Entity Management Solution
    When a User adds a relationship between two Entities
    And a User updates a relationship between two Entities
    And a User removes a relationship between two Entities
    Then I capture the effective date of the relationship
    And I capture the end date of the relationship
    And I capture the User who performed the change
    And I capture the time and date of when the User performed the change

  @MVP
  @CLM_UAT
  @EXARI-11696
  @2018.PI03
  Scenario: US858666
    Given I am a User with access to maintain Entity information
    When I need to change a relationship between two Entities
    Then I can select a new Relationship Role for an Entity in the relationship
    And I can select a new Relationship Type for an Entity in the relationship

  @MVP
  @CLM_UAT
  @EXARI-11696
  @2018.PI03
  Scenario: US858665
    Given I am a User with access to maintain Entity information
    When I am adding a relationship between two Entities
    Then I can select a Relationship Type to further define the relationship between the Entities

