# Last updated on 
@US1837515
@releaseUnknown
@iterationUnknown
Feature: US1837515 - Production Stargate Proxies

  @TC841780
  @Manual
  @Functional
  Scenario: TC841780 - [RL0]
    Given I have a service in prod,
    When I hit the Stargate Prod Proxy,
    Then it works and hits both datacenters

