# Last updated on 
@US1098232
@MVP
@Priority_4
@releaseUnknown
@iterationUnknown
Feature: US1098232 - Migrate MPIN/TIN/DLGT CD Data

  @TC564778
  @Automated
  @Functional
  Scenario: TC564778 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view current MPIN/TIN/DLGT CD data that was stored in NDB
    And I want to view historical MPIN/TIN/DLGT CD data that was stored in NDB
    Then I can access this data through the Entity Management Solution

