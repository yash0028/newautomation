# Last updated on 
@MVP
@CLM_UAT
@EXARI-10713
@US1131278
@MVP
@Plus
@Priority_1
@F137679
@releaseUnknown
@iterationUnknown
Feature: US1131278 - View Contracts Associated to a Provider

  @TC565835
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-10713
  @US1131278
  Scenario: TC565835 - [RL0]
    Given I am a User with access to view or modify Entity information
    When I view a Provider
    Then I can see all Contracts associated to the Provider
    And I can see all Interviews associated to the Provider

