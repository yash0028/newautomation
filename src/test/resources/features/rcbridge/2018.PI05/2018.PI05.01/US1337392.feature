# Last updated on 
@US1337392
@2018.PI05
@2018.PI05.01
@releaseFuture
@iterationFuture
Feature: US1337392 - [Continued] [Continued] CPS lookup API Layer-7 implementation

  @TC587886
  @Manual
  @Functional
  Scenario: TC587886 - [RL0]
    Given The COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS detects they cannot process (no op message) the request
    Then COSMOS waits until NDB updates are complete, gets notified the NDB request is done, and then completes the request

