# Last updated on 
@US1396399
@MVP
@Maintenance
@F236042
@releaseUnknown
@iterationUnknown
Feature: US1396399 - Extend term of agreement - hard term - load downstream integrated - COSMOS

  @TC619007
  @Manual
  @Functional
  @US1396399
  Scenario: TC619007 - [RL0]
    Given the microservices have an updated Hard Term Date
    When the details are complied
    Then COSMOS is sent the details

