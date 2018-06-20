# Last updated on 2018-06-15T13:56:32.867Z
@MVP
@Plus
@Priority_1
Feature: F183266 - Update Entity

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089506
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Alternate Name
    Then I have the ability to expire the current Entity Alternate Name
    And I have the ability to enter a new Entity Alternate Name
    And the new Entity Alternate Name enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089488
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Operating License Type
    Then I have the ability to expire the current Entity Operating License Type
    And I have the ability to select a new Entity Operating License Type
    And the new Entity Operating License Type enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US858595
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Name
    Then I have the ability to expire the current Entity Name
    And I have the ability to enter a new Entity Name
    And the new Entity Name enters the approval process workflow

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1080995
    Given I am the Entity Management Solution
    When A User updates an Entity Name
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089504
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Identifier
    Then I have the ability to expire the current Entity Identifier
    And I have the ability to select a new Entity Identifier
    And the new Entity Identifier enters the approval process workflow

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US1081001
    Given I am the Entity Management solution
    When A User updates an Entity
    Then I store the previous value for the updated field
    And the current value for the updated field
    And the User who performed update
    And the Date and time when User performed update

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089502
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Type
    Then I have the ability to expire the current Entity Type
    And I have the ability to select a new Entity Type
    And the new Entity Type enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089547
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Entity Identifier associated with an Entity
    Then I can inactivate the Entity Identifier associated with the Entity
    And the updated Entity enters the approval process workflow

  @MVP
  @CLM_UAT
  @EXARI-8603
  @2018.PI03
  Scenario: US950780
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity
    And the updated Entity enters the workflow approval process

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089541
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Operating License Type listed on an Entity
    Then I can inactivate the Operating License Type for an Entity
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US912901
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    And the updated Entity enters the approval process workflow

