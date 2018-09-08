# Last updated on 
@MVP
@Plus
@Priority_1
@F137657
Feature: F137657 - Exari EM - Add Entity

  @MVP
  @CLM_UAT
  @US1185970
  Scenario: US1185970 - Select Relationship Type
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Type to relate the Entity to another Entity, Provider, or Identifier

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @US858591
  Scenario: US858591 - Add Entity Name
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Entity Name
    #required field

  @US1185973
  Scenario: US1185973 - Select Characteristic Type
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Characteristic Type to add a defining trait to the Entity

  @MVP
  @CLM_UAT
  @US1185971
  Scenario: US1185971 - Select Relationship Role
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Role to relate the Entity to another Entity, Provider, or Identifier

  @MVP
  @EXARI-11273
  @US858598
  Scenario: US858598 - Capture Entity Time Lining History - New Entity
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    And the User who created the Entity

  @US1185963
  Scenario: US1185963 - Select Identifier Type
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @US1167901
  Scenario: US1167901 - Add Operating License Type
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Operating License Type from a predefined list
    #optional field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @US1167899
  Scenario: US1167899 - Select Entity Type
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Entity Type from a predefined list
    #required field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @US1167898
  Scenario: US1167898 - Add Alternate Name
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Alternate Name
    #optional field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @US950778
  Scenario: US950778 - Generate Unique Entity ID
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I generate a unique Entity ID
    And I assign the unique Entity ID to the new Entity

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @US1167891
  Scenario: US1167891 - Select Identifier
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can search for an Identifier
    And I can select an Identifier from the search results
    #optional field

