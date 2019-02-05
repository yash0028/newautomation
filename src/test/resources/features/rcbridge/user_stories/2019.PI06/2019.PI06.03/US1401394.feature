# Last updated on 
@US1401394
@2019.PI06
@2019.PI06.03
@releaseFuture
@iterationFuture
Feature: US1401394 - Analyze Roster submission for cancelations- Logic

  @TC697435
  @Manual
  @Functional
  Scenario: TC697435 - [RL0]
    ###Scenario 1 (No cancellations on roster request)
    Given a Contract Correction notification has been received / submitted
    When there are no cancellation transactions in the ProviderRoster_Cancelations_JSON identified on the roster
    Then conditions have not been met for PROVIDER CANCEL process

  @TC697440
  @Manual
  @Functional
  Scenario: TC697440 - [RL1]
    ###Scenario 2 (Cancellations on roster request- execute PCP Identification API)
    Given a Contract Correction notification has been received / submitted
    When there are no cancellation transactions in the ProviderRoster_Cancelations_JSON identified on the roster
    Then conditions have been met for PROVIDER CANCEL process
    And the process should continue to the next step in CMD Cancel Process
    ###

