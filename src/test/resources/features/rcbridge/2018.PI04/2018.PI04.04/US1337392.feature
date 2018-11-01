# Last updated on 
@US1337392
@2018.PI04
@2018.PI04.04
@releasePresent
@iterationPresent
Feature: US1337392 - [Continued] [Continued] CPS lookup API Layer-7 implementation

  @TC587886
  @Manual
  @Functional
  @US1337392
  @2018.PI04
  @2018.PI04.04
  Scenario: TC587886 - [RL0]
    Given the COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS detects they cannot process (no op message) the request
    Then COSMOS waits until NDB updates are complete, gets notified the NDB request is done, and then completes the request

