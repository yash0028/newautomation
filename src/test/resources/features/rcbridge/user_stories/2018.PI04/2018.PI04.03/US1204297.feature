# Last updated on 
@Amrutha
@MVP+1
@US1204297
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@F218723
Feature: US1204297 - NDB Common Pricing Solution Lookup API

  @TC564504
  @Automated
  @Functional
  @Amrutha
  @MVP+1
  @US1204297
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564504 - [RL0]
    Given the COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS detects they cannot process (no op message) the request
    Then COSMOS waits until NDB updates are complete, gets notified the NDB request is done, and then completes the request

