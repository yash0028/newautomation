# Last updated on 
@US1451247
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationFuture
Feature: US1451247 - Pass contract information to downstream [NDB]

  @TC743441
  @Manual
  @Functional
  Scenario: TC743441 - [RL0]
    Given a RosterUpdate transaction has been published
    When the update is an add
    And the data has been validated
    Then the rate configuration would be applied to the provider in the downstream systems
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

