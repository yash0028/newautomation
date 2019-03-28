# Last updated on 
@US1295168
@releaseUnknown
@iterationUnknown
Feature: US1295168 - Update OSE Templates

  @TC701664
  @Manual
  @Functional
  Scenario: TC701664 - [RL0]
    Given I choose an image and OSE environmnet,
    When I deploy to given environment,
    Then the template has ll the correct tags and presets.

