# Last updated on 
@MVP
@CLM_UAT
@US1171453
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1171453 - Update Date Validated Field

  @TC564543
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC564543 - [RL0]
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    Then I update the Date Verified field associated with the Tax ID with the date provided in the Tax ID Validation File

