# Last updated on 
@US1403776
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1403776 - Validate terminate contract data

  @TC713739
  @Manual
  @Functional
  Scenario: TC713739 - [RL0]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an "TerminateContract" transaction is sensed by Exari
    Then a Oputm APS workflow explicitly built to handle a 'TerminateContract' event is started
    And the Optum APS workflow calls an end point in the CLM Gateway service that handles all 'TerminateContract' events
    And the Gateway service endpoint includes contract details
    And the structure includes Event Type Id (TerminateContract)
    And Contract Id
    And Contract Type
    And Contract Subtype
    And Date
    And Time
    And User
    And Transaction Id
    And MassProjectID

  @TC713745
  @Manual
  @Functional
  Scenario: TC713745 - [RL1]
    Given that a contract has been created in Exari and successfully installed into Optum's legacy systems
    When an "TerminateContract" transaction is sensed by Exari
    Then the CLM Gateway endpoint Initializes a transaction
    And Performs minimal data validation on the above data elements
    And Publishes a Kafka 'TerminateContract' event that will be consumed by the Contract Update service
    And Returns a SUCCESS status and the Transaction Id to the Optum APS workflow syncrhonously
    ###

