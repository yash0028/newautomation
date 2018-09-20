# Last updated on 
@US1285744
@2018.PI04
Feature: US1285744 - Synchronize Name

  @TC565122
  @Automated
  @Functional
  Scenario: TC565122 - [RL0]
    Given I am a Legacy Application
    When an Entity Name is updated
    Then the matching record in the Entity Management Solution is updated

