# Last updated on 
@US1561166
@2019.PI07
@2019.PI07.01
@releaseUnknown
@iterationUnknown
Feature: US1561166 - Add a Context Property to microservice particpating in contract transactions

  @TC720674
  @Manual
  @Functional
  Scenario: TC720674 - [RL0]
    Given a Mass Project event is received
    When the transaction is processed
    Then a context attribute or Project ID is available to identity the transaction as Mass
    And the identifier is available to services as appropriate

