# Last updated on 2018-06-07T05:33:23.604Z
@MVP
@Plus
@Priority_2
Feature: F182963 - Exari>NDB/COSMOS Panel Physician - NDB will not feed to COSMOS - CF Team

  @2018.PI03
  Scenario: US1088253
    Given NDB builds logic to eliminate the Exari>NDB/COSMOS created Physician panels from the current NDB>COSMOS ETL
    When the NDB>COSMOS current ETL is sent, the Exari created COSMOS Physician panels in NDB should be absent (removed)from the ETL file
    Then COSMOS will not receive duplicate COSMOS Physician Panels from both Exari and NDB

