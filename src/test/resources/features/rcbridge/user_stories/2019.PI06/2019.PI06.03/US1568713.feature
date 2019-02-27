# Last updated on 
@US1568713
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationFuture
Feature: US1568713 - Create service to provide Market Product groups to Exari

  @TC732500
  @Manual
  @Functional
  Scenario: TC732500 - [RL0]
    Given a valid Exari contract exists
    When Exari needs Market Products for the contract record
    Then an Optum service is available for Exari that provides the Market Products

