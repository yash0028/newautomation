# Last updated on 
@US1391606
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391606 - SMGA TIN Add Follow F235963

  @TC616942
  @Manual
  @Functional
  @US1391606
  Scenario: TC616942 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SMGA Contract
    Then I maintain Provider information associated to the TIN as detailed in Feature F235963

