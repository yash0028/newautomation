# Last updated on 
@US1391610
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1391610 - SPA/PAT, SMGA,SPGA Added TIN Maintenance Event System Notification

  @TC616915
  @Manual
  @Functional
  Scenario: TC616915 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SPA/PAT, SMGA,SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

