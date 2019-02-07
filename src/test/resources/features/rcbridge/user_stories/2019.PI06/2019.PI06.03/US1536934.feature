# Last updated on 
@US1536934
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationFuture
Feature: US1536934 - Validation Process Cancel transaction to applicable platform(s)

  @TC703940
  @Manual
  @Functional
  Scenario: TC703940 - [RL0]
    Given a product group has been cancelled from the contract
    When the contract is active
    Then product groups are removed from each qualified provider record on the roster.

