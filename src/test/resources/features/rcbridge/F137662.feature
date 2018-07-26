# Last updated on 2018-07-19T18:45:27.146Z
@MVP
@Plus
@Priority_1
Feature: F137662 - Exari EM - Create and Maintain Entity Supplemental Detail

  Scenario: US1221388
    Given I am a User with access to maintain Entity information
    When I am uploading an attachment to an Entity
    Then I must select an Attachment Type to define that attachment prior to uploading

  @MVP
  @CLM_UAT
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
  @EXARI-11643
  @CLM_UAT
  @2018.PI03
  Scenario: US858627
    Given I am a User with access to maintain Entity information
    When I want to associate a document to an Entity
    Then I can associate a document to the Entity
    And my document is linked to the Entity record
    And the date and time is systematically logged with my attachment
    And my user credentials are systematically logged with my attachment

