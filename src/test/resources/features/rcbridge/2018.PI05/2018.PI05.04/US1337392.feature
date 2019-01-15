# Last updated on 
@US1337392
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releasePresent
@iterationPresent
Feature: US1337392 - [Continued] [Continued] CPS lookup API Layer-7 implementation

  @TC587886
  @Manual
  @Functional
  Scenario: TC587886 - Verify CPS Lookup API returns valid values
    Given The COSMOS DIV is EVC and Contract package # is 22503
    When COSMOS updater requires additional information
    And COSMOS updater waits until NDB updates are complete, gets notified the NDB request returns valid values
    Then The CPS Lookup API will respond with valid NDB values

  @TC701600
  @Manual
  @Functional
  Scenario: TC701600 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "central uhn" site
    And I author a contract using the "eif-cps-loopup.json" flow
    When COSMOS updater requires additional information
    And COSMOS updater waits until NDB updates are complete
    And COSMS gets notified the NDB request returns valid values
    Then The CPS Lookup API will respond with valid NDB values
    And The COSMOS DIV is EVC and Contract package # is 22503

