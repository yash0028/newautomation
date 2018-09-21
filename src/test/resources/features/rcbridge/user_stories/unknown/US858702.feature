# Last updated on 
@US858702
Feature: US858702 - Create & Update Entity Relationship Rules

  @TC564919
  @Automated
  @Functional
  Scenario: TC564919 - [RL0]
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    And I can update an existing Entity relationship rule for an Entity
