# Last updated on 
@US1285745
@2018.PI04
Feature: US1285745 - Synchronize Unique ID

  @TC564626
  @Automated
  @Functional
  Scenario: TC564626 - [RL0]
    Given I am a Legacy Application
    When an Entity ID is updated
    Then the matching record in the Entity Management Solution is updated

