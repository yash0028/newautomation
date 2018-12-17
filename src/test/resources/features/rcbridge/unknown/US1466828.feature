# Last updated on 
@US1466828
@releaseUnknown
@iterationUnknown
Feature: US1466828 - Effective Date

  @TC672206
  @Manual
  @Functional
  Scenario: TC672206 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I am viewing information about a Tax ID associated to an Entity
    Then I see the Effective Date for each Tax ID related to an Entity

