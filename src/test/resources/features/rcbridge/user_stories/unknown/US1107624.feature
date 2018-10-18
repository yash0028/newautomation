# Last updated on 
@US1107624
@F207049
@releaseUnknown
@iterationUnknown
Feature: US1107624 - Remove Contract ID from Counterparty upon Interview Termination

  @TC565257
  @Automated
  @Functional
  @US1107624
  Scenario: TC565257 - [RL0]
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Counterparty
    Then I need the Contract ID status to change to an "Inactive" status
    And the Contract ID has an inactivation date

