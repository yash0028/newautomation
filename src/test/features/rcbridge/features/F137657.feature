# Last updated on 2018-06-13T16:57:28.184Z
@MVP
@Plus
@Priority_1
Feature: F137657 - Add Entity

  @MVP
  @EXARI-11249
  @EXARI-10726
  @2018.PI03
  Scenario: US858591
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Entity Name
    #required field

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858598
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    And the User who created the Entity

  Scenario: US1167901
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Operating License Type from a predefined list
    #optional field

  @EXARI-11249
  @EXARI-10726
  Scenario: US1167899
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can select an Entity Type from a predefined list
    #required field

  Scenario: US1167898
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can add an Alternate Name
    #optional field

  @MVP
  @EXARI-8603
  @2018.PI03
  Scenario: US950779
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I assign an Entity Workflow status to the new Entity

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US950778
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I generate a unique Entity ID
    And I assign the unique Entity ID to the new Entity

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US949053
    Given I am the Entity Management Solution
    When A User adds an Entity
    Then I perform a duplicate check on Entity Name
    And I perform a duplicate check on Entity Identifier
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list for Entity Name
    And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

  @EXARI-11249
  @EXARI-10726
  Scenario: US1167891
    Given I am a User with access to create Entities
    When I need to setup an Entity
    Then I can search for an Identifier
    And I can select an Identifier from the search results
    #optional field

