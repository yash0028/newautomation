# Last updated on
@CLM_UAT
@US1148672
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Parity
@F171708
@releasePast
@iterationPast
Feature: US1148672 - [Unfinished] Exari >NDB/COSMOS Physician PPC - API

  @TC564734
  @Automated
  @Functional
  @CLM_UAT
  @US1148672
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564734 - [RL0]
    Given the Exari>NDB/COSMOS Physician Panel is complete and correct within Exari
    When the contract is included in the Exari Physician Contract Payload to NDB
    Then NDB should load the Panel to the NDB/COSMOS Panel screen successfully

