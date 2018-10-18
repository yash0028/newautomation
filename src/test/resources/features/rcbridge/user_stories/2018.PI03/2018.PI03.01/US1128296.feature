# Last updated on 
@CLM_UAT
@US1128296
@2018.PI03
@2018.PI03.01
@MVP
@10/1_Physician
@Priority_1
@Transaction
@Parity
@F177202
@releasePast
@iterationPast
Feature: US1128296 - [Continued] [Continued] Benchmarking & Acceptance Testing

  @TC565847
  @Automated
  @Functional
  @CLM_UAT
  @US1128296
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565847 - [RL2]
    Given the approval coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565845
  @Automated
  @Functional
  @CLM_UAT
  @US1128296
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565845 - [RL0]
    Given the transaction state micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

  @TC565846
  @Automated
  @Functional
  @CLM_UAT
  @US1128296
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565846 - [RL1]
    Given the transaction coordinator micro service is created,
    When I send a payload to the micro service,
    Then I will see the latency of the response,
    And I will see how the consumer micro service performs.

