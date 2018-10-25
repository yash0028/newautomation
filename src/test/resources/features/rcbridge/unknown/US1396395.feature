# Last updated on 
@US1396395
@releaseUnknown
@iterationUnknown
Feature: US1396395 - Extend term of agreement - hard term - load downstream integrated - NDB

  @TC619008
  @Manual
  @Functional
  @US1396395
  Scenario: TC619008 - [RL0]
    Given the microservices have an updated Hard Term Date
    When the details are complied
    Then NDB is sent the details

