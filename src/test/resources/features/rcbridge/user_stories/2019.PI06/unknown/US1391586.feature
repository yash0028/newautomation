# Last updated on 
@US1391586
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1391586 - SPA/PAT, SMGA,SPGA Removed TIN Maintenance Event System Notification

  @TC616936
  @Manual
  @Functional
  Scenario: TC616936 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPA/PAT, SMGA,SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

