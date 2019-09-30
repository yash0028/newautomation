# Last updated on 
@CLM_UAT
@ETMA
@US1096916
@2018.PI02
@2018.PI02.02
@releasePast
@iterationPast
Feature: US1096916 - Error - Provider's specialty is on table and paper type is not correct

  @TC564873
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564873 - [RL0] Validation of error
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

