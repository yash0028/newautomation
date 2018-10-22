# Last updated on 
@US1391607
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391607 - SPGA TIN Add Follow F235963

  @TC616919
  @Manual
  @Functional
  @US1391607
  Scenario: TC616919 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SPGA Contract
    Then I maintain Provider information associated to the TIN as detailed in Feature F235963

