# Last updated on 
@MVP
@CLM_UAT
@US1171454
@MVP
@Plus
@Priority_2
@F198810
@releaseUnknown
@iterationUnknown
Feature: US1171454 - Update Validated Status Field

  @TC565209
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1171454
  Scenario: TC565209 - [RL0]
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    Then I update the Validation Status field associated with the Tax ID from "Pending Validation" to "Validated"

