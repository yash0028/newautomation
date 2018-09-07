# Last updated on 
@MVP
@CLM_UAT
@EXARI-11698
@US858626
@2018.PI03
Feature: US858626 - Add Notes

  @TC565124
  @Automated
  @Functional
  Scenario: TC565124 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to add a note to an Entity
    Then I can add a note to the Entity
    And my note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note
