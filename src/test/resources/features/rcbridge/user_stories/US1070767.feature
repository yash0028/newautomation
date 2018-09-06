# Last updated on 
@US1070767
@2018.PI03
Feature: US1070767 - SPIKE - COSMOS API Facility Analysis

  @TC564759
  @Automated
  @Functional
  Scenario: TC564759 - [RL0]
    Given that COSMOS works through their analysis around ingesting the Exari Facility Payload data
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

