# Last updated on
@MVP
@EXARI-11249
@CLM_UAT
@US1086978
@MVP
@Plus
@Priority_1
@F181492
@releaseUnknown
@iterationUnknown
Feature: US1086978 - Update NPI

  @TC564382
  @Automated
  @Functional
  @MVP
  @EXARI-11249
  @CLM_UAT
  @US1086978
  Scenario: TC564382 - [RL0]
    Given I am the Entity Management Solution
    When the NPI is updated in NDB
    And the NPI exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated NPI is available in the Entity Management Solution

