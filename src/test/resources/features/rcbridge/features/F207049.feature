# Last updated on 
@F207049
Feature: F207049 - Exari EM - Removed Stories

  @MVP
  @CLM_UAT
  @US1107626
  @2018.PI03
  Scenario: US1107626 - Remove Contract ID from Provider upon Interview Termination
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

  @US1107624
  Scenario: US1107624 - Remove Contract ID from Counterparty upon Interview Termination
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

  @MVP
  @CLM_UAT
  @US1107625
  @2018.PI03
  Scenario: US1107625 - Associate Interview Contract ID to Provider
    Given I am the Entity Management Solution
    When a Provider enters the Interview process
    Then the Contract ID is visible on the Provider record in "Draft" status in the Entity Management Solution

  @EXARI-11698
  @US858628
  Scenario: US858628 - Update Notes
    Given I am a User with access to maintain Entity information
    When I want to update a note on an Entity
    Then I can update a note on the Entity
    And the updated note is saved to the Entity record
    And the date and time is systematically added to the note
    And my user credentials are systematically added to the note

  @US1107622
  Scenario: US1107622 - Associate Interview Contract ID to Counterparty
    Given I am Entity Management Solution
    When a Counterparty enters the Interview process
    Then the Contract ID is visible on the Counterparty record in "Draft" status in the Entity Management Solution
    And the Contract ID has an effective date

