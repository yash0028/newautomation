# Last updated on 
@US1685345
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1685345 - Continued - Create service to provide Transaction installation status to Exari

  @TC772436
  @Manual
  @Functional
  Scenario: TC772436 - [RL0]
    Given a successfully installed contract exists in Exari
    When a first Roster Update has been successfully processed
    And a second Roster Update to different provider has been successfully processed
    And a call to the Optum Transaction Status with the Exari contract ID and first Exari Transaction Roster Update ID for the Roster Update contract event
    And a call to the Optum Transaction Status with the Exari contract ID and second Exari Transaction Roster Update ID for the Roster Update contract event
    Then the first Optum service should return the status of that Roster Update transaction as 'Successful'
    And the second Optum service should return the status of that Roster Update transaction as 'Successful'
    ###

