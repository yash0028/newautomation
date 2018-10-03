# Last updated on 
@MVP
@CLM_UAT
@US1107625
@F207049
Feature: US1107625 - Associate Interview Contract ID to Provider

  @TC564798
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1107625
  Scenario: TC564798 - [RL0]
    Given I am the Entity Management Solution
    When a Provider enters the Interview process
    Then the Contract ID is visible on the Provider record in "Draft" status in the Entity Management Solution

