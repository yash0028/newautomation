# Last updated on 
@US1396385
@MVP
@Maintenance
@F236042
@releaseUnknown
@iterationUnknown
Feature: US1396385 - Extend term of agreement - hard term - load downstream integrated

  @TC619009
  @Manual
  @Functional
  @US1396385
  Scenario: TC619009 - [RL0]
    Given an agreement with a Hard Term date is extended
    When I execute the agreement in Exari
    Then the microservices are sent the updated Hard Term Date

