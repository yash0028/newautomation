# Last updated on 2018-07-19T20:40:14.658Z

Feature: F207049 - Exari EM - Removed Stories

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1107626
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1107625
    Given I am the Entity Management Solution
    When a Provider enters the Interview process
    Then the Contract ID is visible on the Provider record in "Draft" status in the Entity Management Solution

  @EXARI-11698
  Scenario: US858628
    Given I am a User with access to maintain Entity information
    When I want to update a note on an Entity
    Then I can update a note on the Entity
    And the updated note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note
