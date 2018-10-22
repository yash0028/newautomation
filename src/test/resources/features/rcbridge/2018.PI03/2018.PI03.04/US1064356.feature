# Last updated on
@US1064356
@2018.PI03
@2018.PI03.04
@MVP
@Plus
@10/1_Physician
@Cosmos
@Parity
@F183530
@releasePast
@iterationPast
Feature: US1064356 - Exari>COSMOS Physician Panel Cancel/Term

  @TC562755
  @Manual
  @Functional
  @US1064356
  @2018.PI03
  @2018.PI03.04
  Scenario: TC562755 - [RL0] Verify cancel all providers/panels that are associated with a single contract
    # Cancel all providers/panels that are associated with a single contract
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel Panel without error

  @CLM_UAT
  @TC561367
  @Manual
  @Acceptance
  @US1064356
  @2018.PI03
  @2018.PI03.04
  Scenario: TC561367 - TC-01_Validate The COSMOS have the ability to cancel a physician panel created through the EXARI>COSMOS payload
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel Panel without error

