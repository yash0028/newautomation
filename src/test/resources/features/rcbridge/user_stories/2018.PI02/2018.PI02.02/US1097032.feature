# Last updated on 
@CLM_UAT
@ETMA
@US1097032
@2018.PI02
@2018.PI02.02
@releaseUnknown
@iterationUnknown
Feature: US1097032 - Error - Org type is on table and paper type is not correct

  @TC564603
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564603 - [RL0] Validation of Error
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

