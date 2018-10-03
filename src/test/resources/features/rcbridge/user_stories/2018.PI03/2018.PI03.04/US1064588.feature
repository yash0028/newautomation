# Last updated on 
@US1064588
@2018.PI03
@2018.PI03.04
@MVP
@Plus
@10/1_Physician
@Cosmos
@Parity
@F183530
Feature: US1064588 - Exari>COSMOS Physician Panel Cancel/Term all Providers panels

  @CLM_UAT
  @TC561387
  @Manual
  @Acceptance
  @US1064588
  @2018.PI03
  @2018.PI03.04
  Scenario: TC561387 - TC-01_Validate The COSMOS have the ability to cancel One Physician from an existing Physician Contract in COSMOS
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels one Physician from a COSMOS Physician Panel record in COSMOS
    Then the COSMOS Physician Panels should Cancel One Physician Panels without error

  @TC565843
  @Automated
  @Functional
  @US1064588
  @2018.PI03
  @2018.PI03.04
  Scenario: TC565843 - [RL0]
    #A single provider can have multiple panels. So, for one provider, cancel all panels
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels one Physician from a COSMOS Physician Panel record in COSMOS
    Then the COSMOS Physician Panels should Cancel One Physician Panels without error

