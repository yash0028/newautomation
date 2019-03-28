# Last updated on 
@US1573328
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1573328 - Pass contract information to downstream [Cosmos]

  @TC743505
  @Manual
  @Functional
  Scenario: TC743505 - [RL0]
    Given a ContractAmended transaction has been published
    When the update is an add
    And the data has been validated
    And the service has identified which product(s) are to be added
    Then the rate configuration associated with the product add(s) would be applied to the provider(s) in the downstream systems
    And any errors derived would process within the CMD as "new contract" transactions errors process
    And the provider record/configuration will be stored within the OCM database

