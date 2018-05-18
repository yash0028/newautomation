# Last updated on 2018-05-11T19:50:12.148Z
@MVP
@Plus
Feature: F137674 - Administer Global Entity Attributes

  Scenario: US1116731
    Given I am an Administrative User
    When I need to expire an Identifier Type
    Then I can view all active and inactive existing Identifier Types
    Then And Active and Inactive Identifier Types are visibly differentiated
    Then And I can expire an existing Identifier Type
    Then And Users can no longer select that Identifier Type to define an Identifier
    Then And all records using that Identifier Type retain the historical value

  Scenario: US1116723
    Given I am an Administrative User
    When I need to expire a Relationship Role
    Then I can view all active and inactive existing Relationship Roles
    Then And Active and Inactive Relationship Roles are visibly differentiated
    Then And I can expire an existing Relationship Role
    Then And Users can no longer select that Relationship Role to define an Entity relationship
    Then And all records using that Relationship Role retain the historical value

  Scenario: US858698
    Given I am the Entity Management Solution
    When an Administrative User creates an Entity Attribute
    When And an Administrative User updates an Entity Attribute
    When And an Administrative User expires an Entity Attribute
    Then I capture the previous Entity Attribute value
    Then And I capture the current Entity Attribute value
    Then And I capture the Administrative User who performed the change
    Then And I capture the date and time of when the Administrative User performed the change

  Scenario: US929394
    Given I am an Administrative User
    When I need to update an existing Entity Type
    Then I can view all active and inactive existing Entity Types
    Then And Active and Inactive Entity Types are visibly differentiated
    Then And I can update an existing Entity Type
    Then And I have the ability to cascade update to all records using that Entity Type

  Scenario: US1116715
    Given I am an Administrative User
    When I need to expire an Entity Type
    Then I can view all active and inactive existing Entity Types
    Then And Active and Inactive Entity Types are visibly differentiated
    Then And I can expire an existing Entity Type
    Then And Users can no longer select that Entity Type to define an Entity
    Then And all records using that Entity Type retain the historical value

  Scenario: US858693
    Given I am an Administrative User
    When I set up a new Entity Type
    Then I can add a definition to the Entity Type

  Scenario: US949956
    Given I am an Administrative User
    When I want to setup a new Identifier Relationship Type
    Then I can setup an Identifier Relationship Type
    Then And Users can select that Identifier Relationship Type to define an Entity relationship

  Scenario: US948984
    Given I am an Administrative User
    When I need to update an existing Relationship Role
    Then I can view all active and inactive existing Relationship Roles
    Then And Active and Inactive Relationship Roles are visibly differentiated
    Then And I can update an existing Relationship Role
    Then And I have the ability to cascade update to all records using that Relationship Role

  Scenario: US929399
    Given I am an Administrative User
    When I need to update an existing Identifier Type
    Then I can view all active and inactive existing Identifier Types
    Then And Active and Inactive Identifier Types are visibly differentiated
    Then And I can update an existing Identifier Type
    Then And I have the ability to cascade update to all records using that Identifier Type

  Scenario: US858694
    Given I am an Administrative User
    When I want to setup a new Relationship Type
    Then I can setup a Relationship Type
    Then And Users can select that Relationship Type to define an Entity relationship

  Scenario: US1116738
    Given I am an Administrative User
    When I need to expire an Identifier Relationship Type
    Then I can view all active and inactive existing Identifier Relationship Types
    Then And Active and Inactive Identifier Relationship Types are visibly differentiated
    Then And I can expire an existing Identifier Relationship Type
    Then And Users can no longer select that Identifier Relationship Type to define an Identifier
    Then And all records using that Identifier Relationship Type retain the historical value

  Scenario: US929398
    Given I am an Administrative User
    When I need to update an existing Entity Characteristic Type
    Then I can view all active and inactive existing Entity Characteristic Types
    Then And Active and Inactive Entity Characteristic Types are visibly differentiated
    Then And I can update an existing Entity Characteristic Type
    Then And I have the ability to cascade update to all records using that Entity Characteristic Type

  Scenario: US948983
    Given I am an Administrative User
    When I want to setup a new Relationship Role
    Then I can setup an Relationship Role
    Then And Users can select that Relationship Role to define an Entity relationship

  Scenario: US949936
    Given I am an Administrative User
    When I want to setup a new Account Type
    Then I can setup an Account Type
    Then And Users can select that Account Type to define an Entity

  Scenario: US949958
    Given I am an Administrative User
    When I need to update an existing Identifier Relationship Type
    Then I can view all active and inactive existing Identifier Relationship Types
    Then And Active and Inactive Identifier Relationship Types are visibly differentiated
    Then And I can update an existing Identifier Relationship Type
    Then And I have the ability to cascade update to all records using that Identifier Relationship Type

  Scenario: US949962
    Given I am an Administrative User
    When I need to update an existing Account Type
    Then I can view all active and inactive existing Account Types
    Then And Active and Inactive Account Types are visibly differentiated
    Then And I can update an existing Account Type
    Then And I have the ability to cascade update to all records using that Account Type

  Scenario: US1116722
    Given I am an Administrative User
    When I need to expire a Relationship Type
    Then I can view all active and inactive existing Relationship Types
    Then And Active and Inactive Relationship Types are visibly differentiated
    Then And I can expire an existing Relationship Type
    Then And Users can no longer select that Relationship Type to define an Entity relationship
    Then And all records using that Relationship Type retain the historical value

  Scenario: US858697
    Given I am an Administrative User
    When I want to setup a new Identifier Type
    Then I can setup an Identifier Type
    Then And Users can select that Identifier Type when creating or updating an Identifier

  Scenario: US929395
    Given I am an Administrative User
    When I need to update an existing Entity Type Definition
    Then I can view all active and inactive existing Entity Type Definitions
    Then And Active and Inactive Entity Type Definitions are visibly differentiated
    Then And I can update an existing Entity Type Definition
    Then And I have the ability to cascade update to all records using that Entity Type Definition

  Scenario: US929397
    Given I am an Administrative User
    When I need to update an existing Relationship Type
    Then I can view all active and inactive existing Relationship Types
    Then And Active and Inactive Relationship Types are visibly differentiated
    Then And I can update an existing Relationship Type
    Then And I have the ability to cascade update to all records using that Relationship Type

  Scenario: US858695
    Given I am an Administrative User
    When I want to setup a new Characteristic Type
    Then I can setup a Characteristic Type
    Then And Users can select that Characteristic Type to define an Entity detail

  Scenario: US1116732
    Given I am an Administrative User
    When I need to expire an AccountType
    Then I can view all active and inactive existing Account Types
    Then And Active and Inactive Account Types are visibly differentiated
    Then And I can expire an existing Account Type
    Then And Users can no longer select that Account Type to define an Entity
    Then And all records using that Account Type retain the historical value

  Scenario: US858692
    Given I am an Administrative User
    When I want to setup a new Entity Type
    Then I can setup an Entity Type
    Then And Users can select that Entity Type to define an Entity

  Scenario: US1116730
    Given I am an Administrative User
    When I need to expire an Entity Characteristic Type
    Then I can view all active and inactive existing Entity Characteristic Types
    Then And Active and Inactive Entity Characteristic Types are visibly differentiated
    Then And I can expire an existing Entity Characteristic Type
    Then And Users can no longer select that Entity Characteristic Type to define an Entity
    Then And all records using that Entity Characteristic Type retain the historical value

