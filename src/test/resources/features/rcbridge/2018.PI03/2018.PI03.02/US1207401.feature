# Last updated on 
@US1207401
@2018.PI03
@2018.PI03.02
@MVP
@Plus
@Priority_1
@releasePast
@iterationPast
Feature: US1207401 - SPIKE: Exari> NDB Facility/Ancillary Payload - Layout data attributes Analysis

  @TC564942
  @Automated
  @Functional
  Scenario: TC564942 - [RL0]
    Given The Facility contract is complete and correct within Exari
    When The contract is included in the Exari Facility Contract payload to NDB
    Then NDB should build the the Staging screen record/ PNC Screen Record as applicable.

