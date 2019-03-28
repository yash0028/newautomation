# Last updated on 
@US1643546
@releaseUnknown
@iterationUnknown
Feature: US1643546 - Send New NCC Medical Salesforce Data to PDP API

  @TC765389
  @Manual
  @Functional
  Scenario: TC765389 - [RL0]
    #Scenario 1: Data Replication
    Given I am preparing to send data to the PDP Database
    When I am reviewing the New NCC Medical Salesforce Instance
    Then The system will now have this data loaded in the PDP Database

