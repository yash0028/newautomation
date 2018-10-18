# Last updated on
@US1390739
@2018.PI04
@2018.PI04.02
@releasePresent
@iterationPast
Feature: US1390739 - [Unfinished] [Continued] CPS lookup API Layer-7 implementation

  @TC616427
  @Manual
  @Functional
  @US1390739
  @2018.PI04
  @2018.PI04.02
  Scenario: TC616427 - [RL0]
    Given the COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS detects they cannot process (no op message) the request
    Then COSMOS waits until NDB updates are complete, gets notified the NDB request is done, and then completes the request

