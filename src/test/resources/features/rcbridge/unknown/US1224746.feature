# Last updated on 
@US1224746
@MVP
@Plus
@Priority_1
@F181492
@releaseUnknown
@iterationUnknown
Feature: US1224746 - Created TIN

  @TC564389
  @Automated
  @Functional
  @US1224746
  Scenario: TC564389 - [RL0]
    Given I am the Entity Management Solution
    When a TIN is created in NDB
    Then the new TIN is passed to the Entity Management Solution

