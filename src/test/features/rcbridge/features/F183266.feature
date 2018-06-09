# Last updated on 2018-06-07T20:38:11.406Z
@MVP
@Plus
@Priority_1
Feature: F183266 - Update Entity

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089506
    Given I am a User
    When I need to update an Entity Alternate Name
    Then I have the ability to update Entity Alternate Name
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089488
    Given I am a User
    When I need to update an Entity Operating License Type
    Then I have the ability to update Entity Operating License Type
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US858595
    Given I am a User
    When I need to update an Entity Name
    Then I have the ability to update Entity Name
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1080995
    Given I am the Entity Management Solution
    When A User updates an Entity Name
    Then I perform a duplicate check on Entity Name
    Then And I display duplicates
    Then And User has ability to override duplicate or select from the potential duplicate list

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089504
    Given I am a User
    When I need to update an Entity Identifier
    Then I have the ability to update Entity Identifier
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US1081001
    Given I am the Entity Management solution
    When A User updates an Entity
    Then I store the previous value for the updated field
    Then And the current value for the updated field
    Then And the User who performed update
    Then And the Date and time when User performed update

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089502
    Given I am a User
    When I need to update an Entity Type
    Then I have the ability to update Entity Type
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089547
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Entity Identifier listed on an Entity
    Then I can inactivate the Entity Identifier for an Entity
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-8603
  @2018.PI03
  Scenario: US950780
    Given I am the Entity Management Solution
    When A User updates an existing Entity
    Then I assign an Entity Workflow status to the updated Entity

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US1089541
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Operating License Type listed on an Entity
    Then I can inactivate the Operating License Type for an Entity
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11267
  @2018.PI03
  Scenario: US912901
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Alternate Name listed on an Entity
    Then I can inactivate the Alternate Name for an Entity
    Then And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089525
    Given I am the Entity Management Solution
    When A User updates an Entity Identifier
    Then I perform a duplicate check on Entity Identifier
    Then And I display duplicates
    Then And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

