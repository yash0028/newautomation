# Last updated on 
@US1239950
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1239950 - F5 GTMs for Production

  @TC564756
  @Automated
  @Functional
  @US1239950
  Scenario: TC564756 - [RL0]
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

