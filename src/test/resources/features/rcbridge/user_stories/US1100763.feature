# Last updated on 
@US1100763
@2018.PI02
Feature: US1100763 - Exari > NDB - COSMOS Physician Panel - Stop Feeding

  @TC565154
  @Automated
  @Functional
  Scenario: TC565154 - [RL0]
    Given the NDB Cosmos physician panel from Exari
    When the NDB/COSMOS panel data is received, NDB will load the Cosmos panel
    Then same panel data shouldn't feed to Cosmos

