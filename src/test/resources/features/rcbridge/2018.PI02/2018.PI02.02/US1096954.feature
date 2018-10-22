# Last updated on
@CLM_UAT
@ETMA
@US1096954
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Plus
@Parity
@F182490
@releasePast
@iterationPast
Feature: US1096954 - Provider's specialty is on table and paper type is correct (ETMA)

  @TC564385
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  @US1096954
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564385 - [RL1] Validation of the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

  @TC564384
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  @US1096954
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564384 - [RL0] Validation of provider's specialty indicator is "002" and contract type is "MGA"
    Given the provider's specialty indicator is "002" and contract type is "MGA"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "True" value

