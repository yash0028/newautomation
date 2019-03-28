# Last updated on 
@US1451247
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1451247 - Pass contract information to downstream [NDB]

  @TC743441
  @Manual
  @Functional
  Scenario: TC743441 - [RL0]
    Given a ContractAmended transaction has been published
    When the update is an add
    And the data has been validated
    And the product(s) being added have been identified
    Then the associated rate configuration would be applied to the providers in the downstream systems
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

