# Last updated on 
@US1301613
@2018.PI03
Feature: US1301613 - CMD Dashboard buttons

  @TC565141
  @Automated
  @Functional
  Scenario: TC565141 - [RL0]
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following buttons "Completed, In-Progress, Action Required, Errors"

