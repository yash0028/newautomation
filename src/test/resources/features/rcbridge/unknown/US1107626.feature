# Last updated on 
@CLM_UAT
@US1107626
@releaseUnknown
@iterationUnknown
Feature: US1107626 - Remove Contract ID from Provider upon Interview Termination

  @TC565680
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC565680 - [RL0]
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

