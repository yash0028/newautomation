# Last updated on 
@US1082242
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Parity
@releasePast
@iterationPast
Feature: US1082242 - Exari >NDB -  COSMOS Physician PPC - Analysis

  @TC564717
  @Automated
  @Functional
  Scenario: TC564717 - [RL0]
    Given The Physician Panel is complete and correct within Exari
    When The contract is included in the Exari Physician Panel Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

