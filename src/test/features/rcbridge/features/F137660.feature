# Last updated on 2018-06-14T17:17:20.731Z
@MVP
@Plus
@Priority_1
Feature: F137660 - Create and Maintain Entity Identifiers

  Scenario: US1168419
    Given I am a User with access to maintain Entity information
    When I need to add an Identifier to an Entity
    Then I must access the Entity
    And I must search for an Identifier to add to the Entity
    And I can select the returned Identifier or request the Identifier be created in the Source of Truth

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858618
    Given I am the Entity Management solution
    When User adds or updates an Identifier relationship to an Entity
    Then I capture the Identifier
    And I capture the Identifier Type
    And I capture the Identifier Effective Date
    And I capture the Identifier Expiration Date
    And I capture User who performed the value change
    And I capture the date and time on which the User performed the value change

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US955775
    Given I am a User with access to manage Entity information
    When I need to expire an Identifier relationship with an Entity
    Then I must enter an expiration date for the Identifier
    And Inactivation date applies only to the Identifier relationship with the Entity
    And Inactivation date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  Scenario: US1168436
    Given I am the Entity Management Solution
    When a User inactivates an Identifier relationship with an Entity
    Then I check for active contracts associated to the Entity associated to that Identifier

  Scenario: US1168422
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type to define the type of Identifier I am adding

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US1089942
    Given I am a User with access to maintain Entity information
    When I add or update an Identifier relationship to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  Scenario: US1168429
    Given I am the Entity Management Solution
    When an active contract is in place for an Identifier to Entity relationship that is being expired
    Then I create a Contracting Event
    And the Contracting Event alerts a Contracting representative that contract maintenance may be required

