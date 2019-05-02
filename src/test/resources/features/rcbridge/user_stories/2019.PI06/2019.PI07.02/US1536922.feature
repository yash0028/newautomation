# Last updated on 
@US1536922
@2019.PI06
@2019.PI07.02
@releasePast
@iterationPresent
Feature: US1536922 - Receive and recognize product cancel events/transactions from Exari

  @TC743495
  @Manual
  @Functional
  Scenario: TC743495 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an "TermsUpdated" transaction is sent or published by Exari
    And a Optum APS workflow explicitly built to handle a "TermsUpdated" event is started
    And the Optum APS workflow calls an end point in the CLM Gateway service that handles all "TermsUpdated" events
    And the following data elements are passed to the Gateway endpoint:
      | Event Type Id (TermsUpdated) |
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
    And Publishes a Kafka "TermsUpdated" event that will be consumed by the Contract Update service
    And Returns a "SUCCESS" status and the Transaction Id to the Optum APS workflow synchronously

