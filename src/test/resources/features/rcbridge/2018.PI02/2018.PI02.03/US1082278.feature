# Last updated on 
@US1082278
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Parity
@F171708
@releasePast
@iterationPast
Feature: US1082278 - [Continued] Exari >NDB/COSMOS Physician PPC - API

  @TC564940
  @Automated
  @Functional
  @US1082278
  @2018.PI02
  @2018.PI02.03
  Scenario: TC564940 - [RL0]
    Given the Exari>NDB/COSMOS Physician Panel is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

