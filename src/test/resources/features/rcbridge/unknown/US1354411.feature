# Last updated on
@US1354411
@MVP
@Plus
@PI03
@Priority_1
@F137934
@releaseUnknown
@iterationUnknown
Feature: US1354411 - Export Entities without a Relationship

  @TC595396
  @Manual
  @Functional
  @US1354411
  Scenario: TC595396 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to see all the Entities that do not have a relationship to any other Entity
    Then I can export a list of these Entities

