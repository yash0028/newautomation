# Last updated on 
@US1064953
@2018.PI03
@2018.PI03.04
@MVP
@Plus
@10/1_Physician
@Cosmos
@Parity
@F183530
Feature: US1064953 - Exari>COSMOS Physician Panel Cancel/Term one Panel from existing Provider Contract

  @CLM_UAT
  @TC561372
  @Manual
  @Acceptance
  @US1064953
  @2018.PI03
  @2018.PI03.04
  Scenario: TC561372 - TC-01_Validate The COSMOS have the ability to cancel one physician panelfrom an existing exari>COSMOS physician contract
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the one Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel the one Panel record without error

  @TC564536
  @Automated
  @Functional
  @US1064953
  @2018.PI03
  @2018.PI03.04
  Scenario: TC564536 - [RL0]
    #A single provider can have multiple panels. So, for one provider, cancel only one panel.
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS Physician Cancel payload
    When COSMOS Cancels the one Physician Panel record in COSMOS
    Then the COSMOS Physician Cancel Panel should populate the PPC table and screens in COSMOS for Cancel the one Panel record without error

