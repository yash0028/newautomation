# Last updated on 
@MVP
@Plus
@Priority_1
@F183266
Feature: F183266 - Exari EM - Update Entity

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089488
  @2018.PI03
  Scenario: US1089488 - Update Operating License Type
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Operating License Type
    Then I have the ability to expire the current Entity Operating License Type
    And I have the ability to select a new Entity Operating License Type

  @US1185991
  @2018.PI03
  Scenario: US1185991 - Update Account Type
    Given I am a User with access to maintain Entity information
    When I need to update a Account Type
    Then I have the ability to expire the current Account Type
    And I have the ability to select a new Account Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089504
  @2018.PI03
  Scenario: US1089504 - Update Identifier
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier
    Then I have the ability to expire the current Identifier
    And I have the ability to select a new Identifier

  @MVP
  @EXARI-11273
  @US1081001
  @2018.PI03
  Scenario: US1081001 - Capture Entity Time Lining History - Updated Entity
    Given I am the Entity Management solution
    When A User updates an Entity
    Then I store the previous value for the updated field
    And the current value for the updated field
    And the User who performed update
    And the Date and time when User performed update

  @US1185985
  @2018.PI03
  Scenario: US1185985 - Update Identifier Type
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier Type
    Then I have the ability to expire the current Identifier Type
    And I have the ability to select a new Identifier Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089502
  @2018.PI03
  Scenario: US1089502 - Update Entity Type
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Type
    Then I have the ability to expire the current Entity Type
    And I have the ability to select a new Entity Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089547
  @2018.PI03
  Scenario: US1089547 - Inactivate Entity Identifier
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Entity Identifier associated with an Entity
    Then I can inactivate the Entity Identifier associated with the Entity
    And the updated Entity enters the approval process workflow

  @US1185987
  @2018.PI03
  Scenario: US1185987 - Update Relationship Type
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Type
    Then I have the ability to expire the current Relationship Type
    And I have the ability to select a new Relationship Type

  @US1185990
  @2018.PI03
  Scenario: US1185990 - Update Characteristic Type
    Given I am a User with access to maintain Entity information
    When I need to update a Characteristic Type
    Then I have the ability to expire the current Characteristic Type
    And I have the ability to select a new Characteristic Type

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US912901
  @2018.PI03
  Scenario: US912901 - Inactivate Alternate Name/Alias
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089506
  @2018.PI03
  Scenario: US1089506 - Update Entity Alternate Name
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Alternate Name
    Then I have the ability to expire the current Entity Alternate Name
    And I have the ability to enter a new Entity Alternate Name

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US858595
  @2018.PI03
  Scenario: US858595 - Update Entity Name
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Name
    Then I have the ability to expire the current Entity Name
    And I have the ability to enter a new Entity Name

  @US1185989
  @2018.PI03
  Scenario: US1185989 - Update Relationship Role
    Given I am a User with access to maintain Entity information
    When I need to update a Relationship Role
    Then I have the ability to expire the current Relationship Role
    And I have the ability to select a new Relationship Role

  @MVP
  @EXARI-11267
  @CLM_UAT
  @US1089541
  @2018.PI03
  Scenario: US1089541 - Inactivate Operating License Type
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Operating License Type listed on an Entity
    Then I can inactivate the Operating License Type for an Entity
    And the updated Entity enters the approval process workflow

