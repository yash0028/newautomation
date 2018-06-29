# Last updated on 2018-06-20T17:50:45.146Z
@MVP
@Plus
@Parity
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  @CLM_UAT
  @2018.PI02
  @2018.PI02.05
  Scenario: US1086310
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

