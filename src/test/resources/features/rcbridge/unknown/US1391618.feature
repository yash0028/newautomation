# Last updated on 
@US1391618
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391618 - SMGA Added Counterparty TIN Maintenance Event System Notification

  @TC616934
  @Manual
  @Functional
  @US1391618
  Scenario: TC616934 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a Counterparty TIN to a SMGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

