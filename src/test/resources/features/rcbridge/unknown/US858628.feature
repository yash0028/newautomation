# Last updated on 
@EXARI-11698
@US858628
@releaseUnknown
@iterationUnknown
Feature: US858628 - Update Notes

  @TC564501
  @Automated
  @Functional
  @EXARI-11698
  Scenario: TC564501 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update a note on an Entity
    Then I can update a note on the Entity
    And the updated note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note

