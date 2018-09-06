# Last updated on 
@MVP
@EXARI-11249
@CLM_UAT
@US950778
@2018.PI03
Feature: US950778 - Generate Unique Entity ID

  @TC564744
  @Automated
  @Functional
  Scenario: TC564744 - [RL0]
    Given I am the Entity Management Solution
    When A User sets up a new Entity
    Then I generate a unique Entity ID
    And I assign the unique Entity ID to the new Entity

