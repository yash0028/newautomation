# Last updated on
@MVP
@EXARI-11271
@EXARI-8724
@US861058
@MVP
@Plus
@Priority_1
@F137903
@releaseUnknown
@iterationUnknown
Feature: US861058 - Publish Events When Entity Structures Change

  @TC565447
  @Automated
  @Functional
  @MVP
  @EXARI-11271
  @EXARI-8724
  @US861058
  Scenario: TC565447 - [RL0]
    Given I am the Entity Management Solution
    When an Entity structure changes in the Entity Management Solution
    Then I made the updated Entity structure information available to consuming applications

