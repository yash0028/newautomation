# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US1086983
@MVP
@Plus
@Priority_1
@F181492
Feature: US1086983 - Update TIN

  @TC564601
  @Automated
  @Functional
  @MVP
  @EXARI-11249
  @CLM_UAT
  @US1086983
  Scenario: TC564601 - [RL0]
    Given I am the Entity Management Solution
    When the TIN is updated in NDB
    And the TIN exists in Entity Management
    Then the Entity Management Solution is updated
    And the updated TIN is available in the Entity Management Solution

