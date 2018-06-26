# Last updated on 2018-06-25T16:58:05.536Z
@MVP
@Plus
@Priority_1
Feature: F137657 - Add Entity

  Scenario: US1185970
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Type to relate the Entity to another Entity, Provider, or Identifier

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @2018.PI03
  Scenario: US858591
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Entity Name
    #required field

  Scenario: US1185973
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Characteristic Type to add a defining trait to the Entity

  Scenario: US1185971
    Given I am a User with access to maintain Entity information
    When I am creating an Entity
    Then I can select a Relationship Role to relate the Entity to another Entity, Provider, or Identifier

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858598
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    And the User who created the Entity

  Scenario: US1185963
    Given I am a User with access to maintain Entity information
    When I am adding an Identifier to an Entity
    Then I must select an Identifier Type

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @2018.PI03
  Scenario: US1167901
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Operating License Type from a predefined list
    #optional field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @2018.PI03
  Scenario: US1167899
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Entity Type from a predefined list
    #required field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @2018.PI03
  Scenario: US1167898
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Alternate Name
    #optional field

  @MVP
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US950778
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I generate a unique Entity ID
    And I assign the unique Entity ID to the new Entity

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US949053
    Given I am the Entity Management Solution
    When A User adds an Entity
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list for Entity Name

  @MVP
  @EXARI-11249
  @CLM_UAT
  @EXARI-10726
  @2018.PI03
  Scenario: US1167891
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can search for an Identifier
    And I can select an Identifier from the search results
    #optional field

