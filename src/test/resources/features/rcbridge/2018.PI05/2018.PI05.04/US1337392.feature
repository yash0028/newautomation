# Last updated on 
@US1337392
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releasePresent
@iterationFuture
Feature: US1337392 - [Continued] [Continued] CPS lookup API Layer-7 implementation

  @TC587886
  @Manual
  @Functional
  Scenario: TC587886 - [RL0]
    Given The COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS updater requires additional information
    And COSMOS updater waits until NDB updates are complete, gets notified the NDB request returns valid values
    Then The CPS Lookup API will respond with valid NDB values

  @RC_unlinked
  @TC666057
  @Manual
  @Functional
  Scenario: TC666057 - [RL1]
    Given The COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS updater requires additional information
    And COSMOS updater waits until NDB updates are complete, gets notified the NDB request returned no data found
    Then The CPS Lookup API will respond with no data found

