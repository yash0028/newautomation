# Last updated on 
@US1373396
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1373396 - Change Layer7 Urls to Stargate

  @TC605370
  @Manual
  @Functional
  Scenario: TC605370 - [RL0]
    Given an API gateway proxy is needed,
    When we already have it in layer7,
    Then it is created in Stargate nonprod and prod

