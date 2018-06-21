# Last updated on 2018-06-07T05:26:00.070Z
@MVP
@Plus
@Priority_1
Feature: F137674 - Administer Global Entity Attributes

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1116731
    Given I am an Administrative User
    When I need to expire an Identifier Type
    Then I can expire an existing Identifier Type
    And Users can no longer select that Identifier Type to define an Identifier
    And all records using that Identifier Type retain the historical value

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1116723
    Given I am an Administrative User
    When I need to expire a Relationship Role
    Then I can expire an existing Relationship Role
    And Users can no longer select that Relationship Role to define an Entity relationship
    And all records using that Relationship Role retain the historical value

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858698
    Given I am the Entity Management Solution
    When an Administrative User creates an Entity Attribute
    And an Administrative User updates an Entity Attribute
    And an Administrative User expires an Entity Attribute
    Then I capture the previous Entity Attribute value
    And I capture the current Entity Attribute value
    And I capture the Administrative User who performed the change
    And I capture the date and time of when the Administrative User performed the change

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US929394
    Given I am an Administrative User
    When I need to update an existing Entity Type
    Then I can view all active and inactive existing Entity Types
    And Active and Inactive Entity Types are visibly differentiated
    And I can update an existing Entity Type
    And I have the ability to cascade update to all records using that Entity Type

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1116715
    Given I am an Administrative User
    When I need to expire an Entity Type
    Then I can expire an existing Entity Type
    And Users can no longer select that Entity Type to define an Entity
    And all records using that Entity Type retain the historical value

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US858693
    Given I am an Administrative User
    When I set up a new Entity Type
    Then I can add a definition to the Entity Type

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US949956
    Given I am an Administrative User
    When I want to setup a new Identifier Relationship Type
    Then I can setup an Identifier Relationship Type
    And Users can select that Identifier Relationship Type to define an Entity relationship

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US948984
    Given I am an Administrative User
    When I need to update an existing Relationship Role
    Then I can view all active and inactive existing Relationship Roles
    And Active and Inactive Relationship Roles are visibly differentiated
    And I can update an existing Relationship Role
    And I have the ability to cascade update to all records using that Relationship Role

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US929399
    Given I am an Administrative User
    When I need to update an existing Identifier Type
    Then I can view all active and inactive existing Identifier Types
    And Active and Inactive Identifier Types are visibly differentiated
    And I can update an existing Identifier Type
    And I have the ability to cascade update to all records using that Identifier Type

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US858694
    Given I am an Administrative User
    When I want to setup a new Relationship Type
    Then I can setup a Relationship Type
    And Users can select that Relationship Type to define an Entity relationship

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1116738
    Given I am an Administrative User
    When I need to expire an Identifier Relationship Type
    Then I can expire an existing Identifier Relationship Type
    And Users can no longer select that Identifier Relationship Type to define an Identifier
    And all records using that Identifier Relationship Type retain the historical value

  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US929398
    Given I am an Administrative User
    When I need to update an existing Entity Characteristic Type
    Then I can view all active and inactive existing Entity Characteristic Types
    And Active and Inactive Entity Characteristic Types are visibly differentiated
    And I can update an existing Entity Characteristic Type
    And I have the ability to cascade update to all records using that Entity Characteristic Type

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US948983
    Given I am an Administrative User
    When I want to setup a new Relationship Role
    Then I can setup an Relationship Role
    And Users can select that Relationship Role to define an Entity relationship

  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US949936
    Given I am an Administrative User
    When I want to setup a new Account Type
    Then I can setup an Account Type
    And Users can select that Account Type to define an Entity

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US949958
    Given I am an Administrative User
    When I need to update an existing Identifier Relationship Type
    Then I can view all active and inactive existing Identifier Relationship Types
    And Active and Inactive Identifier Relationship Types are visibly differentiated
    And I can update an existing Identifier Relationship Type
    And I have the ability to cascade update to all records using that Identifier Relationship Type

  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US949962
    Given I am an Administrative User
    When I need to update an existing Account Type
    Then I can update an existing Account Type
    And I have the ability to cascade update to all records using that Account Type

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1116722
    Given I am an Administrative User
    When I need to expire a Relationship Type
    Then I can expire an existing Relationship Type
    And Users can no longer select that Relationship Type to define an Entity relationship
    And all records using that Relationship Type retain the historical value

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US858697
    Given I am an Administrative User
    When I want to setup a new Identifier Type
    Then I can setup an Identifier Type
    And Users can select that Identifier Type when creating or updating an Identifier

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US929395
    Given I am an Administrative User
    When I need to update an existing Entity Type Definition
    Then I can view all active and inactive existing Entity Type Definitions
    And Active and Inactive Entity Type Definitions are visibly differentiated
    And I can update an existing Entity Type Definition
    And I have the ability to cascade update to all records using that Entity Type Definition

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US929397
    Given I am an Administrative User
    When I need to update an existing Relationship Type
    Then I can view all active and inactive existing Relationship Types
    And Active and Inactive Relationship Types are visibly differentiated
    And I can update an existing Relationship Type
    And I have the ability to cascade update to all records using that Relationship Type

  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US858695
    Given I am an Administrative User
    When I want to setup a new Characteristic Type
    Then I can setup a Characteristic Type
    And Users can select that Characteristic Type to define an Entity detail

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1116732
    Given I am an Administrative User
    When I need to expire an AccountType
    Then I can expire an existing Account Type
    And Users can no longer select that Account Type to define an Entity
    And all records using that Account Type retain the historical value

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US858692
    Given I am an Administrative User
    When I want to setup a new Entity Type
    Then I can setup an Entity Type
    And Users can select that Entity Type to define an Entity

  @MVP
  @EXARI-11792
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1116730
    Given I am an Administrative User
    When I need to expire an Entity Characteristic Type
    Then I can expire an existing Entity Characteristic Type
    And Users can no longer select that Entity Characteristic Type to define an Entity
    And all records using that Entity Characteristic Type retain the historical value

