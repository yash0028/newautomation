# Last updated on 
@MVP
@Plus
@10/1_Physician
@Parity
@F183530
Feature: F183530 - Downstream Microservice Exari>COSMOS - (Physician Payload Direct load to Cosmos)

  @US1059062
  @2018.PI03
  Scenario: US1059062 - Common Pricing Solution - COSMOS Payload - Add Contract
    Given the COSMOS CPS PL is built with the correct data
    When the PPC Contract loads to COSMOS for CPS
    Then the CPS Contract will load successfully to COSMOS

  @US1064673
  @2018.PI03
  Scenario: US1064673 - Exari>COSMOS Physician Panel Add to Existing Provider Panel Record
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @US1064953
  @2018.PI03
  Scenario: US1064953 - Exari>COSMOS Physician Panel Cancel/Term one Panel from existing Provider Contract
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the one Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel the one Panel record without error

  @US1064272
  @2018.PI03
  Scenario: US1064272 - Exari>COSMOS Physician Panel Add Transaction - Payload Data Mapping
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should populate the PPC table and screens in COSMOS without error

  @US1064588
  @2018.PI03
  Scenario: US1064588 - Exari>COSMOS Physician Panel Cancel/Term all Providers panels
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels one Physician from a COSMOS Physician Panel record in COSMOS
    Then the COSMOS Physician Panels should Cancel One Physician Panels without error

  @US1064356
  @2018.PI03
  Scenario: US1064356 - Exari>COSMOS Physician Panel Cancel/Term
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel Panel without error

