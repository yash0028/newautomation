# Last updated on 
@US861077
Feature: US861077 - Consolidate Entity Data

  @TC564431
  @Automated
  @Functional
  Scenario: TC564431 - [RL0]
    Given I am the Entity Management Solution
    When I receive updated Entity data from a legacy system
    Then I can consolidate this data into a new or existing Entity
    And prepare the consolidated information for review and approval

