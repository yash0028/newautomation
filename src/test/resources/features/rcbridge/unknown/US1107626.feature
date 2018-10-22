# Last updated on 
@MVP
@CLM_UAT
@US1107626
@F207049
@releaseUnknown
@iterationUnknown
Feature: US1107626 - Remove Contract ID from Provider upon Interview Termination

  @TC565680
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1107626
  Scenario: TC565680 - [RL0]
    Given I am the Entity Management Solution
    When the Interview process is cancelled with a Provider
    Then I need the Contract ID to be removed from the Provider record in the Entity Management Solution

