# Last updated on 2018-06-07T05:26:01.095Z
@MVP
@Plus
@Priority_1
Feature: F137662 - Create and Maintain Entity Supplemental Detail

  @MVP
  @EXARI-11698
  @2018.PI03
  Scenario: US858626
    Given I am a User with access to maintain Entity information
    When I want to add a note to an Entity
    Then I can add a note to the Entity
    And my note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note

  @MVP
  @EXARI-11273
  @2018.PI03
  Scenario: US858631
    Given I am the Entity Management Solution
    When A User adds a note to an Entity
    And a User updates a note on an Entity
    And a User adds an attachment to an Entity
    And User updates an attachment on an Entity
    Then I capture the previous value
    And I capture the current value
    And I capture the User who performed the change
    And I capture the date and time of when the User performed the change

  @MVP
  @EXARI-11698
  @2018.PI03
  Scenario: US858628
    Given I am a User with access to maintain Entity information
    When I want to update a note on an Entity
    Then I can update a note on the Entity
    And the updated note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note

  @MVP
  @EXARI-11643
  @2018.PI03
  Scenario: US858627
    Given I am a User with access to maintain Entity information
    When I want to associate a document to an Entity
    Then I can associate a document to the Entity
    And my document is linked to the Entity record
    And the date and time is systematically logged with my attachment
    And my user credentials are systematically logged with my attachment

  @MVP
  @EXARI-11643
  @2018.PI03
  Scenario: US858630
    Given I am a User with access to maintain Entity information
    When I need to archive an existing attachment on an Entity that is no longer valid
    Then I can enter an inactivation date for an attachment on the Entity
    And the Entity Management Solution archives the attachment
    And my User credentials are logged with the action

