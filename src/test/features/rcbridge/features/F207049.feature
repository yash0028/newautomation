# Last updated on 2018-07-13T19:25:11.893Z

Feature: F207049 - Exari EM - Removed Stories

  @EXARI-11698
  Scenario: US858628
    Given I am a User with access to maintain Entity information
    When I want to update a note on an Entity
    Then I can update a note on the Entity
    And the updated note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note

