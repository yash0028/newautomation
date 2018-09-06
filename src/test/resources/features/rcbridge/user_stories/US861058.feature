# Last updated on 
@MVP
@EXARI-11271
@EXARI-8724
@US861058
@2018.PI03
Feature: US861058 - Publish Events When Entity Structures Change

  @TC565447
  @Automated
  @Functional
  Scenario: TC565447 - [RL0]
    Given I am the Entity Management Solution
    When an Entity structure changes in the Entity Management Solution
    Then I made the updated Entity structure information available to consuming applications

