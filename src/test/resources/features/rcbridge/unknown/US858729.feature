# Last updated on
@MVP
@EXARI-10529
@CLM_UAT
@US858729
@MVP
@Plus
@Priority_1
@F137679
@releaseUnknown
@iterationUnknown
Feature: US858729 - View Providers Associated to an Entity

  @TC565002
  @Automated
  @Functional
  @MVP
  @EXARI-10529
  @CLM_UAT
  @US858729
  Scenario: TC565002 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view Providers associated to an Entity
    Then I can find an Entity
    And I can view all Providers connected to that Entity

