# Last updated on
@PES
@Alex_M
@US1194560
@2018.PI03
@2018.PI03.04
@PI02_Top3
@PES
@Exari_Microservice
@MVP
@10/1_Physician
@Priority_1
@CLM_Exari
@Parity
@F201611
@releasePast
@iterationPast
Feature: US1194560 - PES ExternaI Data Query (Appendix 1 lookup)

  @TC558183
  @Manual
  @Functional
  @PES
  @Alex_M
  @US1194560
  @2018.PI03
  @2018.PI03.04
  Scenario: TC558183 - Bad Path Appendix 1 EDQ Verification
    When querying the Appendix 1 Lookup external data query with invalid input
    Then an invalid response is returned to Exari

  @TC558182
  @Manual
  @Functional
  @PES
  @Alex_M
  @US1194560
  @2018.PI03
  @2018.PI03.04
  Scenario: TC558182 - [RL0] Happy Path Appendix 1 EDQ Verification
    When querying the Appendix 1 Lookup external data query
    Then a valid response is returned to Exari

