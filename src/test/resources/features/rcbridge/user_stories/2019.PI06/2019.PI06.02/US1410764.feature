# Last updated on 
@US1410764
@2019.PI06
@2019.PI06.02
@releaseFuture
@iterationFuture
Feature: US1410764 - Handle Roster Update Event --> Happy path

  @RC_unlinked
  @TC701599
  @Manual
  @Functional
  Scenario: TC701599 - [RL1]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an "UpdateRoster" transaction is sensed by Exari that includes both Provider Adds and Provider Cancels (but PCP Provider Cancels)
    Then a Oputm service built to handle a 'Roster Update' event is started
    And the service retrieves the Contract's configuration from the CMD service
    And the service retrieves and stores in the OCM the providers to add or cancel
    And the service

