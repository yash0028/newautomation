# Last updated on 
@US1391605
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391605 - SPA/PAT TIN Add Follow F235963

  @TC616944
  @Manual
  @Functional
  Scenario: TC616944 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SPA/PAT Contract
    Then I maintain Provider information associated to the TIN as detailed in Feature F235963

