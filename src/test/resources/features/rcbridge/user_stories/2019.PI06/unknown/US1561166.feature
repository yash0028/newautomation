# Last updated on 
@US1561166
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1561166 - Add a Context Property to microservice particpating in contract transactions

  @TC720674
  @Manual
  @Functional
  Scenario: TC720674 - [RL0]
    Given a Mass Project event is received
    When the transaction is processed
    Then a context attribute is available to identity the transaction as Mass
    And the identifier is available to services as appropriate
    ###

