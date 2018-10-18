# Last updated on 
@US1100763
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Parity
@F171708
@releasePast
@iterationPast
Feature: US1100763 - Exari > NDB - COSMOS Physician Panel - Stop Feeding

  @TC565154
  @Automated
  @Functional
  @US1100763
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565154 - [RL0]
    Given the NDB Cosmos physician panel from Exari
    When the NDB/COSMOS panel data is received, NDB will load the Cosmos panel
    Then same panel data shouldn't feed to Cosmos

