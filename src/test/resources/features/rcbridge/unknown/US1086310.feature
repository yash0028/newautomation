# Last updated on 
@CLM_UAT
@US1086310
@MVP
@Plus
@10/1_Physician
@Priority_2
@Parity
@F182721
@releaseUnknown
@iterationUnknown
Feature: US1086310 - Exari>NDB/COSMOS Panel Demographic Updates - Do Not send to COSMOS

  @TC565555
  @Automated
  @Functional
  @CLM_UAT
  @US1086310
  Scenario: TC565555 - [RL0]
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

