# Last updated on 2018-05-23T14:37:11.908Z
@MVP
@Plus
@Parity
Feature: F182721 - Exari>NDB/COSMOS Physician - NDB Demographic update/Panel update - Analysis

  Scenario: US1086280
    Given NDB CF team Completes this analysis
    When we discuss the finding
    Then we will be able to access lock down of Panel records in NDB from Exari in relation to a demographic change

  Scenario: US1086310
    Given the NDB COSMOS panel was created by Exari
    When an updated is attempted in NDB on the Panel through what NDB business considers a demographic update
    Then NDB will need to work with Exari business leaders and NDB business leaders to figure out if the panel is updated and sent to COSMOS along with the updated demographics

