# Last updated on 
@US1105127
Feature: US1105127 - Default Relationship Type

  @TC565064
  @Automated
  @Functional
  Scenario: TC565064 - [RL0]
    Given I am the Entity Management Solution
    When a new Provider is associated with a TIN in a Legacy Application
    And the new Provider is synchronized to the Entity Management Solution
    Then the Provider is tagged with "New Provider" in the Entity Management Solution
    And the Provider enters a workflow so a User can define the Provider/TIN Relationship Role and Type

