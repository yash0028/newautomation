# Last updated on 
@US1070767
@2018.PI04
@2018.PI04.02
@MVP
@Plus
@Priority_1
@F159195
Feature: US1070767 - SPIKE - COSMOS API Facility Analysis

  @TC564759
  @Automated
  @Functional
  @US1070767
  @2018.PI04
  @2018.PI04.02
  Scenario: TC564759 - [RL0]
    Given that COSMOS works through their analysis around ingesting the CLM Facility Payload data
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

