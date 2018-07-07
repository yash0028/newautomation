# Last updated on 2018-07-06T13:27:41.362Z
@MVP
@Plus
@Priority_1
Feature: F183266 - Update Entity

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089488
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Operating License Type
    Then I have the ability to expire the current Entity Operating License Type
    And I have the ability to select a new Entity Operating License Type

  @2018.PI03
  Scenario: US1185991
    Given I am a User with access to maintain Entity information
    When I need to update a Account Type
    Then I have the ability to expire the current Account Type
    And I have the ability to select a new Account Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089504
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier
    Then I have the ability to expire the current Identifier
    And I have the ability to select a new Identifier

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

  @2018.PI03
  Scenario: US1185985
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier Type
    Then I have the ability to expire the current Identifier Type
    And I have the ability to select a new Identifier Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089502
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Type
    Then I have the ability to expire the current Entity Type
    And I have the ability to select a new Entity Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089547
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Entity Identifier associated with an Entity
    Then I can inactivate the Entity Identifier associated with the Entity
    And the updated Entity enters the approval process workflow

  @2018.PI03
  Scenario: US1185987
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Type
    Then I have the ability to expire the current Relationship Type
    And I have the ability to select a new Relationship Type

  @2018.PI03
  Scenario: US1185990
    Given I am a User with access to maintain Entity information
    When I need to update a Characteristic Type
    Then I have the ability to expire the current Characteristic Type
    And I have the ability to select a new Characteristic Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US912901
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089506
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Alternate Name
    Then I have the ability to expire the current Entity Alternate Name
    And I have the ability to enter a new Entity Alternate Name

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US858595
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Name
    Then I have the ability to expire the current Entity Name
    And I have the ability to enter a new Entity Name

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

  @2018.PI03
  Scenario: US1185989
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Role
    Then I have the ability to expire the current Relationship Role
    And I have the ability to select a new Relationship Role

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US1089541
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Operating License Type listed on an Entity
    Then I can inactivate the Operating License Type for an Entity
    And the updated Entity enters the approval process workflow

