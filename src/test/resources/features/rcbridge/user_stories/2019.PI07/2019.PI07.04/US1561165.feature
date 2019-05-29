# Last updated on 
@US1561165
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationFuture
Feature: US1561165 - Change scripts to start-up Mass Action microservicesv (DevOps)

  @TC720672
  @Manual
  @Functional
  Scenario: TC720672 - [RL0]
    Given a transaction event has been received
    When the transaction is a Mass originated request
    Then scripts and startup parameter/services are available to handle the request

