# Last updated on 
@US1064272
@2018.PI03
@2018.PI03.01
@MVP
@Plus
@10/1_Physician
@Cosmos
@Parity
@F183530
@releasePast
@iterationPast
Feature: US1064272 - Exari>COSMOS Physician Panel Add Transaction - Payload Data Mapping

  @TC565689
  @Manual
  @Functional
  @US1064272
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565689 - [RL0]
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should populate the PPC table and screens in COSMOS without error

