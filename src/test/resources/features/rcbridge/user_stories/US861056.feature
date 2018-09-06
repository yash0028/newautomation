# Last updated on 
@MVP
@US861056
@2018.PI03
Feature: US861056 - Map Entity Data Elements for Downstream Consumption

  @TC565422
  @Automated
  @Functional
  Scenario: TC565422 - [RL0]
    Given I am the Entity Management Solution
    When Entity data is updated in the Entity Management Solution
    Then updated Entity data is made available to consuming applications

