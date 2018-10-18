# Last updated on 
@US1257574
@MVP
@Plus
@Priority_1
@F137676
@releaseUnknown
@iterationUnknown
Feature: US1257574 - Save Search

  @TC564830
  @Automated
  @Functional
  @US1257574
  Scenario: TC564830 - [RL0]
    Given I am a User with access to maintain Entity information
    When I create a search query
    Then I can save that search query
    And I can create a custom name for that search query

