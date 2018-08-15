# Last updated on 
@MVP
@Plus
@10/1_Physician
@Priority_2
@Parity
@F182721
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  @CLM_UAT
  @US1086310
  @2018.PI03
  Scenario: US1086310 - Exari>NDB/COSMOS Panel Demographic Updates - Do Not send to COSMOS
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

