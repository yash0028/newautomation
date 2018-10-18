# Last updated on 
@CLM_UAT
@ETMA
@US1103709
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Plus
@Parity
@F182490
@releasePast
@iterationPast
Feature: US1103709 - Counter-party Provider Specialty Code is found and paper type is returned

  @TC564555
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  @US1103709
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564555 - [RL0] Validation of Counter-party Provider Specialty Code is found and paper type is returned
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table

  @TC564556
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  @US1103709
  @2018.PI02
  @2018.PI02.02
  Scenario: TC564556 - [RL1] Validation of paper types "ANC_Facility Participation" from the ETMA table
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then service will NOT return paper types "ANC_Facility Participation" from the ETMA table

