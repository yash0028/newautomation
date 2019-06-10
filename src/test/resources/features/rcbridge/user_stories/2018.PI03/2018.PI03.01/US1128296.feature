# Last updated on 
@CLM_UAT
@US1128296
@2018.PI03
@2018.PI03.01
@releaseUnknown
@iterationUnknown
Feature: US1128296 - [Continued] [Continued] Benchmarking & Acceptance Testing

  @TC730489
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC730489 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC730490
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC730490 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC730491
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC730491 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

