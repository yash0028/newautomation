# Last updated on 
@US1427097
@2018.PI04
@2018.PI04.04
@MVP
@Plus
@Priority_2
@Facility
@releasePast
@iterationPast
Feature: US1427097 - SPIKE - COSMOS Facility Analysis - Architecture

  @TC635116
  @Manual
  @Functional
  Scenario: TC635116 - [RL0]
    Given that COSMOS works through their architecture analysis around ingesting the CLM Facility Payload data
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

