# Last updated on 
@Shweta
@US1900136
@2019.PI08
@2019.PI08.03
@releasePast
@iterationPast
Feature: US1900136 - Physician negotiation needs region

  @TC905911
  @Manual
  @Functional
  @Shweta
  Scenario: TC905911 - [RL0]
    Given a contract is added to the physician negotiation
    When the details of the contract are pulled from Exari
    Then the Region is identified

