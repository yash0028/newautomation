# Last updated on 
@US1685345
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationPresent
Feature: US1685345 - Continued - Create service to provide Transaction installation status to Exari (Make Correction)

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

