# Last updated on
@MVP
@EXARI-10529
@CLM_UAT
@US1120329
@MVP
@Plus
@Priority_1
@F137678
@releaseUnknown
@iterationUnknown
Feature: US1120329 - View Entity Structure by Relationship Role

  @TC565894
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  @US1120329
  Scenario: TC565894 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view only Entity components of a specified Relationship Role
    Then I can customize my view to only show Entity components with the specified Relationship Role
    And the system displays the Entity components with my specified Relationship Role

