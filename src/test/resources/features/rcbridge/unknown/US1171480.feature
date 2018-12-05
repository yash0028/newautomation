# Last updated on 
@MVP
@CLM_UAT
@US1171480
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1171480 - Generate Error Log

  @TC565469
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565469 - [RL0]
    Given I am the Entity Management Solution
    When a Tax ID on the Tax ID Validation File was not found in the Entity Management Solution
    And when a Tax ID on the Tax ID Validation File was not updated correctly in the Entity Management Solution
    Then I generate an error log listing the Tax ID updates that were not executed correctly
    And a User can export the error log

