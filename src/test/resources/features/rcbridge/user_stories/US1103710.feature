# Last updated on 
@CLM_UAT
@ETMA
@US1103710
@2018.PI02
Feature: US1103710 - Counter-party Provider Org TypeCode is found and paper type is returned

  @TC564966
  @Automated
  @Functional
  Scenario: TC564966 - [RL0] Validation of Counter-party Provider Org TypeCode is found and paper type is returned
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

  @TC564967
  @Automated
  @Functional
  Scenario: TC564967 - [RL1] Validation of Counter-party Provider Org TypeCode is found and service is not return paper
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then service will NOT return paper types "SMGA, SMGA, SPAT, MGA" from the ETMA table

