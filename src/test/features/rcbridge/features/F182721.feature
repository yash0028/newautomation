# Last updated on 2018-05-17T20:42:09.889Z
@MVP
@Plus
@Parity
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  Scenario: US1086310
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

