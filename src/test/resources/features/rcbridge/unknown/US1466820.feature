# Last updated on 
@US1466820
@releaseUnknown
@iterationUnknown
Feature: US1466820 - Display Tax ID

  @TC672211
  @Manual
  @Functional
  Scenario: TC672211 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I view an Entity structure
    Then I can see all Tax IDs related to the Entity structure

