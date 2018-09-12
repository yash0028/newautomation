# Last updated on 
@US1301613
Feature: US1301613 - CMD Dashboard buttons

  @Automated
  @Functional
  Scenario: TC565940 - [RL0]
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following buttons "Completed, In-Progress, Action Required, Errors"

