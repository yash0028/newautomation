# Last updated on 
@US1239950
@MVP
@N/A
@releaseUnknown
@iterationUnknown
Feature: US1239950 - F5 GTMs for Production

  @TC701657
  @Manual
  @Functional
  Scenario: TC701657 - [RL0]
    Given a service is exposed through layer 7,
    When multiple requests come into that service,
    Then the requests are spread out between ELR and CTC datacenters

