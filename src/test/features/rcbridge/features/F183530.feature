# Last updated on 2018-05-10T16:07:57.528Z
@MVP
Feature: F183530 - Exari>COSMOS - Physician Payload - Integration

  @2018.PI02
  Scenario: US1064673
    Given the Exari payload extracts and maps the correct data fields in the Exari&gt;COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @2018.PI02
  Scenario: US1064953
    Given the Exari payload extracts and maps the correct data fields in the Exari&gt;COSMOS Physician Cancel payload
    When COSMOS Cancels the one Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel the one Panel record without error

  @2018.PI02
  Scenario: US1064272
    Given the Exari payload extracts and maps the correct data fields in the Exari&gt;COSMOS payload
    When COSMOS uploads the Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should populate the PPC table and screens in COSMOS without error

  @2018.PI02
  Scenario: US1064588
    Given the Exari payload extracts and maps the correct data fields in the Exari&gt;COSMOS Physician Cancel payload
    When COSMOS Cancels one Panel from a COSMOS Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel One Panel should populate the PPC table and screens in COSMOS for Cancel One Physician Panel without error

  @2018.PI02
  Scenario: US1064356
    Given the Exari payload extracts and maps the correct data fields in the Exari&gt;COSMOS Physician Cancel payload
    When COSMOS Cancels the Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel Panel without error

