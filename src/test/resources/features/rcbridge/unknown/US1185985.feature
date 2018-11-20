# Last updated on 
@US1185985
@releaseUnknown
@iterationUnknown
Feature: US1185985 - Update Identifier Type

  @TC565314
  @Automated
  @Functional
  Scenario: TC565314 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Identifier Type
    Then I have the ability to expire the current Identifier Type
    And I have the ability to select a new Identifier Type

