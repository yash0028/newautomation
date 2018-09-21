# Last updated on 
@US1295168
Feature: US1295168 - Update OSE Templates

  @TC565149
  @Automated
  @Functional
  Scenario: TC565149 - [RL0]
    Given I choose an image and OSE environmnet,
    When I deploy to given environment,
    Then the template has ll the correct tags and presets.

