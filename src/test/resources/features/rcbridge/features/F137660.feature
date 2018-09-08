# Last updated on 
@MVP
@Plus
@Priority_1
@F137660
Feature: F137660 - Exari EM - Maintain Entity Identifiers

  @MVP
  @CLM_UAT
  @US1168419
  Scenario: US1168419 - Search Identifier
    Given I am a User with access to maintain Entity information
    When I need to add an Identifier to an Entity
    Then I must access the Entity
    And I must search for an Identifier to add to the Entity
    And I can select the returned Identifier or request the Identifier be created in the Source of Truth

  @MVP
  @EXARI-11273
  @US858618
  Scenario: US858618 - Capture Time Lining History
    Given I am the Entity Management solution
    When User adds or updates an Identifier relationship to an Entity
    Then I capture the Identifier
    And I capture the Identifier Type
    And I capture the Identifier Effective Date
    And I capture the Identifier Expiration Date
    And I capture User who performed the value change
    And I capture the date and time on which the User performed the value change

  @MVP
  @US1168436
  Scenario: US1168436 - Check for Contract Dependencies
    Given I am the Entity Management Solution
    When a User inactivates an Identifier relationship with an Entity
    Then I check for active contracts associated to the Entity associated to that Identifier

  @MVP
  @CLM_UAT
  @US1168422
  Scenario: US1168422 - Select Identifier Type
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type to define the type of Identifier I am adding

