# Last updated on 2018-06-07T17:36:50.734Z
@MVP
@Plus
@Priority_1
Feature: F137657 - Add Entity

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858598
    Given I am the Entity Management solution
    When A User creates an Entity
    Then I store the Entity creation date
    Then And the User who created the Entity

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
    Then And I assign the unique Entity ID to the new Entity

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US949053
    Given I am the Entity Management Solution
    When A User adds an Entity
    Then I perform a duplicate check on Entity Name
    Then And I perform a duplicate check on Entity Identifier
    Then And I display duplicates
    Then And User has ability to override duplicate or select from the potential duplicate list for Entity Name
    Then And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

