# Last updated on 
@CLM_UAT
@ETMA
@US1103710
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1103710 - Counter-party Provider Org TypeCode is found and paper type is returned

  @TC564967
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564967 - [RL1] Validation of Counter-party Provider Org TypeCode is found and service is not return paper
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then service will NOT return paper types "SMGA, SMGA, SPAT, MGA" from the ETMA table

  @TC564966
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564966 - [RL0] Validation of Counter-party Provider Org TypeCode is found and paper type is returned
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

