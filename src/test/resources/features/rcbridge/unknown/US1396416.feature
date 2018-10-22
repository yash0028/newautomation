# Last updated on 
@US1396416
@MVP
@Maintenance
@F236042
@releaseUnknown
@iterationUnknown
Feature: US1396416 - Extend term of agreement - hard term - manual loading

  @TC619010
  @Manual
  @Functional
  @US1396416
  Scenario: TC619010 - [RL0]
    Given an agreement with a Hard Term date is extended
    When I execute the agreement in Exari
    Then I am using the Activity Manager workflow

