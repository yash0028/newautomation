# Last updated on 
@US858702
@F198150
@releaseUnknown
@iterationUnknown
Feature: US858702 - Create & Update Entity Relationship Rules

  @TC564919
  @Automated
  @Functional
  @US858702
  Scenario: TC564919 - [RL0]
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    And I can update an existing Entity relationship rule for an Entity

