# Last updated on 2018-06-05T20:56:54.306Z
@MVP
@Plus
Feature: F182963 - Exari>NDB/COSMOS Panel Physician - NDB will not feed to COSMOS - CF Team

  Scenario: US1088253
    Given NDB builds logic to eliminate the Exari&gt;NDB/COSMOS created Physician panels from the current NDB&gt;COSMOS ETL
    When the NDB&gt;COSMOS current ETL is sent, the Exari created COSMOS Physician panels in NDB should be absent (removed)from the ETL file
    Then COSMOS will not receive duplicate COSMOS Physician Panels from both Exari and NDB

