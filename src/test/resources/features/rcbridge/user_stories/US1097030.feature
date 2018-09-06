# Last updated on 
@CLM_UAT
@ETMA
@US1097030
@2018.PI02
Feature: US1097030 - Org type is on table and paper type is correct

  @TC564560
  @Automated
  @Functional
  Scenario: TC564560 - [RL1]
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

  @TC564559
  @Automated
  @Functional
  Scenario: TC564559 - [RL0]
    Given the provider's organization type is "012" and contract type is "PHO"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "True" value

