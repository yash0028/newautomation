# Last updated on 
@Shweta
@US1900136
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationFuture
Feature: US1900136 - Physician negotiation needs market name and region

  @TC905911
  @Manual
  @Functional
  @Shweta
  Scenario: TC905911 - [RL0]
    Given a contract is added to the physician negotiation
    When the details of the contract are pulled from Exari
    Then the Market Name is identified
    And the Region is identified

