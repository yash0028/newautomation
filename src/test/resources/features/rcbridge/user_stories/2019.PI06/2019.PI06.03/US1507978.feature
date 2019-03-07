# Last updated on 
@US1507978
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1507978 - Receive and recognize roster events/transactions from Exari

  @TC690155
  @Manual
  @Functional
  Scenario: TC690155 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an "UpdateRoster" transaction is sent or published by Exari
    And a Optum APS workflow explicitly built to handle a "Roster Update" event is started
    And the Optum APS workflow calls an end point in the CLM Gateway service that handles all "Roster Update" events
    And the following data elements are passed to the Gateway endpoint:
      | Event Type Id (RosterUpdate) |
      | Contract Id                  |
      | Contract Type                |
      | Contract Subtype             |
      | Date                         |
      | Time                         |
      | User                         |
      | Transaction Id               |
      | MassProject                  |
    Then the CLM Gateway endpoint Initializes a transaction
    And Performs minimal data validation on the above data elements
    And Publishes a Kafka "Roster Update" event that will be consumed by the Contract Update service
    And Returns a "SUCCESS" status and the Transaction Id to the Optum APS workflow synchronously

