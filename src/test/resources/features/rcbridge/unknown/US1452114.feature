# Last updated on 
@US1452114
@releaseUnknown
@iterationUnknown
Feature: US1452114 - View Provider System ID

  @TC672165
  @Manual
  @Functional
  Scenario: TC672165 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I view the Entity Header
    Then I can see the Provider System ID for the Entity

